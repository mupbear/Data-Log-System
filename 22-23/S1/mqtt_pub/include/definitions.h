#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <iostream>
#include <thread>
#include <chrono> 
#include <pthread.h>
#include <string.h>

//MQTT Definitions:
#define ADDRESS "10.0.10.100" //The address of the broker
#define PORT "1883" //Port the broker uses
#define TOPIC "data"

//Sensor 1 is the ... temperature, differential oil sensor
#define SENSOR_1_CHANNEL 0
#define SENSOR_1_RESISTANCE 2200
#define SENSOR_1_VOLTAGE 5

//Sensor 2 is the ... temperature, gearbox oil sensor
#define SENSOR_2_CHANNEL 1
#define SENSOR_2_RESISTANCE 2200
#define SENSOR_2_VOLTAGE 5

//Sensor 3 is the ... pressure, differential oil sensor
#define SENSOR_3_CHANNEL 2
#define SENSOR_3_RESISTANCE 2200
#define SENSOR_3_VOLTAGE 5

//Sensor 4 is the ... fuel pressure sensor
#define SENSOR_4_CHANNEL 3
#define SENSOR_4_RESISTANCE 2200
#define SENSOR_4_VOLTAGE 5

//Sensor 5 is the ... Wheel, front left sensor
#define SENSOR_5_CHANNEL 4
#define SENSOR_5_RESISTANCE 2200
#define SENSOR_5_VOLTAGE 5

//Sensor 6 is the ... Wheel, front right sensor
#define SENSOR_6_CHANNEL 5
#define SENSOR_6_RESISTANCE 2200
#define SENSOR_6_VOLTAGE 5

//Sensor 7 is the ... Wheel, back left sensor
#define SENSOR_7_CHANNEL 6
#define SENSOR_7_RESISTANCE 2200
#define SENSOR_7_VOLTAGE 5

//Sensor 8 is the ... Wheel, back right sensor
#define SENSOR_8_CHANNEL 7
#define SENSOR_8_RESISTANCE 2200
#define SENSOR_8_VOLTAGE 5
