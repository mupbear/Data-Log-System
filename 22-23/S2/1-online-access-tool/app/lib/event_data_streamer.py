from app.lib.mysql_queries import QUERY_SELECT_FILTERED_RAW_DATA

from litestar.serialization import encode_json
import aiomysql

from asyncio import sleep
import ctypes
import logging
import math

logger = logging.getLogger("app")

def _get_twos_comp(value: int, bits: int):
    """compute the 2's complement of integer value haves a determined bit length"""
    if (value & (1 << (bits - 1))) != 0:
        value = value - (1 << bits)
    return value

class EventConfig:
  def __init__(self, event_config):
    assert({"car_name", "minimum_timestamp", "maximum_timestamp", "sensors"} <= set(event_config))
    self.car_name = event_config["car_name"]
    self.minimum_timestamp = event_config["minimum_timestamp"]
    self.maximum_timestamp = event_config["maximum_timestamp"]
    self.can_ids = list(event_config["sensors"])
    self.sensor_config = event_config["sensors"]
    

class EventDataStreamer:
  def __init__(self, pool: aiomysql.Pool, event_config: EventConfig):
    self._pool = pool
    self._event_config = event_config
    
    self._maximum_retrieved_id: int = 0
    
  def __aiter__(self) -> "EventDataStreamer":
    return self
  
  async def __anext__(self) -> bytes:
    await sleep(1)
    rows = await self._select_rows()
    result = self._process_rows(rows) if rows else {}
    final_message = b"data: " + encode_json(result) + b"\n\n"
    return final_message
    
  async def _select_rows(self) -> list[tuple[any, ...]]:
    rows = None
    async with self._pool.acquire() as conn:
      cur = await conn.cursor()
      await cur.execute(
        QUERY_SELECT_FILTERED_RAW_DATA, 
        (self._maximum_retrieved_id,
          self._event_config.car_name,
          self._event_config.minimum_timestamp,
          self._event_config.maximum_timestamp,
          self._event_config.can_ids)
      )
      rows = await cur.fetchall()
      await conn.commit()
    
    return rows
    
  def _process_rows(self, rows: list[tuple[any, ...]]) -> dict[str, str]:
    self._maximum_retrieved_id = rows[len(rows)-1][0]
    
    output = {}
    for row in rows:
      timestamp = row[3]
      value_by_sensor_name = self._process_can_data_to_sensor_values(row)   
      for name, value in value_by_sensor_name.items():
          if name not in output:
            output[name] = []
          
          
          output[name].append({"x": timestamp, "y": value}) 
     
    return output

  def _process_can_data_to_sensor_values(self, row: tuple[any, ...]) -> dict[str, float]:
    row_id: int = row[0]
    can_id: str = str(row[1])
    value: int = row[2]
    timestamp: str = row[3]
    
    value_by_sensor_name: dict[str, tuple[str, str]] = {}
    if can_id in self._event_config.sensor_config:
      configs: list[dict[str, any]] = self._event_config.sensor_config[can_id]
      for config in configs:
        bit_offset: int = int(config["byte_offset"] * 8) # should probably just change byte_offset to bit_offset in the event_config.json
        bit_width: int = int(config["byte_width"] * 8) # should probably just change byte_width to bit_width in the event_config.json
        signed: bool = config["signed"]
        shift_right_n: int = 64 - bit_width - bit_offset # 64 because the data type in the database is a 64-bit unsigned integer
        
        sensor_value = (value >> shift_right_n) & (2**bit_width - 1)
        sensor_value = int.from_bytes((sensor_value.to_bytes(math.ceil(bit_width / 8), byteorder='big', signed=False)), byteorder='little', signed=signed)
        sensor_value = sensor_value * config["multiplier"] + config["offset"]
        
        if sensor_value < config["minimum_value"] or sensor_value > config["maximum_value"]:
          logger.error(f"Sensor config: {config} produced out of bounds sensor value: {sensor_value} from original CAN value: {value} with CAN ID: {can_id}, and timestamp: {timestamp}, and row ID: {row_id}")
        else:
          value_by_sensor_name[config["sensor_name"]] = sensor_value
        
    return value_by_sensor_name