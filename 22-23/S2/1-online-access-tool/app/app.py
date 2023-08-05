from app.lib.event_data_streamer import EventConfig, EventDataStreamer

from litestar import Litestar, MediaType, get, post
from litestar.config.compression import CompressionConfig
from litestar.datastructures import State #ImmutableState is unsable due to a potential bug
from litestar.logging.config import LoggingConfig
from litestar.static_files.config import StaticFilesConfig
from litestar.contrib.jinja import JinjaTemplateEngine
from litestar.response_containers import Template, Stream
from litestar.template.config import TemplateConfig
import aiomysql
import aiofiles

from pathlib import Path
import logging
import json

logger = logging.getLogger("app")

async def before_startup_handler(app_instance: Litestar) -> None:
  logger.info("Connecting to MySQL database...")
  app_instance.state.pool = await aiomysql.create_pool(
    minsize=1, maxsize=2, pool_recycle=5,
    host="regterscdb.cxviwqvwghdq.eu-central-1.rds.amazonaws.com", port=3306, 
    user="WebUser01", password="WebUser01",
    db="regtertestdata"
  )
  
  logger.info("Loading current event config...")
  async with aiofiles.open("./static/json/event_config.json", mode='r') as event_config_file:
    event_config = json.loads(await event_config_file.read())
    app_instance.state.event_config = EventConfig(event_config)
  
    
async def before_shutdown_handler(app_instance: Litestar) -> None:
  logger.info("Disconnecting from MySQL database...")
  app_instance.state.pool.close()
  await app_instance.state.pool.wait_closed()
  
async def after_exception_handler(exception: Exception, scope: "Scope", state: "State") -> None:
  requested_path = scope["path"]
  logger.info(f"An exception of type \'{exception}\' has occurred for requested path \'{requested_path}\'.")

@get("/", media_type=MediaType.HTML, cache=False)
async def get_index() -> Template:
  return Template(
    name="root.html.jinja2",
    context={"title": "Login"},
  )

@get("/home", media_type=MediaType.HTML, cache=False)
async def get_home() -> Template:
  return Template(
    name="home.html.jinja2",
    context={"title": "Home"},
  )

@get("/event", media_type=MediaType.HTML, cache=False)
async def get_event() -> Template:
  return Template(
    name="event.html.jinja2",
    context={"title": "Racing Event Analysis"},
  )
  
@get("/event_data", media_type="text/event-stream")
async def get_event_data(state: State) -> Stream:
  event_data_streamer = EventDataStreamer(pool=state.pool, event_config=state.event_config)
  return Stream(iterator=event_data_streamer)

app = Litestar(
  before_startup=[before_startup_handler],
  before_shutdown=[before_shutdown_handler],
  after_exception=[after_exception_handler],
  # compression_config=CompressionConfig(backend="gzip", gzip_compress_level=9, minimum_size=500), THIS LINE CAUSES A POTENTIAL BUG, LETS WAIT FOR DEVS TO ANSWER/FIX IT
  route_handlers=[get_event, get_event_data, get_home, get_index],
  template_config=TemplateConfig(
    directory=Path("templates"),
    engine=JinjaTemplateEngine,
  ),
  static_files_config=[
    StaticFilesConfig(directories=[Path("static")], path="/static", name="static")
  ],
  logging_config=LoggingConfig(
    loggers={
      "app": {
          "propagate": False,
          "level": "INFO",
          "handlers": ["queue_listener"],
      }
    }
  )
)