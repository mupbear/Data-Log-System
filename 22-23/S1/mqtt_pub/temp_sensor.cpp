#include "temp_sensor.h"
#include "MCP3008.h"
using namespace MCP3008Lib;
MCP3008 adc;
  

double temperatureSensor(int channel, double voltage, double resistance)
{
  double rawValue;
  double currentVoltage;
  double sensorResistance;
  double sensorTemperature;
  adc.connect();
  adc.read(channel);
  rawValue = adc.read(0);
  currentVoltage = temperatureVoltage(voltage, rawValue);
  sensorResistance = temperatureResistance(currentVoltage, voltage, resistance);
  sensorTemperature = temperatureFormula(sensorResistance);
  
  //SENSORNUMBER TAKEN OUT OF FUNCTION! It isnt needed further in the code, only the channel number is needed.
  
  return sensorTemperature;
}


//pinNumber is changed to channel --> because we are looking at what channel we use with the MCP3008
int temperatureSensorData(int channel)
{
  
  MCP3008 adc;
  adc.connect();
  return adc.read(channel);
}

double temperatureVoltage (double voltage, double data)
{
  double nowVoltage;
  nowVoltage = data / 1023 * voltage;
  return nowVoltage;
}

double temperatureResistance(double tempVoltage, double voltage, double resistance)
{
  double insideResistance;
  insideResistance = (voltage - tempVoltage) / voltage * resistance ;
  return insideResistance;
}

double temperatureFormula(double tempResistance)
{
  double temperature;
  temperature = exp(-(tempResistance - 3014.3) / 637.5);
  return temperature;
}
