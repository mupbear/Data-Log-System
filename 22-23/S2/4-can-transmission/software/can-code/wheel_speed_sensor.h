#include "car_sensors.h"
#include "arduino.h"

//15 47 100 150 220 500 2.2k 4.7k
// if 12V you can use upto 4.7k ohms

// all of the functions together
double sensor::wheel_speed_sensor::wheelSpeedSensor(uint8_t pinNumber)
{
  wheel_speed_average = sampleWheelSpeedSensor(pinNumber, wheelSpeedAll.samples);
  wheel_speed = formulaWheelSpeedSensor(wheel_speed_average);
  doubleIntoChar(wheel_speed);
  return wheel_speed;
}

//uses the other funcions and samples it, every function here is time sensitive so becareful changing stuff
unsigned long sensor::wheel_speed_sensor:: sampleWheelSpeedSensor(uint8_t pinNumber, int samples)
{
  static unsigned long overall_time = 0;
  static unsigned long current_time = 0;

  int wheel_speed_value = 0;
  unsigned long wheel_speed_wave_time = 0;

  unsigned long wheel_speed_average = 0;
  int current_samples = 0;

  while (current_samples < samples)
  {
    unsigned long sample_wave = 0;
    int count = 0;

    while (current_time - overall_time <= wheelSpeedAll.period)  //test whether the period has elapsed
    {
      current_time = millis();

      wheel_speed_value = getWheelSpeedValue(pinNumber);
      wheel_speed_wave_time = interpretSinWaveWheelSensor(wheel_speed_value, current_time);

      count = count + checkIfZero(wheel_speed_wave_time); // to ignore no change
      sample_wave = sample_wave + wheel_speed_wave_time;
    }
    overall_time = overall_time + wheelSpeedAll.period;
    sample_wave = sample_wave / ((count == 0) ? 1 : count);
    wheel_speed_average = sample_wave + wheel_speed_average;
  }
  current_samples++;
  return wheel_speed_average;
}


//gets the value from wheel speed sensor
int sensor::wheel_speed_sensor:: getWheelSpeedValue(uint8_t speed_sensor_pin)
{
  int speed_sensor_value = analogRead(speed_sensor_pin);
  //Serial.println (speed_sensor_value);
  return speed_sensor_value;
}

//takes pwm values from the sine wave and turn them into cycles, which then checks the time between cycles
unsigned long sensor::wheel_speed_sensor:: interpretSinWaveWheelSensor(int speed_sensor_value, unsigned long current_time)
{
  int speed_wave_average = 150;
  static unsigned long start_wave_time = 0;
  static unsigned long overall_wave_time = 0;
  unsigned long speed_wave_time;
  static int count ;

  overall_wave_time = current_time;
  if (isEven(count))
  {
    if (speed_sensor_value > speed_wave_average)
    {
      count++;
    }
  }

  if (! isEven(count))
  {
    if (speed_sensor_value < speed_wave_average)
    {
      speed_wave_time = overall_wave_time - start_wave_time;
      start_wave_time = current_time;
      count = count - 1;
      return speed_wave_time;
    }
  }
  //Serial.println (speed_wave_time);

  return 0;
}

// takes the average time and turns it into speed
float sensor::wheel_speed_sensor:: formulaWheelSpeedSensor(float speed_wave_time)
{
  float speed_sensor_speed;
  // wheel tire formula to speed, check documentation for more informartion
  if (speed_wave_time != 0)
  {
    speed_sensor_speed = (3.14 * ((wheel.tire_rubber / 1000 * wheel.tire_percentage) * 2 + wheel.tire_rim / 100)) / (speed_wave_time / 1000 * wheelSpeedAll.sensor_teeth);
  } else
  {
    speed_sensor_speed = 0;
  }
  // margin for not fully pumpwheel.tire
  speed_sensor_speed = speed_sensor_speed - speed_sensor_speed * wheel.tire_flat;
  return speed_sensor_speed;
}

// turn double into string
void sensor::wheel_speed_sensor:: doubleIntoChar(double number)
{
  char speed_sensor[20];
  dtostrf(number, 4, 4, speed_sensor);
  //Serial.println(speed_sensor);
}

bool sensor::wheel_speed_sensor:: isEven(int value)
{
  return value % 2 == 0;
}

int sensor::wheel_speed_sensor:: checkIfZero(unsigned long number)
{
  if (number != 0)
  {
    return 1;
  } else
  {
    return 0;
  }
}

////compares front and back sensors
//int sensor::wheel_speed_sensor:: compareSensors()
//{
//  if (wheelSpeed[0].speed < wheelSpeed[1].speed || wheelSpeed[0].speed > wheelSpeed[1].speed)
//  {
//    Serial.println("Not equal sensor 1 and 2");
//  }
//  if (wheelSpeed[2].speed < wheelSpeed[3].speed || wheelSpeed[0].speed > wheelSpeed[1].speed)
//  {
//    Serial.println("Not equal sensor 2 and 3");
//  }
//  return 0;
//}
