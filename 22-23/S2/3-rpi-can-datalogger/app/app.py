import asyncio
import can
import logging
import signal
import sys
import os

from raw_data_sender import RawDataSender

keep_running = True

async def main():
    global keep_running
    data_interval = 5.0 # Send data every this many seconds

    logging.basicConfig(stream=sys.stdout, format='%(asctime)s %(message)s', level=logging.INFO)
    
    raw_data_sender = RawDataSender(user='regtersc_RaceCar01', password='U^g$?)wlR+Fl', host='162.241.244.103', database='regtersc_data_test')
    queue_data_callback = lambda msg: raw_data_sender.queue(msg.arbitration_id, msg.data)

    bus = can.Bus(interface='socketcan', channel='can0')
    notifier = can.Notifier(bus, [queue_data_callback], loop=asyncio.get_running_loop())

    while keep_running:
        raw_data_sender.send()
        await asyncio.sleep(data_interval)

    logging.info("Exitting gracefully...")


def graceful_exit_handler(sig, frame):
    global keep_running
    keep_running = False


if __name__ == "__main__":
    signal.signal(signal.SIGINT, graceful_exit_handler)
    signal.signal(signal.SIGTERM, graceful_exit_handler)

    asyncio.run(main())
