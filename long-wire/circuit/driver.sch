EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Transistor_FET:IRF540N Q?
U 1 1 5E1F640B
P 4450 3700
F 0 "Q?" H 4655 3746 50  0000 L CNN
F 1 "IRF540N" H 4655 3655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4700 3625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 4450 3700 50  0001 L CNN
	1    4450 3700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5E1F6411
P 4150 4050
F 0 "Q?" H 4341 4096 50  0000 L CNN
F 1 "2N3904" H 4341 4005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4350 3975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4150 4050 50  0001 L CNN
	1    4150 4050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5E1F6417
P 3850 4300
F 0 "Q?" H 4041 4346 50  0000 L CNN
F 1 "2N3904" H 4041 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4050 4225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3850 4300 50  0001 L CNN
	1    3850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1F641D
P 4250 3300
F 0 "R?" H 4320 3346 50  0000 L CNN
F 1 "500" H 4320 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4180 3300 50  0001 C CNN
F 3 "~" H 4250 3300 50  0001 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1F6423
P 3650 3350
F 0 "R?" H 3720 3396 50  0000 L CNN
F 1 "1k" H 3720 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3580 3350 50  0001 C CNN
F 3 "~" H 3650 3350 50  0001 C CNN
	1    3650 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1F6429
P 3050 4350
F 0 "R?" V 2843 4350 50  0000 C CNN
F 1 "200" V 2934 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2980 4350 50  0001 C CNN
F 3 "~" H 3050 4350 50  0001 C CNN
	1    3050 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1F642F
P 4500 4650
F 0 "#PWR?" H 4500 4400 50  0001 C CNN
F 1 "GND" H 4505 4477 50  0000 C CNN
F 2 "" H 4500 4650 50  0001 C CNN
F 3 "" H 4500 4650 50  0001 C CNN
	1    4500 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J?
U 1 1 5E1F6435
P 5500 2800
F 0 "J?" H 5580 2842 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5580 2751 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5500 2800 50  0001 C CNN
F 3 "~" H 5500 2800 50  0001 C CNN
	1    5500 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J?
U 1 1 5E1F643B
P 5500 3000
F 0 "J?" H 5580 3042 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5580 2951 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5500 3000 50  0001 C CNN
F 3 "~" H 5500 3000 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J?
U 1 1 5E1F6441
P 5500 3150
F 0 "J?" H 5580 3192 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5580 3101 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5500 3150 50  0001 C CNN
F 3 "~" H 5500 3150 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J?
U 1 1 5E1F6447
P 5500 3350
F 0 "J?" H 5580 3392 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 5580 3301 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 5500 3350 50  0001 C CNN
F 3 "~" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
Text GLabel 5100 2800 0    50   Input ~ 0
12v
$Comp
L power:GND #PWR?
U 1 1 5E1F644E
P 5000 3000
F 0 "#PWR?" H 5000 2750 50  0001 C CNN
F 1 "GND" V 5005 2872 50  0000 R CNN
F 2 "" H 5000 3000 50  0001 C CNN
F 3 "" H 5000 3000 50  0001 C CNN
	1    5000 3000
	0    1    1    0   
$EndComp
Text GLabel 5050 3150 0    50   Input ~ 0
Ctrl
Text GLabel 5050 3350 0    50   Input ~ 0
Out
Wire Wire Line
	4250 3450 4250 3700
Wire Wire Line
	4250 3850 4250 3700
Connection ~ 4250 3700
Wire Wire Line
	4250 4250 4500 4250
Wire Wire Line
	4500 4250 4500 4500
Wire Wire Line
	4550 3900 4550 4250
Wire Wire Line
	4550 4250 4500 4250
Connection ~ 4500 4250
Wire Wire Line
	3950 4500 4500 4500
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 4500 4650
Wire Wire Line
	3950 4100 3950 4050
Wire Wire Line
	3650 3500 3950 3500
Wire Wire Line
	3950 3500 3950 4050
Connection ~ 3950 4050
Wire Wire Line
	3200 4350 3650 4350
Wire Wire Line
	3650 4350 3650 4300
Text GLabel 3650 3050 1    50   Input ~ 0
12v
Wire Wire Line
	3650 3050 3650 3150
Wire Wire Line
	4250 3150 3650 3150
Connection ~ 3650 3150
Wire Wire Line
	3650 3150 3650 3200
Text GLabel 2750 4350 0    50   Input ~ 0
Ctrl
Wire Wire Line
	2750 4350 2900 4350
Wire Wire Line
	5300 3350 5050 3350
Wire Wire Line
	5300 3150 5050 3150
Wire Wire Line
	5300 2800 5100 2800
Wire Wire Line
	5300 3000 5000 3000
Text GLabel 4550 3400 1    50   Input ~ 0
Out
Wire Wire Line
	4550 3400 4550 3500
$EndSCHEMATC
