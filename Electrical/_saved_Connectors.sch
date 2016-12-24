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
Sheet 5 5
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
L CONN_01X03 P3
U 1 1 584A19A7
P 9850 2450
F 0 "P3" H 9850 2650 50  0000 C CNN
F 1 "CONN_01X03" V 9950 2450 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B3B-PH-K_03x2.00mm_Straight" H 9850 2450 50  0001 C CNN
F 3 "" H 9850 2450 50  0000 C CNN
	1    9850 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 584A19EE
P 9850 3350
F 0 "P4" H 9850 3550 50  0000 C CNN
F 1 "CONN_01X03" V 9950 3350 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B3B-PH-K_03x2.00mm_Straight" H 9850 3350 50  0001 C CNN
F 3 "" H 9850 3350 50  0000 C CNN
	1    9850 3350
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 584A1A0C
P 6800 4600
F 0 "CON1" H 6800 4850 50  0000 C CNN
F 1 "BARREL_JACK" H 6800 4400 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 6800 4600 50  0001 C CNN
F 3 "" H 6800 4600 50  0000 C CNN
	1    6800 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 584A1B10
P 5150 3150
F 0 "P1" H 5150 3300 50  0000 C CNN
F 1 "CONN_01X02" V 5250 3150 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 5150 3150 50  0001 C CNN
F 3 "" H 5150 3150 50  0000 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
Text HLabel 1000 900  0    60   Input ~ 0
BAT_IN
Text HLabel 900  1300 0    60   Input ~ 0
V_IN
Text HLabel 1550 1300 0    60   Input ~ 0
5V_IN
Text HLabel 6550 2700 0    60   Input ~ 0
LED_CTRL
$Comp
L CONN_01X05 P2
U 1 1 584A1C7C
P 5450 4600
F 0 "P2" H 5450 4900 50  0000 C CNN
F 1 "CONN_01X05" V 5550 4600 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B5B-PH-K_05x2.00mm_Straight" H 5450 4600 50  0001 C CNN
F 3 "" H 5450 4600 50  0000 C CNN
	1    5450 4600
	1    0    0    -1  
$EndComp
Text HLabel 1650 900  0    60   Input ~ 0
3.3V_IN
$Comp
L +5V #PWR034
U 1 1 584A1D9A
P 9550 2250
F 0 "#PWR034" H 9550 2100 50  0001 C CNN
F 1 "+5V" H 9550 2390 50  0000 C CNN
F 2 "" H 9550 2250 50  0000 C CNN
F 3 "" H 9550 2250 50  0000 C CNN
	1    9550 2250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR035
U 1 1 584A1DB8
P 5150 4300
F 0 "#PWR035" H 5150 4150 50  0001 C CNN
F 1 "+3.3V" H 5150 4440 50  0000 C CNN
F 2 "" H 5150 4300 50  0000 C CNN
F 3 "" H 5150 4300 50  0000 C CNN
	1    5150 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 584A1DD6
P 5150 4900
F 0 "#PWR036" H 5150 4650 50  0001 C CNN
F 1 "GND" H 5150 4750 50  0000 C CNN
F 2 "" H 5150 4900 50  0000 C CNN
F 3 "" H 5150 4900 50  0000 C CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR037
U 1 1 584A1F38
P 4850 3000
F 0 "#PWR037" H 4850 2850 50  0001 C CNN
F 1 "+BATT" H 4850 3140 50  0000 C CNN
F 2 "" H 4850 3000 50  0000 C CNN
F 3 "" H 4850 3000 50  0000 C CNN
	1    4850 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 584A20CB
P 4850 3300
F 0 "#PWR038" H 4850 3050 50  0001 C CNN
F 1 "GND" H 4850 3150 50  0000 C CNN
F 2 "" H 4850 3300 50  0000 C CNN
F 3 "" H 4850 3300 50  0000 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 584A23C4
P 9550 2650
F 0 "#PWR039" H 9550 2400 50  0001 C CNN
F 1 "GND" H 9550 2500 50  0000 C CNN
F 2 "" H 9550 2650 50  0000 C CNN
F 3 "" H 9550 2650 50  0000 C CNN
	1    9550 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 584A2415
