EESchema Schematic File Version 4
LIBS:esp-pwm-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Regulator_Linear:L7805 U1
U 1 1 5DC980F3
P 1700 1200
F 0 "U1" H 1700 1442 50  0000 C CNN
F 1 "L7805" H 1700 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1725 1050 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1700 1150 50  0001 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
Text GLabel 1050 1200 0    50   Input ~ 0
12v
Wire Wire Line
	1050 1200 1250 1200
$Comp
L power:GND #PWR0101
U 1 1 5DC98269
P 1750 3450
F 0 "#PWR0101" H 1750 3200 50  0001 C CNN
F 1 "GND" H 1755 3277 50  0000 C CNN
F 2 "" H 1750 3450 50  0001 C CNN
F 3 "" H 1750 3450 50  0001 C CNN
	1    1750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1500 1700 1850
Wire Wire Line
	1700 3450 1750 3450
Text GLabel 3000 1150 2    50   Input ~ 0
5v
Wire Wire Line
	2000 1200 2350 1200
Wire Wire Line
	3000 1200 3000 1150
Text GLabel 3800 2850 0    50   Input ~ 0
5v
$Comp
L power:GND #PWR0102
U 1 1 5DC982F0
P 3800 2750
F 0 "#PWR0102" H 3800 2500 50  0001 C CNN
F 1 "GND" V 3805 2622 50  0000 R CNN
F 2 "" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	0    1    1    0   
$EndComp
Text GLabel 6100 1650 2    50   Input ~ 0
Ctrl
$Comp
L ESP8266:NodeMCU1.0(ESP-12E) U2
U 1 1 5DD3BF08
P 4900 2150
F 0 "U2" H 4900 3237 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 4900 3131 60  0000 C CNN
F 2 "ESP8266:NodeMCU1.0(12-E)" H 4300 1300 60  0001 C CNN
F 3 "" H 4300 1300 60  0000 C CNN
	1    4900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2750 3800 2750
Wire Wire Line
	4100 2850 3800 2850
Text GLabel 6050 1750 2    50   Input ~ 0
Radio
Wire Wire Line
	5700 1750 6050 1750
Wire Wire Line
	5700 1650 6100 1650
Text GLabel 3600 4100 2    50   Input ~ 0
Radio
Text GLabel 3600 3900 2    50   Input ~ 0
5v
$Comp
L power:GND #PWR0105
U 1 1 5DD4F26E
P 3600 4200
F 0 "#PWR0105" H 3600 3950 50  0001 C CNN
F 1 "GND" V 3605 4072 50  0000 R CNN
F 2 "" H 3600 4200 50  0001 C CNN
F 3 "" H 3600 4200 50  0001 C CNN
	1    3600 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J6
U 1 1 5DD4F98A
P 3050 4100
F 0 "J6" H 2970 3675 50  0000 C CNN
F 1 "Screw_Terminal_01x04" H 2970 3766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 3050 4100 50  0001 C CNN
F 3 "~" H 3050 4100 50  0001 C CNN
	1    3050 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3900 3600 3900
Wire Wire Line
	3250 4100 3600 4100
Wire Wire Line
	3250 4200 3600 4200
$Comp
L Device:C C2
U 1 1 5DDE910B
P 2350 1700
F 0 "C2" H 2465 1746 50  0000 L CNN
F 1 "100n" H 2465 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2388 1550 50  0001 C CNN
F 3 "~" H 2350 1700 50  0001 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DDE916F
P 1250 1700
F 0 "C1" H 1365 1746 50  0000 L CNN
F 1 "100n" H 1365 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 1288 1550 50  0001 C CNN
F 3 "~" H 1250 1700 50  0001 C CNN
	1    1250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1550 1250 1200
Connection ~ 1250 1200
Wire Wire Line
	1250 1200 1400 1200
Wire Wire Line
	1250 1850 1700 1850
Connection ~ 1700 1850
Wire Wire Line
	1700 1850 1700 3450
Wire Wire Line
	2350 1550 2350 1200
Connection ~ 2350 1200
Wire Wire Line
	2350 1200 3000 1200
Wire Wire Line
	2350 1850 1700 1850
$EndSCHEMATC
