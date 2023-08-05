cmake_minimum_required(VERSION 3.18)

project(S3-main-code)

set(CMAKE_CXX_STANDARD 11)

add_executable(S3-main-code main.cpp)

# project main library
add_library(proj-lib STATIC
		#external src files
        ext-lib/MQTT-C/src/mqtt_pal.c
        ext-lib/MQTT-C/src/mqtt.c
		#project source files
        src/MCP3008.cpp
        src/temp_sensor.cpp
        src/mqtt_publish.cpp
        )
target_include_directories(proj-lib PUBLIC include ext-lib/MQTT-C/include ext-lib/MQTT-C/examples/templates)
target_link_libraries(proj-lib PUBLIC lgpio nsl pthread)

target_link_libraries(S3-main-code proj-lib)

