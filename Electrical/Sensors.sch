EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:parts
LIBS:Snowboard_Parts
LIBS:LED_Snowboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LSM9DS1 U?
U 1 1 584A161A
P 6100 2950
F 0 "U?" H 6100 3550 50  0000 C CNN
F 1 "LSM9DS1" H 6100 3650 50  0000 C CNN
F 2 "MODULE" H 6250 2250 50  0001 C CNN
F 3 "DOCUMENTATION" H 6250 2250 50  0001 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 584A1696
P 4700 2850
F 0 "C?" H 4725 2950 50  0000 L CNN
F 1 "C" H 4725 2750 50  0000 L CNN
F 2 "" H 4738 2700 50  0000 C CNN
F 3 "" H 4700 2850 50  0000 C CNN
	1    4700 2850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 584A16CD
P 1300 900
F 0 "#PWR?" H 1300 750 50  0001 C CNN
F 1 "+3.3V" H 1300 1040 50  0000 C CNN
F 2 "" H 1300 900 50  0000 C CNN
F 3 "" H 1300 900 50  0000 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
Text HLabel 1200 1000 0    60   Input ~ 0
3.3V_IN
$Comp
L +3.3V #PWR?
U 1 1 584A1716
P 5150 2250
F 0 "#PWR?" H 5150 2100 50  0001 C CNN
F 1 "+3.3V" H 5150 2390 50  0000 C CNN
F 2 "" H 5150 2250 50  0000 C CNN
F 3 "" H 5150 2250 50  0000 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 900  1300 1000
Wire Wire Line
	1300 1000 1200 1000
$Comp
L GND #PWR?
U 1 1 584A17B5
P 5100 3600
F 0 "#PWR?" H 5100 3350 50  0001 C CNN
F 1 "GND" H 5100 3450 50  0000 C CNN
F 2 "" H 5100 3600 50  0000 C CNN
F 3 "" H 5100 3600 50  0000 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
Text HLabel 3050 3450 0    60   Input ~ 0
I2C_SDA
Text HLabel 3050 3550 0    60   Input ~ 0
I2C_SCL
$EndSCHEMATC