P 9550 3550
F 0 "#PWR040" H 9550 3300 50  0001 C CNN
F 1 "GND" H 9550 3400 50  0000 C CNN
F 2 "" H 9550 3550 50  0000 C CNN
F 3 "" H 9550 3550 50  0000 C CNN
	1    9550 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR041
U 1 1 584A2510
P 9550 3150
F 0 "#PWR041" H 9550 3000 50  0001 C CNN
F 1 "+5V" H 9550 3290 50  0000 C CNN
F 2 "" H 9550 3150 50  0000 C CNN
F 3 "" H 9550 3150 50  0000 C CNN
	1    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR042
U 1 1 584A2723
P 1100 800
F 0 "#PWR042" H 1100 650 50  0001 C CNN
F 1 "+BATT" H 1100 940 50  0000 C CNN
F 2 "" H 1100 800 50  0000 C CNN
F 3 "" H 1100 800 50  0000 C CNN
	1    1100 800 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR043
U 1 1 584A2854
P 1750 800
F 0 "#PWR043" H 1750 650 50  0001 C CNN
F 1 "+3.3V" H 1750 940 50  0000 C CNN
F 2 "" H 1750 800 50  0000 C CNN
F 3 "" H 1750 800 50  0000 C CNN
	1    1750 800 
	1    0    0    -1  
$EndComp
Text HLabel 5050 4500 0    60   Input ~ 0
I2C_SDA
Text HLabel 5050 4600 0    60   Input ~ 0
I2C_SCL
Text HLabel 5050 4700 0    60   Input ~ 0
DISP_RST
Text Notes 4400 4050 0    60   ~ 0
OLED Display Connection
Text Notes 6100 2000 0    60   ~ 0
LED Strip Connection
Text Notes 4100 2600 0    60   ~ 0
Battery Input Connection
$Comp
L +5V #PWR044
U 1 1 584A339B
P 1750 1200
F 0 "#PWR044" H 1750 1050 50  0001 C CNN
F 1 "+5V" H 1750 1340 50  0000 C CNN
F 2 "" H 1750 1200 50  0000 C CNN
F 3 "" H 1750 1200 50  0000 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
Text Notes 6100 4050 0    60   ~ 0
Charger 12V Input Connection\n
Text Notes 9600 4900 0    60   ~ 0
Level shifting
Text Notes 6550 5200 0    60   ~ 0
input protection?
$Comp
L GND #PWR045
U 1 1 5859BE29
P 7250 4800
F 0 "#PWR045" H 7250 4550 50  0001 C CNN
F 1 "GND" H 7250 4650 50  0000 C CNN
F 2 "" H 7250 4800 50  0000 C CNN
F 3 "" H 7250 4800 50  0000 C CNN
	1    7250 4800
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR046
U 1 1 5859BEAB
P 7250 4400
F 0 "#PWR046" H 7250 4250 50  0001 C CNN
F 1 "+12V" H 7250 4540 50  0000 C CNN
F 2 "" H 7250 4400 50  0000 C CNN
F 3 "" H 7250 4400 50  0000 C CNN
	1    7250 4400
	1    0    0    -1  
$EndComp
$Comp
L SN74AHCT125 U7
U 1 1 5859F3B4
P 7600 2900
F 0 "U7" H 7600 2900 50  0000 C CNN
F 1 "SN74AHCT125" H 7600 3250 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-14_4.4x5mm_Pitch0.65mm" H 7900 2400 50  0001 C CNN
F 3 "DOCUMENTATION" H 7750 2500 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR047
U 1 1 5859F883
P 8500 2500
F 0 "#PWR047" H 8500 2350 50  0001 C CNN
F 1 "+5V" H 8500 2640 50  0000 C CNN
F 2 "" H 8500 2500 50  0000 C CNN
F 3 "" H 8500 2500 50  0000 C CNN
	1    8500 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 5859F8E1
