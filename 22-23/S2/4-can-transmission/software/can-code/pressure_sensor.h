#include "car_sensors.h"
#include "arduino.h"

double sensor::pressure_sensor::pressureSensor(uint8_t pinNumber,double voltage)
{
  rawValue = pressureSensorData(pinNumber);
  currentVoltage = pressureVoltage(rawValue, voltage);
  sensorPressure = pressureFormula(currentVoltage);
  error = pressureCheck(sensorPressure);
  return sensorPressure;
}


int sensor::pressure_sensor::pressureSensorData(uint8_t pinNumber)
{
  int value;
  value = analogRead(pinNumber);
  return value;
}

double sensor::pressure_sensor::pressureVoltage(double value, double voltage)
{
  double nowVolatage;
  // Volatage of the sensor
  nowVolatage = value / 1023 * voltage;
  return nowVolatage;
}

double sensor::pressure_sensor::pressureFormula(double voltage)
{
  double pressure;
  //exponential equation for resistance to pressure, check the data sheet for explanation
  pressure = (voltage ) * 0.375 - 0.3;
  return pressure;
}

uint8_t sensor::pressure_sensor::pressureCheck(double pressure)
{
  if (pressure < 4.3 || pressure > 4.7) 
  {
    //Serial.println("ERROR");
    return 1;
  }
  return 0;  
}
