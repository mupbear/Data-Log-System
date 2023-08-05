#include "definitions.h"

//In this function you enter the channel of the sensor, the voltage applied as well as the resistance. (This is the only function that should be used in main)
double temperatureSensor(int channel, double voltage, double resistance);

//Analog read the channel
//THIS FUNCTION STILL NEEDS TO BE CHANGED!!!!!!!
int temperatureSensorData(int channelNumber);

double temperatureVoltage (double voltage, double data);

double temperatureResistance(double tempVoltage, double voltage, double resistance);

double temperatureFormula(double tempResistance);