P 6750 3300
F 0 "#PWR048" H 6750 3050 50  0001 C CNN
F 1 "GND" H 6750 3150 50  0000 C CNN
F 2 "" H 6750 3300 50  0000 C CNN
F 3 "" H 6750 3300 50  0000 C CNN
	1    6750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3150 9550 3250
Wire Wire Line
	9550 3250 9650 3250
Wire Wire Line
	9650 3450 9550 3450
Wire Wire Line
	9550 3450 9550 3550
Wire Wire Line
	9650 2550 9550 2550
Wire Wire Line
	9550 2550 9550 2650
Wire Wire Line
	9650 2350 9550 2350
Wire Wire Line
	9550 2350 9550 2250
Wire Wire Line
	4950 3100 4850 3100
Wire Wire Line
	4850 3100 4850 3000
Wire Wire Line
	4950 3200 4850 3200
Wire Wire Line
	4850 3200 4850 3300
Wire Wire Line
	1100 800  1100 900 
Wire Wire Line
	1100 900  1000 900 
Wire Wire Line
	1750 800  1750 900 
Wire Wire Line
	1750 900  1650 900 
Wire Wire Line
	5050 4700 5250 4700
Wire Wire Line
	5250 4600 5050 4600
Wire Wire Line
	5050 4500 5250 4500
Wire Wire Line
	5250 4400 5150 4400
Wire Wire Line
	5150 4400 5150 4300
Wire Wire Line
	5250 4800 5150 4800
Wire Wire Line
	5150 4800 5150 4900
Wire Notes Line
	4350 3950 4350 5250
Wire Notes Line
	4350 5250 5950 5250
Wire Notes Line
	5950 5250 5950 3950
Wire Notes Line
	5950 3950 4350 3950
Wire Notes Line
	10100 1900 10100 3850
Wire Notes Line
	10100 3850 6050 3850
Wire Notes Line
	6050 3850 6050 1900
Wire Notes Line
	6050 1900 10100 1900
Wire Notes Line
	5950 2500 5950 3850
Wire Notes Line
	5950 3850 4050 3850
Wire Notes Line
	4050 3850 4050 2500
Wire Notes Line
	4050 2500 5950 2500
Wire Wire Line
	1750 1200 1750 1300
Wire Wire Line
	1750 1300 1550 1300
Wire Notes Line
	8350 3950 8350 5450
Wire Notes Line
	8350 5450 6050 5450
Wire Notes Line
	6050 5450 6050 3950
Wire Notes Line
	6050 3950 8350 3950
Wire Wire Line
	7100 4700 7250 4700
Wire Wire Line
	7250 4600 7250 4800
Wire Wire Line
	7100 4600 7250 4600
Connection ~ 7250 4700
Wire Wire Line
	7250 4400 7250 4500
Wire Wire Line
	7250 4500 7100 4500
Wire Wire Line
	8500 2500 8500 2650
Wire Wire Line
	8350 2600 8500 2600
Wire Wire Line
	6750 3200 6850 3200
Wire Wire Line
	6750 2600 6750 3300
Wire Wire Line
	6750 2600 6850 2600
Connection ~ 6750 3200
Wire Wire Line
	6850 2900 6750 2900
Connection ~ 6750 2900
Wire Wire Line
	6550 2700 6850 2700
Wire Wire Line
	6850 3000 6700 3000
Wire Wire Line
	6700 3000 6700 2700
Connection ~ 6700 2700
Text HLabel 6550 2800 0    60   Input ~ 0
LED_out1
Text HLabel 6550 3100 0    60   Input ~ 0
LED_out2
Wire Wire Line
	6550 3100 6850 3100
Wire Wire Line
	6850 2800 6550 2800
