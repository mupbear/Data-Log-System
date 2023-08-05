#ifndef sensor_h
#define sensor_h
#include "arduino.h"

class sensor
{
  public:
    class pressure_sensor
    {
      public:
        double pressureSensor(uint8_t pinNumber, double voltage);
        int pressureSensorData(uint8_t pinNumber);
        double pressureVoltage (double value, double voltage);
        double pressureFormula(double voltage);
        uint8_t pressureCheck(double pressure);

      protected:
        double rawValue;
        double currentVoltage;
        double sensorResistance;
        double sensorPressure;
        int error;
    };

    class temperature_sensor
    {
      public:
        double temperatureSensor(uint8_t pinNumber, double voltage, double resistance);
        int temperatureSensorData(uint8_t pinNumber);
        double temperatureVoltage (double value, double voltage);
        double temperatureResistance(double tempVoltage, double voltage, double resistance);
        double temperatureFormula(double tempResistance);
        uint8_t temperatureCheck(double temp);

      protected:
        double rawValue;
        double currentVoltage;
        double sensorResistance;
        double sensorTemperature;
        uint8_t error;
    };

    class wheel_speed_sensor
    {
      public:
        double wheelSpeedSensor(uint8_t pinNumber);
        int getWheelSpeedValue(uint8_t speed_sensor_pin);
        unsigned long interpretSinWaveWheelSensor(int speed_sensor_value, unsigned long current_time);
        unsigned long sampleWheelSpeedSensor(uint8_t pinNumber, int samples);
        float formulaWheelSpeedSensor(float speed_wave_time);
        void doubleIntoChar(double number);
        bool isEven(int value);
        int checkIfZero(unsigned long number);

      protected:
        double wheel_speed;
        double wheel_speed_average;       
        struct wheelSpeedSensorVariablesAll
        {
          int sensor_teeth = 43; // how many sensor_teeth does the wheel speed has
          const unsigned long period = 1000; // milliseconds how long each loop lasts and posts
          const unsigned long samples = 10; // how much samples you want
        } wheelSpeedAll;
        ////wheel variables, can change if needed
        struct wheelVariables
        {
          double tire_flat = 0.01; //how much the wheel.tire is flat in speed equations
          double tire_rubber = 245;  //milimeters
          double tire_percentage = 0.45; //percentage
          double tire_rim = 40.64; //centimeters
        } wheel;
    };
  protected:
    uint8_t _pin;
    int _voltage;
    int _resistance;
};



#endif
