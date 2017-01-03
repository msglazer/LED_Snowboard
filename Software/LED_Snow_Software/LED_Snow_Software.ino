#include <TinyGPS++.h>
#include <MahonyAHRS.h>
#include <SparkFunLSM9DS1.h>
#include <Wire.h>
#include <FastLED.h>


#define NUM_LEDS    60
#define COLOR_ORDER GRB
#define Brightness  128
#define LSM9DS1_M   0x58  //change this 
#define LSM9DS1_AG  0x58  //change this 
#define DECLINATION 14.45
#define LED_PIN     5     //change this


CRGB leds[NUM_LEDS];
LSM9DS1 imu;
TinyGPSPlus gps;
Mahony filter;


HardwareSerial Uart = HardwareSerial();


int Ipos   = NUM_LEDS / 2;
int width  = 10;
float GPSlat, GPSlng, GPSspeed;


void setup() 
{
  delay (2000); //power up delay

  Serial.begin(115200);
  Uart.begin(9600);

  imu.settings.device.commInterface = IMU_MODE_I2C;
  imu.settings.device.mAddress = LSM9DS1_M;
  imu.settings.device.agAddress = LSM9DS1_AG;
  imu.begin();
  filter.begin(100);
  
  FastLED.addLeds<WS2812B, LED_PIN, COLOR_ORDER>(leds,NUM_LEDS).setCorrection(TypicalSMD5050);
  FastLED.setBrightness (Brightness);
}

void loop()
{
  while (Uart.available() > 0)
    if (gps.encode(Uart.read()))
      displayInfo();

  if (millis() > 5000 && gps.charsProcessed() < 10)
  {
    Serial.println(F("No GPS detected: check wiring."));
    while(true);
  }

}

/////////////////////////////////////////////////////////////////////////////////////
////////////                           GPS Functions                     ////////////
/////////////////////////////////////////////////////////////////////////////////////
void displayInfo()
{
  if (gps.location.isUpdated())
  {
    gps.location.lat(),6;
    gps.location.lng(),6;
  }
  
  else if (gps.speed.isUpdated())
  {
    gps.speed.mph();
  }
  else if (gps.altitude.isUpdated())
  {
    gps.altitude.meters();
    gps.altitude.feet();
  }
}

float GetGPSlat()
{
  if (gps.location.isUpdated())
  {
    GPSlat = gps.location.lat(),6;
  }

  return GPSlat;
}

float GetGPSlng()
{
  if (gps.location.isUpdated())
  {
    GPSlat = gps.location.lng(),6;
  }

  return GPSlng;
}

float GetGPSspeed()
{
  if (gps.speed.isUpdated())
  {
    GPSspeed = gps.speed.mph();
  }

  return GPSspeed;
}

/////////////////////////////////////////////////////////////////////////////////////
////////////                           IMU Functions                     ////////////
/////////////////////////////////////////////////////////////////////////////////////


void sensorFusion()
{
  float ax, ay, az;
  float gx, gy, gz;
  float mx, my, mz;
  float roll, pitch, heading;
  
  if (imu.accelAvailable())
  {
    imu.readAccel();
  }

  if (imu.gyroAvailable())
  {
    imu.readGyro();
  }

  if (imu.magAvailable())
  {
    imu.readMag();
  }

  filter.update(gx, gy, gz, ax, ay, az, mx, my, mz);

  roll = filter.getRoll();
  pitch = filter.getPitch();
  heading = filter.getYaw();
}

/////////////////////////////////////////////////////////////////////////////////////
////////////                           LED Functions                     ////////////
/////////////////////////////////////////////////////////////////////////////////////

void LED_Show(int intpos, int width) //color optiosn//)
{
  int i = intpos;
  for (int n = 0; n < width; n++)
  {
    leds[i] += //COLOR options?????
    i++;
    if (i = NUM_LEDS)
    {
      i = 0;
    }
  }
}

void speedToColor()
{
  
}

