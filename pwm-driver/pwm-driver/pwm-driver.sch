EESchema Schematic File Version 4
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
L Transistor_FET:IRF540N Q3
U 1 1 5DCACAFA
P 4300 4000
F 0 "Q3" H 4505 4046 50  0000 L CNN
F 1 "IRF540N" H 4505 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4550 3925 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 4300 4000 50  0001 L CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5DCACBC2
P 4000 4350
F 0 "Q2" H 4191 4396 50  0000 L CNN
F 1 "2N3904" H 4191 4305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4200 4275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4000 4350 50  0001 L CNN
	1    4000 4350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5DCACC0A
P 3700 4600
F 0 "Q1" H 3891 4646 50  0000 L CNN
F 1 "2N3904" H 3891 4555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3900 4525 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3700 4600 50  0001 L CNN
	1    3700 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DCACC54
P 4100 3600
F 0 "R3" H 4170 3646 50  0000 L CNN
F 1 "500" H 4170 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4030 3600 50  0001 C CNN
F 3 "~" H 4100 3600 50  0001 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DCACCAC
P 3500 3650
F 0 "R2" H 3570 3696 50  0000 L CNN
F 1 "1k" H 3570 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3430 3650 50  0001 C CNN
F 3 "~" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DCACCDE
P 2900 4650
F 0 "R1" V 2693 4650 50  0000 C CNN
F 1 "200" V 2784 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2830 4650 50  0001 C CNN
F 3 "~" H 2900 4650 50  0001 C CNN
	1    2900 4650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DCACD43
P 4350 4950
F 0 "#PWR01" H 4350 4700 50  0001 C CNN
F 1 "GND" H 4355 4777 50  0000 C CNN
F 2 "" H 4350 4950 50  0001 C CNN
F 3 "" H 4350 4950 50  0001 C CNN
	1    4350 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J1
U 1 1 5DCACE04
P 5350 3100
F 0 "J1" H 5430 3142 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5430 3051 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5350 3100 50  0001 C CNN
F 3 "~" H 5350 3100 50  0001 C CNN
	1    5350 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J2
U 1 1 5DCACE50
P 5350 3300
F 0 "J2" H 5430 3342 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5430 3251 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5350 3300 50  0001 C CNN
F 3 "~" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J4
U 1 1 5DCACECC
P 5350 3450
F 0 "J4" H 5430 3492 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5430 3401 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5350 3450 50  0001 C CNN
F 3 "~" H 5350 3450 50  0001 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J5
U 1 1 5DCACF0C
P 5350 3650
F 0 "J5" H 5430 3692 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5430 3601 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5350 3650 50  0001 C CNN
F 3 "~" H 5350 3650 50  0001 C CNN
	1    5350 3650
	1    0    0    -1  
$EndComp
Text GLabel 4950 3100 0    50   Input ~ 0
12v
$Comp
L power:GND #PWR02
U 1 1 5DCAD095
P 4850 3300
F 0 "#PWR02" H 4850 3050 50  0001 C CNN
F 1 "GND" V 4855 3172 50  0000 R CNN
F 2 "" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3300
	0    1    1    0   
$EndComp
Text GLabel 4900 3450 0    50   Input ~ 0
Ctrl
Text GLabel 4900 3650 0    50   Input ~ 0
Out
Wire Wire Line
	4100 3750 4100 4000
Wire Wire Line
	4100 4150 4100 4000
Connection ~ 4100 4000
Wire Wire Line
	4100 4550 4350 4550
Wire Wire Line
	4350 4550 4350 4800
Wire Wire Line
	4400 4200 4400 4550
Wire Wire Line
	4400 4550 4350 4550
Connection ~ 4350 4550
Wire Wire Line
	3800 4800 4350 4800
Connection ~ 4350 4800
Wire Wire Line
	4350 4800 4350 4950
Wire Wire Line
	3800 4400 3800 4350
Wire Wire Line
	3500 3800 3800 3800
Wire Wire Line
	3800 3800 3800 4350
Connection ~ 3800 4350
Wire Wire Line
	3050 4650 3500 4650
Wire Wire Line
	3500 4650 3500 4600
Text GLabel 3500 3350 1    50   Input ~ 0
12v
Wire Wire Line
	3500 3350 3500 3450
Wire Wire Line
	4100 3450 3500 3450
Connection ~ 3500 3450
Wire Wire Line
	3500 3450 3500 3500
Text GLabel 2600 4650 0    50   Input ~ 0
Ctrl
Wire Wire Line
	2600 4650 2750 4650
Wire Wire Line
	5150 3650 4900 3650
Wire Wire Line
	5150 3450 4900 3450
Wire Wire Line
	5150 3100 4950 3100
Wire Wire Line
	5150 3300 4850 3300
Text GLabel 4400 3700 1    50   Input ~ 0
Out
Wire Wire Line
	4400 3700 4400 3800
$EndSCHEMATC