Text HLabel 9550 2450 0    60   Input ~ 0
LED_out1
Text HLabel 9550 3350 0    60   Input ~ 0
LED_out2
Wire Wire Line
	9550 3350 9650 3350
Wire Wire Line
	9650 2450 9550 2450
$Comp
L CP1 C23
U 1 1 5859FDBD
P 8800 3350
F 0 "C23" H 8825 3450 50  0000 L CNN
F 1 "100uF" H 8825 3250 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.3" H 8800 3350 50  0001 C CNN
F 3 "" H 8800 3350 50  0000 C CNN
	1    8800 3350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C22
U 1 1 5859FDEF
P 8800 2450
F 0 "C22" H 8825 2550 50  0000 L CNN
F 1 "100uF" H 8825 2350 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.3" H 8800 2450 50  0001 C CNN
F 3 "" H 8800 2450 50  0000 C CNN
	1    8800 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR049
U 1 1 5859FFBD
P 8800 3150
F 0 "#PWR049" H 8800 3000 50  0001 C CNN
F 1 "+5V" H 8800 3290 50  0000 C CNN
F 2 "" H 8800 3150 50  0000 C CNN
F 3 "" H 8800 3150 50  0000 C CNN
	1    8800 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 5859FFE0
P 8800 3550
F 0 "#PWR050" H 8800 3300 50  0001 C CNN
F 1 "GND" H 8800 3400 50  0000 C CNN
F 2 "" H 8800 3550 50  0000 C CNN
F 3 "" H 8800 3550 50  0000 C CNN
	1    8800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3550 8800 3500
Wire Wire Line
	8800 3150 8800 3200
$Comp
L +5V #PWR051
U 1 1 585A009A
P 8800 2250
F 0 "#PWR051" H 8800 2100 50  0001 C CNN
F 1 "+5V" H 8800 2390 50  0000 C CNN
F 2 "" H 8800 2250 50  0000 C CNN
F 3 "" H 8800 2250 50  0000 C CNN
	1    8800 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 585A00BD
P 8800 2650
F 0 "#PWR052" H 8800 2400 50  0001 C CNN
F 1 "GND" H 8800 2500 50  0000 C CNN
F 2 "" H 8800 2650 50  0000 C CNN
F 3 "" H 8800 2650 50  0000 C CNN
	1    8800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2650 8800 2600
Wire Wire Line
	8800 2250 8800 2300
Wire Wire Line
	1100 1300 900  1300
Wire Wire Line
	1100 1200 1100 1300
$Comp
L +12V #PWR053
U 1 1 5859BF08
P 1100 1200
F 0 "#PWR053" H 1100 1050 50  0001 C CNN
F 1 "+12V" H 1100 1340 50  0000 C CNN
F 2 "" H 1100 1200 50  0000 C CNN
F 3 "" H 1100 1200 50  0000 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG054
U 1 1 585B5E60
P 950 1250
F 0 "#FLG054" H 950 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 950 1430 50  0000 C CNN
F 2 "" H 950 1250 50  0000 C CNN
F 3 "" H 950 1250 50  0000 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1250 950  1300
Connection ~ 950  1300
$Comp
L C C30
U 1 1 585B97AE
P 8500 2800
F 0 "C30" H 8525 2900 50  0000 L CNN
F 1 "1uF" H 8525 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8538 2650 50  0001 C CNN
F 3 "" H 8500 2800 50  0000 C CNN
	1    8500 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 585B9832
P 8500 3050
F 0 "#PWR055" H 8500 2800 50  0001 C CNN
F 1 "GND" H 8500 2900 50  0000 C CNN
F 2 "" H 8500 3050 50  0000 C CNN
F 3 "" H 8500 3050 50  0000 C CNN
	1    8500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2950 8500 3050
Connection ~ 8500 2600
NoConn ~ 8350 3200
NoConn ~ 8350 3100
NoConn ~ 8350 3000
NoConn ~ 8350 2900
NoConn ~ 8350 2800
NoConn ~ 8350 2700
$EndSCHEMATC