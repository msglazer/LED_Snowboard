#include <SD.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <TinyGPS++.h>
#include <SparkFunLSM9DS1.h>
//#include <FastLED.h>
#include <Adafruit_NeoPixel.h>


#define NUM_LEDS    60
#define COLOR_ORDER GRB
#define Brightness  128
#define LSM9DS1_M   0x1E  
#define LSM9DS1_AG  0x6B   
#define DECLINATION -14.45
#define LED_PIN     16  
#define OLED_RESET  17  
#define ROTATION    2
#define voltagePin  15


//CRGB leds[NUM_LEDS];
Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, LED_PIN, NEO_GRB + NEO_KHZ800);
LSM9DS1 imu;
TinyGPSPlus gps;
Adafruit_SSD1306 display(OLED_RESET);

HardwareSerial Uart = HardwareSerial();


//int Ipos   = NUM_LEDS / 2;
//int width  = 10;
float R1   = 10000;    //change these values
float R2   = 36000;    //change these values
float GPSlat, GPSlng, GPSspeed, maxSpeed, GPSheightF, GPSheightM;
float roll, pitch, heading;
float voltage;
uint32_t LEDcolor;
const int chipSelect = BUILTIN_SDCARD;


void setup() 
{
  delay (2000); //power up delay

  Serial.begin(115200);
  Uart.begin(9600);

  analogReference(DEFAULT);
  analogReadResolution(12);
  analogReadAveraging(32);
  
  Serial.print("Initializing SD card...");
  
  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    return;
  }
  Serial.println("card initialized.");


  display.clearDisplay();         // Clear the display.
  display.display();              
  display.setRotation(ROTATION);  // Set rotation.
  display.setTextSize(2);         // Set text size and color.
  display.setTextColor(WHITE);

  imu.settings.device.commInterface = IMU_MODE_I2C;
  imu.settings.device.mAddress = LSM9DS1_M;
  imu.settings.device.agAddress = LSM9DS1_AG;
  imu.begin();
  imu.calibrate();

  strip.begin();
  strip.show();
  //FastLED.addLeds<WS2812B, LED_PIN, COLOR_ORDER>(leds,NUM_LEDS).setCorrection(TypicalSMD5050);
  //FastLED.setBrightness (Brightness);
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

  //need to actually call some functions here
  speedDistance();
  IMUread();
  sensorFusion();
  batteryV();
  snow_show();
}

/////////////////////////////////////////////////////////////////////////////////////
////////////                           GPS Functions                     ////////////
/////////////////////////////////////////////////////////////////////////////////////
void displayInfo()
{
  if (gps.location.isUpdated())
  {
    GPSlat = gps.location.lat(),6;
    GPSlng = gps.location.lng(),6;
  }
  
  else if (gps.speed.isUpdated())
  {
    GPSspeed = gps.speed.mph();
  }
  else if (gps.altitude.isUpdated())
  {
    GPSheightM = gps.altitude.meters();
    GPSheightF = gps.altitude.feet();
  }
}

void speedDistance()
{
  if (GPSspeed > maxSpeed)
  {
    maxSpeed = GPSspeed;
  }

  //implement distance stuff here if interested
}

/////////////////////////////////////////////////////////////////////////////////////
////////////                           IMU Functions                     ////////////
/////////////////////////////////////////////////////////////////////////////////////


void IMUread()
{ 
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
}

void IMUcalc(float ax, float ay, float az, float mx, float my, float mz)
{
  float roll = atan2(ay, az);
  float pitch = atan2(-ax, sqrt(ay * ay + az * az));
  
  float heading;
  if (my == 0)
    heading = (mx < 0) ? PI : 0;
  else
    heading = atan2(mx, my);
    
  heading -= DECLINATION * PI / 180;
  
  if (heading > PI) 
    heading -= (2 * PI);
  else if (heading < -PI) 
    heading += (2 * PI);
  else if (heading < 0) 
    heading += 2 * PI;
  
  // Convert everything from radians to degrees:
  heading *= 180.0 / PI;
  pitch *= 180.0 / PI;
  roll  *= 180.0 / PI;
}

/////////////////////////////////////////////////////////////////////////////////////
////////////                           LED Functions                     ////////////
/////////////////////////////////////////////////////////////////////////////////////



void LED_Show() //color options//
{
  GPSspeedMap = map(GPSspeedMap, 0 , maxSpeed, 0, 255);
  for (int i = 0; i<strip.numPixels(); i++)
  {
    strip.setPixelColor(i, Wheel(GPSspeedMap));
  }
  strip.show();
}

uint32_t Wheel (byte WheelPos)
{
  return strip.color(0 ,WheelPos * 3, 255 - WheelPos * 3);
}

/*
 *
void speedToColor()
{
  if (GPSspeed <= 3)
  {
    LEDcolor = strip.Color(0, 0, 0xFF);
  }
  else if (GPSspeed >= 4 && GPSspeed <= 7)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
  else if (GPSspeed >= 8 && GPSspeed <= 10)
  {
    LEDcolor = strip.Color(0, 0xFF, 0xFF);
  }
  else if (GPSspeed >= 11 && GPSspeed <= 13)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
  else if (GPSspeed >= 14 && GPSspeed <= 17)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
  else if (GPSspeed >= 18 && GPSspeed <= 20)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
  else if (GPSspeed >= 21 && GPSspeed <= 23)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
  else if (GPSspeed >= 24 && GPSspeed <= 27)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
  else if (GPSspeed >= 28)
  {
    LEDcolor = strip.Color(255, 0, 0);
  }
}
*/

/////////////////////////////////////////////////////////////////////////////////////
////////////                        Display Functions                    ////////////
/////////////////////////////////////////////////////////////////////////////////////

void snow_show()
{
  display.clearDisplay();
  display.setCursor(0,0);
  //display battery voltage, max speed, elevation?
  
}

void batteryV()
{
  float raw_voltage = analogRead(voltagePin);
  float divider_voltage = (raw_voltage * 3.3) / 4096.0; //check ADC options here
  voltage = divider_voltage / (R2/(R1+R2));
}

