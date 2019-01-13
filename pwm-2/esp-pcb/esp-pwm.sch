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
L RF_Module:ESP-12E U2
U 1 1 5C31E123
P 3650 3000
F 0 "U2" H 3650 3978 50  0000 C CNN
F 1 "ESP-12E" H 3650 3887 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 3650 3000 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 3300 3100 50  0001 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C31E256
P 700 4550
F 0 "#PWR02" H 700 4300 50  0001 C CNN
F 1 "GND" H 705 4377 50  0000 C CNN
F 2 "" H 700 4550 50  0001 C CNN
F 3 "" H 700 4550 50  0001 C CNN
	1    700  4550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 5C31E368
P 1350 1250
F 0 "U1" H 1350 1492 50  0000 C CNN
F 1 "LM1117-3.3" H 1350 1401 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1350 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1350 1250 50  0001 C CNN
	1    1350 1250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF540N Q3
U 1 1 5C31E57D
P 9850 2650
F 0 "Q3" H 10055 2696 50  0000 L CNN
F 1 "IRF540N" H 10055 2605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10100 2575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 9850 2650 50  0001 L CNN
	1    9850 2650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5C31E6AE
P 8700 2550
F 0 "Q1" H 8891 2596 50  0000 L CNN
F 1 "2N3904" H 8891 2505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8900 2475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8700 2550 50  0001 L CNN
	1    8700 2550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5C31E851
P 9200 3100
F 0 "Q2" H 9391 3146 50  0000 L CNN
F 1 "2N3904" H 9391 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 9400 3025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9200 3100 50  0001 L CNN
	1    9200 3100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5C31E8CF
P 4800 2400
F 0 "SW2" H 4800 2685 50  0000 C CNN
F 1 "FLASH" H 4800 2594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4800 2600 50  0001 C CNN
F 3 "" H 4800 2600 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  3650 700  4550
Text GLabel 2450 800  1    50   Input ~ 0
3v3
Wire Wire Line
	1650 1250 1850 1250
Text GLabel 3650 900  1    50   Input ~ 0
3v3
Wire Wire Line
	2450 800  2450 1250
Wire Wire Line
	3650 900  3650 1300
$Comp
L Device:R R6
U 1 1 5C31EE1C
P 8800 1950
F 0 "R6" H 8870 1996 50  0000 L CNN
F 1 "1k" H 8870 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8730 1950 50  0001 C CNN
F 3 "~" H 8800 1950 50  0001 C CNN
	1    8800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C31F09E
P 9250 1950
F 0 "R7" H 9320 1996 50  0000 L CNN
F 1 "500" H 9320 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9180 1950 50  0001 C CNN
F 3 "~" H 9250 1950 50  0001 C CNN
	1    9250 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C31F1D0
P 8050 2550
F 0 "R5" V 7843 2550 50  0000 C CNN
F 1 "200" V 7934 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7980 2550 50  0001 C CNN
F 3 "~" H 8050 2550 50  0001 C CNN
	1    8050 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2550 8500 2550
Wire Wire Line
	9250 2900 9300 2900
Wire Wire Line
	9000 3100 9000 2250
Wire Wire Line
	9000 2250 8800 2250
Connection ~ 8800 2250
Wire Wire Line
	8800 2250 8800 2350
Wire Wire Line
	8800 2750 8800 3300
Wire Wire Line
	9650 2650 9250 2650
Connection ~ 9250 2650
Wire Wire Line
	9250 2650 9250 2900
Text GLabel 850  1250 0    50   Input ~ 0
12v
Wire Wire Line
	850  1250 1000 1250
Text GLabel 9000 1500 1    50   Input ~ 0
12v
$Comp
L Device:R R2
U 1 1 5C320C90
P 2850 1800
F 0 "R2" H 2920 1846 50  0000 L CNN
F 1 "100k" H 2920 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2780 1800 50  0001 C CNN
F 3 "~" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C32113D
P 2600 1800
F 0 "R1" H 2670 1846 50  0000 L CNN
F 1 "100k" H 2670 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2530 1800 50  0001 C CNN
F 3 "~" H 2600 1800 50  0001 C CNN
	1    2600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C32121F
P 4600 3500
F 0 "R4" H 4670 3546 50  0000 L CNN
F 1 "100k" H 4670 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4530 3500 50  0001 C CNN
F 3 "~" H 4600 3500 50  0001 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C3213BB
P 4500 1750
F 0 "R3" H 4570 1796 50  0000 L CNN
F 1 "100k" H 4570 1705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4430 1750 50  0001 C CNN
F 3 "~" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1900 4500 2400
Wire Wire Line
	4500 2400 4250 2400
Wire Wire Line
	4250 3300 4600 3300
Wire Wire Line
	4600 3300 4600 3350
Wire Wire Line
	4600 3650 4600 3700
Wire Wire Line
	4600 3700 3650 3700
Wire Wire Line
	4500 2400 4600 2400
