#include "car_sensors.h"
#include "arduino.h"

double sensor::temperature_sensor::temperatureSensor(uint8_t pinNumber, double voltage, double resistance)
{
  rawValue = temperatureSensorData(pinNumber);
  currentVoltage = temperatureVoltage(rawValue, voltage);
  sensorResistance = temperatureResistance(currentVoltage, voltage, resistance);
  sensorTemperature = temperatureFormula(sensorResistance);
  error = temperatureCheck(sensorTemperature);
  return sensorTemperature;
}

int sensor::temperature_sensor::temperatureSensorData(uint8_t pinNumber)
{
  int value;
  value = analogRead(pinNumber);
  return value;
}

double sensor::temperature_sensor::temperatureVoltage (double value, double voltage)
{
  double nowVolatage;
  // Volatage of the sensor
  nowVolatage = value / 1023 * voltage;
  return nowVolatage;
}

double sensor::temperature_sensor::temperatureResistance(double tempVoltage, double voltage, double resistance)
{
  double insideResistance;
  // An equation to find the resistance of the sensor
  insideResistance = (voltage - tempVoltage) / voltage * resistance ;
  return insideResistance;
}

double sensor::temperature_sensor::temperatureFormula(double tempResistance)
{
  double temperature;
  //exponential equation for resistance to temperature, check the data sheet for explanation
  temperature = exp(-(tempResistance - 3014.3) / 637.5);
  return temperature;
}

uint8_t sensor::temperature_sensor::temperatureCheck(double temp)
{
  if (temp < 25 || temp > 100) 
  {
    //Serial.println("ERROR");
    return 1;
  }
  return 0;  
}
