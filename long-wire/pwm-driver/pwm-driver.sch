EESchema Schematic File Version 4
EELAYER 30 0
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
P 3200 4600
F 0 "R1" V 2993 4600 50  0000 C CNN
F 1 "200" V 3084 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3130 4600 50  0001 C CNN
F 3 "~" H 3200 4600 50  0001 C CNN
	1    3200 4600
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
	3350 4600 3500 4600
Text GLabel 2950 4600 0    50   Input ~ 0
Ctrl
Wire Wire Line
	2950 4600 3050 4600
Text GLabel 4400 3700 1    50   Input ~ 0
Out
Wire Wire Line
	4400 3700 4400 3800
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5E2004FA
P 2650 4150
F 0 "J1" V 2522 4230 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 2613 4230 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2650 4150 50  0001 C CNN
F 3 "~" H 2650 4150 50  0001 C CNN
	1    2650 4150
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5E201594
P 3850 3000
F 0 "J3" H 3930 2992 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 3930 2901 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3850 3000 50  0001 C CNN
F 3 "~" H 3850 3000 50  0001 C CNN
	1    3850 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 5E204696
P 3750 2800
F 0 "#PWR03" H 3750 2650 50  0001 C CNN
F 1 "+12V" H 3765 2973 50  0000 C CNN
F 2 "" H 3750 2800 50  0001 C CNN
F 3 "" H 3750 2800 50  0001 C CNN
	1    3750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2800 3750 2800
Wire Wire Line
	3500 2800 3500 3000
Wire Wire Line
	3400 3000 3500 3000
Connection ~ 3500 3000
Wire Wire Line
	3650 3000 3500 3000
Wire Wire Line
	3650 3250 3650 3100
Wire Wire Line
	3400 3100 3650 3100
Connection ~ 3650 3100
Text GLabel 2550 3800 1    50   Input ~ 0
Out
Wire Wire Line
	2550 3950 2550 3800
Wire Wire Line
	2650 3950 3000 3950
Wire Wire Line
	3500 2800 3000 2800
Connection ~ 3500 2800
Text GLabel 3250 3850 3    50   Input ~ 0
Ctrl
$Comp
L power:GND #PWR02
U 1 1 5E207489
P 3650 3250
F 0 "#PWR02" H 3650 3000 50  0001 C CNN
F 1 "GND" H 3655 3077 50  0000 C CNN
F 2 "" H 3650 3250 50  0001 C CNN
F 3 "" H 3650 3250 50  0001 C CNN
	1    3650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3000 3500 3450
Wire Wire Line
	3500 3450 3500 3500
Connection ~ 3500 3450
Wire Wire Line
	4100 3450 3500 3450
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
Wire Wire Line
	3000 2800 3000 3950
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 5E26C075
P 3250 3650
F 0 "J4" V 3188 3562 50  0000 R CNN
F 1 "Conn_01x01_Female" V 3097 3562 50  0000 R CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 3250 3650 50  0001 C CNN
F 3 "~" H 3250 3650 50  0001 C CNN
	1    3250 3650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5E26D3C3
P 3200 3100
F 0 "J2" H 3118 2775 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3118 2866 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3200 3100 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	-1   0    0    1   
$EndComp
$EndSCHEMATC