Connection ~ 4500 2400
Wire Wire Line
	5000 2400 5000 3700
Wire Wire Line
	5000 3700 4600 3700
Connection ~ 4600 3700
Wire Wire Line
	3050 2600 2600 2600
Wire Wire Line
	2600 2600 2600 1950
Wire Wire Line
	3050 2400 2850 2400
Wire Wire Line
	2850 2400 2850 1950
Wire Wire Line
	2600 1650 2600 1300
Wire Wire Line
	2600 1300 2850 1300
Connection ~ 3650 1300
Wire Wire Line
	3650 1300 3650 2200
Wire Wire Line
	4500 1600 4500 1300
Wire Wire Line
	4500 1300 3650 1300
Wire Wire Line
	2850 1650 2850 1300
Connection ~ 2850 1300
Wire Wire Line
	2850 1300 3650 1300
Text GLabel 5400 2700 2    50   Input ~ 0
RXD
Text GLabel 5400 2500 2    50   Input ~ 0
TXD
Text GLabel 5400 3700 2    50   Input ~ 0
GND
Wire Wire Line
	9950 2850 9950 3300
Wire Wire Line
	9950 3300 9300 3300
Connection ~ 9300 3300
Text GLabel 10200 2300 2    50   Input ~ 0
OUT1-
Text GLabel 10200 2000 2    50   Input ~ 0
OUT1+
Wire Wire Line
	1350 1550 1350 1900
Wire Wire Line
	1350 3650 700  3650
Wire Wire Line
	3650 3700 1350 3700
Wire Wire Line
	1350 3700 1350 3650
Connection ~ 3650 3700
Connection ~ 1350 3650
Wire Wire Line
	9250 2100 9250 2650
Wire Wire Line
	8800 2100 8800 2250
Wire Wire Line
	8800 1800 8800 1700
Wire Wire Line
	8800 1700 9000 1700
Wire Wire Line
	9250 1700 9250 1800
Wire Wire Line
	9000 1500 9000 1700
Connection ~ 9000 1700
Wire Wire Line
	9000 1700 9250 1700
Wire Wire Line
	10200 2300 9950 2300
Wire Wire Line
	9950 2300 9950 2450
Wire Wire Line
	10200 2000 10200 1700
Wire Wire Line
	10200 1700 9250 1700
Connection ~ 9250 1700
Text GLabel 5400 3000 2    50   Input ~ 0
CTRL1
Text GLabel 5400 3100 2    50   Input ~ 0
CTRL2
Text GLabel 7500 2550 0    50   Input ~ 0
CTRL1
Wire Wire Line
	7900 2550 7500 2550
Wire Wire Line
	4250 3000 5400 3000
Wire Wire Line
	4250 3100 5400 3100
Wire Wire Line
	8800 3300 9300 3300
$Comp
L power:GND #PWR0101
U 1 1 5C355BCC
P 9300 3500
F 0 "#PWR0101" H 9300 3250 50  0001 C CNN
F 1 "GND" H 9305 3327 50  0000 C CNN
F 2 "" H 9300 3500 50  0001 C CNN
F 3 "" H 9300 3500 50  0001 C CNN
	1    9300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3500 9300 3300
Wire Wire Line
	4250 2500 5400 2500
Wire Wire Line
	4250 2700 5400 2700
Wire Wire Line
	5000 3700 5400 3700
Connection ~ 5000 3700
$Comp
L Transistor_FET:IRF540N Q6
U 1 1 5C359B2E
P 9850 4800
F 0 "Q6" H 10055 4846 50  0000 L CNN
F 1 "IRF540N" H 10055 4755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10100 4725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 9850 4800 50  0001 L CNN
	1    9850 4800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5C359B35
P 8700 4700
F 0 "Q4" H 8891 4746 50  0000 L CNN
F 1 "2N3904" H 8891 4655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8900 4625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8700 4700 50  0001 L CNN
	1    8700 4700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q5
U 1 1 5C359B3C
P 9200 5250
F 0 "Q5" H 9391 5296 50  0000 L CNN
F 1 "2N3904" H 9391 5205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 9400 5175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9200 5250 50  0001 L CNN
	1    9200 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C359B43
P 8800 4100
F 0 "R9" H 8870 4146 50  0000 L CNN
F 1 "1k" H 8870 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8730 4100 50  0001 C CNN
F 3 "~" H 8800 4100 50  0001 C CNN
	1    8800 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C359B4A
P 9250 4100
F 0 "R10" H 9320 4146 50  0000 L CNN
F 1 "500" H 9320 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9180 4100 50  0001 C CNN
F 3 "~" H 9250 4100 50  0001 C CNN
	1    9250 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C359B51
P 8050 4700
F 0 "R8" V 7843 4700 50  0000 C CNN
F 1 "200" V 7934 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7980 4700 50  0001 C CNN
F 3 "~" H 8050 4700 50  0001 C CNN
	1    8050 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4700 8500 4700
