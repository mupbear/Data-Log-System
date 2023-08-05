if(WIN32)
cmake_minimum_required(VERSION 3.23)
endif()
cmake_minimum_required(VERSION 3.18)

project(mqtt_sub)

set(CMAKE_CXX_STANDARD 11)

add_executable(mqtt_sub main.cpp)

# MQTT-C library
add_library(mqttc STATIC
        MQTT-C-master/src/mqtt_pal.c
        MQTT-C-master/src/mqtt.c
        )
target_include_directories(mqttc PUBLIC MQTT-C-master/include MQTT-C-master/examples/templates include)

if(WIN32)
target_link_libraries(mqttc PUBLIC wsock32 ws2_32)
else()
target_link_libraries(mqttc PUBLIC nsl pthread)
endif()

target_link_libraries(mqtt_sub mqttc)