Wire Wire Line
	9250 5050 9300 5050
Wire Wire Line
	9000 5250 9000 4400
Wire Wire Line
	9000 4400 8800 4400
Connection ~ 8800 4400
Wire Wire Line
	8800 4400 8800 4500
Wire Wire Line
	8800 4900 8800 5450
Wire Wire Line
	9650 4800 9250 4800
Connection ~ 9250 4800
Wire Wire Line
	9250 4800 9250 5050
Text GLabel 9000 3650 1    50   Input ~ 0
12v
Wire Wire Line
	9950 5000 9950 5450
Wire Wire Line
	9950 5450 9300 5450
Connection ~ 9300 5450
Text GLabel 10200 4450 2    50   Input ~ 0
OUT2-
Text GLabel 10200 4150 2    50   Input ~ 0
OUT2+
Wire Wire Line
	9250 4250 9250 4800
Wire Wire Line
	8800 4250 8800 4400
Wire Wire Line
	8800 3950 8800 3850
Wire Wire Line
	8800 3850 9000 3850
Wire Wire Line
	9250 3850 9250 3950
Wire Wire Line
	9000 3650 9000 3850
Connection ~ 9000 3850
Wire Wire Line
	9000 3850 9250 3850
Wire Wire Line
	10200 4450 9950 4450
Wire Wire Line
	9950 4450 9950 4600
Wire Wire Line
	10200 4150 10200 3850
Wire Wire Line
	10200 3850 9250 3850
Connection ~ 9250 3850
Text GLabel 7500 4700 0    50   Input ~ 0
CTRL2
Wire Wire Line
	7900 4700 7500 4700
Wire Wire Line
	8800 5450 9300 5450
$Comp
L power:GND #PWR0102
U 1 1 5C359B78
P 9300 5650
F 0 "#PWR0102" H 9300 5400 50  0001 C CNN
F 1 "GND" H 9305 5477 50  0000 C CNN
F 2 "" H 9300 5650 50  0001 C CNN
F 3 "" H 9300 5650 50  0001 C CNN
	1    9300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5650 9300 5450
$Comp
L Device:CP C2
U 1 1 5C360957
P 1850 1650
F 0 "C2" H 1968 1696 50  0000 L CNN
F 1 "100u" H 1968 1605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1888 1500 50  0001 C CNN
F 3 "~" H 1850 1650 50  0001 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C3609F0
P 1000 1550
F 0 "C1" H 1115 1596 50  0000 L CNN
F 1 "100n" H 1115 1505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W2.5mm_P5.00mm" H 1038 1400 50  0001 C CNN
F 3 "~" H 1000 1550 50  0001 C CNN
	1    1000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1400 1000 1250
Connection ~ 1000 1250
Wire Wire Line
	1000 1250 1050 1250
Wire Wire Line
	1000 1700 1000 1900
Wire Wire Line
	1000 1900 1350 1900
Connection ~ 1350 1900
Wire Wire Line
	1350 1900 1350 3650
Wire Wire Line
	1850 1500 1850 1250
Connection ~ 1850 1250
Wire Wire Line
	1850 1250 2450 1250
Wire Wire Line
	1850 1800 1850 1900
Wire Wire Line
	1850 1900 1350 1900
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5C34B847
P 7400 700
F 0 "J2" V 7460 840 50  0000 L CNN
F 1 "Conn_01x03_Male" V 7551 840 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 7400 700 50  0001 C CNN
F 3 "~" H 7400 700 50  0001 C CNN
	1    7400 700 
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5C34B967
P 8050 700
F 0 "J3" H 8130 692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8130 601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8050 700 50  0001 C CNN
F 3 "~" H 8050 700 50  0001 C CNN
	1    8050 700 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C34B9F8
P 8650 700
F 0 "J4" H 8730 692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8730 601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8650 700 50  0001 C CNN
F 3 "~" H 8650 700 50  0001 C CNN
	1    8650 700 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C34BA95
P 6750 700
F 0 "J1" V 6716 512 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 6625 512 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 6750 700 50  0001 C CNN
F 3 "~" H 6750 700 50  0001 C CNN
	1    6750 700 
	0    -1   -1   0   
$EndComp
Text GLabel 6750 950  3    50   Input ~ 0
12v
Text GLabel 6850 950  3    50   Input ~ 0
GND
Wire Wire Line
	6750 900  6750 950 
Wire Wire Line
	6850 900  6850 950 
Text GLabel 8050 900  3    50   Input ~ 0
OUT1+
Text GLabel 8150 900  3    50   Input ~ 0
OUT1-
Text GLabel 8750 900  3    50   Input ~ 0
OUT2+
Text GLabel 8650 900  3    50   Input ~ 0
OUT2-
Text GLabel 7300 900  3    50   Input ~ 0
TXD
Text GLabel 7400 900  3    50   Input ~ 0
RXD
Text GLabel 7500 900  3    50   Input ~ 0
GND
$EndSCHEMATC
