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
L wemos_mini_d1:WeMos_mini U2
U 1 1 5DC97ECD
P 4450 2350
F 0 "U2" H 4450 3093 60  0000 C CNN
F 1 "WeMos_mini" H 4450 2987 60  0000 C CNN
F 2 "wemos_mini_d1:D1_mini_board" H 5000 1650 60  0001 C CNN
F 3 "http://www.wemos.cc/Products/d1_mini.html" H 4450 2881 60  0000 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
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
12V
Wire Wire Line
	1050 1200 1400 1200
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
	1700 1500 1700 3450
Wire Wire Line
	1700 3450 1750 3450
Text GLabel 3000 1150 2    50   Input ~ 0
5V
Wire Wire Line
	2000 1200 3000 1200
Wire Wire Line
	3000 1200 3000 1150
Text GLabel 3850 1400 1    50   Input ~ 0
5V
Wire Wire Line
	3850 1400 3850 2000
Wire Wire Line
	3850 2000 3950 2000
$Comp
L power:GND #PWR0102
U 1 1 5DC982F0
P 3250 2050
F 0 "#PWR0102" H 3250 1800 50  0001 C CNN
F 1 "GND" V 3255 1922 50  0000 R CNN
F 2 "" H 3250 2050 50  0001 C CNN
F 3 "" H 3250 2050 50  0001 C CNN
	1    3250 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2100 3250 2100
Wire Wire Line
	3250 2100 3250 2050
$Comp
L Transistor_FET:IRF540N Q11
U 1 1 5DC983FA
P 9450 3150
F 0 "Q11" H 9655 3196 50  0000 L CNN
F 1 "IRF540N" H 9655 3105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9700 3075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 9450 3150 50  0001 L CNN
	1    9450 3150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q5
U 1 1 5DC984BB
P 8850 3750
F 0 "Q5" H 9041 3796 50  0000 L CNN
F 1 "2N3904" H 9041 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9050 3675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8850 3750 50  0001 L CNN
	1    8850 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q8
U 1 1 5DC98574
P 9150 3450
F 0 "Q8" H 9341 3496 50  0000 L CNN
F 1 "2N3904" H 9341 3405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9350 3375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9150 3450 50  0001 L CNN
	1    9150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5DC9868F
P 8950 2850
F 0 "R8" H 9020 2896 50  0000 L CNN
F 1 "1K" H 9020 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8880 2850 50  0001 C CNN
F 3 "~" H 8950 2850 50  0001 C CNN
	1    8950 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5DC9887D
P 9250 2850
F 0 "R11" H 9320 2896 50  0000 L CNN
F 1 "500" H 9320 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 9180 2850 50  0001 C CNN
F 3 "~" H 9250 2850 50  0001 C CNN
	1    9250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DC98B10
P 8400 3750
F 0 "R5" V 8193 3750 50  0000 C CNN
F 1 "200" V 8284 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8330 3750 50  0001 C CNN
F 3 "~" H 8400 3750 50  0001 C CNN
	1    8400 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DC98E32
P 9250 4000
F 0 "#PWR0103" H 9250 3750 50  0001 C CNN
F 1 "GND" H 9255 3827 50  0000 C CNN
F 2 "" H 9250 4000 50  0001 C CNN
F 3 "" H 9250 4000 50  0001 C CNN
	1    9250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4000 9250 4000
Connection ~ 9250 4000
Text GLabel 9100 2600 1    50   Input ~ 0
12V
Wire Wire Line
	9250 4000 9550 4000
Wire Wire Line
	8950 3000 8950 3450
Wire Wire Line
	8950 3550 8950 3450
Connection ~ 8950 3450
Wire Wire Line
	9250 3250 9250 3150
Wire Wire Line
	9250 3000 9250 3150
Connection ~ 9250 3150
Wire Wire Line
	8650 3750 8550 3750
Wire Wire Line
	8950 3950 8950 4000
Wire Wire Line
	9250 3650 9250 4000
Wire Wire Line
	9550 3350 9550 4000
Connection ~ 9550 4000
Wire Wire Line
	9550 4000 9800 4000
Wire Wire Line
	8950 2700 9100 2700
Wire Wire Line
	9100 2700 9100 2600
Wire Wire Line
	9250 2700 9100 2700
Connection ~ 9100 2700
Text GLabel 9850 2700 2    50   Input ~ 0
OUT3+
Text GLabel 9850 2950 2    50   Input ~ 0
OUT3-
Text GLabel 8100 3750 0    50   Input ~ 0
CTRL3
Wire Wire Line
	8250 3750 8100 3750
Wire Wire Line
	9550 2950 9750 2950
Wire Wire Line
	9850 2700 9750 2700
Connection ~ 9250 2700
$Comp
L Transistor_FET:IRF540N Q12
U 1 1 5DC9C15C
P 9450 5050
F 0 "Q12" H 9655 5096 50  0000 L CNN
F 1 "IRF540N" H 9655 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9700 4975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 9450 5050 50  0001 L CNN
	1    9450 5050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q6
U 1 1 5DC9C162
P 8850 5650
F 0 "Q6" H 9041 5696 50  0000 L CNN
F 1 "2N3904" H 9041 5605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9050 5575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8850 5650 50  0001 L CNN
	1    8850 5650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q9
U 1 1 5DC9C168
P 9150 5350
F 0 "Q9" H 9341 5396 50  0000 L CNN
F 1 "2N3904" H 9341 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9350 5275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9150 5350 50  0001 L CNN
	1    9150 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5DC9C16E
P 8950 4750
F 0 "R9" H 9020 4796 50  0000 L CNN
F 1 "1K" H 9020 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8880 4750 50  0001 C CNN
F 3 "~" H 8950 4750 50  0001 C CNN
	1    8950 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5DC9C174
P 9250 4750
F 0 "R12" H 9320 4796 50  0000 L CNN
F 1 "500" H 9320 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 9180 4750 50  0001 C CNN
F 3 "~" H 9250 4750 50  0001 C CNN
	1    9250 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DC9C17A
P 8400 5650
F 0 "R6" V 8193 5650 50  0000 C CNN
F 1 "200" V 8284 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8330 5650 50  0001 C CNN
F 3 "~" H 8400 5650 50  0001 C CNN
	1    8400 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DC9C180
P 9250 5900
F 0 "#PWR0104" H 9250 5650 50  0001 C CNN
F 1 "GND" H 9255 5727 50  0000 C CNN
F 2 "" H 9250 5900 50  0001 C CNN
F 3 "" H 9250 5900 50  0001 C CNN
	1    9250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5900 9250 5900
Connection ~ 9250 5900
Text GLabel 9100 4500 1    50   Input ~ 0
12V
Wire Wire Line
	9250 5900 9550 5900
Wire Wire Line
	8950 4900 8950 5350
Wire Wire Line
	8950 5450 8950 5350
Connection ~ 8950 5350
Wire Wire Line
	9250 5150 9250 5050
Wire Wire Line
	9250 4900 9250 5050
Connection ~ 9250 5050
Wire Wire Line
	8650 5650 8550 5650
Wire Wire Line
	8950 5850 8950 5900
Wire Wire Line
	9250 5550 9250 5900
Wire Wire Line
	9550 5250 9550 5900
Connection ~ 9550 5900
Wire Wire Line
	9550 5900 9800 5900
Wire Wire Line
	8950 4600 9100 4600
Wire Wire Line
	9100 4600 9100 4500
Wire Wire Line
	9250 4600 9100 4600
Connection ~ 9100 4600
Text GLabel 9850 4600 2    50   Input ~ 0
OUT2+
Text GLabel 9850 4850 2    50   Input ~ 0
OUT2-
Text GLabel 8100 5650 0    50   Input ~ 0
CTRL2
Wire Wire Line
	8250 5650 8100 5650
Wire Wire Line
	9550 4850 9750 4850
Wire Wire Line
	9850 4600 9800 4600
Connection ~ 9250 4600
$Comp
L Transistor_FET:IRF540N Q10
U 1 1 5DC9C9E1
P 9450 1400
F 0 "Q10" H 9655 1446 50  0000 L CNN
F 1 "IRF540N" H 9655 1355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9700 1325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 9450 1400 50  0001 L CNN
	1    9450 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5DC9C9E7
P 8850 2000
F 0 "Q4" H 9041 2046 50  0000 L CNN
F 1 "2N3904" H 9041 1955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9050 1925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8850 2000 50  0001 L CNN
	1    8850 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q7
U 1 1 5DC9C9ED
P 9150 1700
F 0 "Q7" H 9341 1746 50  0000 L CNN
F 1 "2N3904" H 9341 1655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9350 1625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9150 1700 50  0001 L CNN
	1    9150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5DC9C9F3
P 8950 1100
F 0 "R7" H 9020 1146 50  0000 L CNN
F 1 "1K" H 9020 1055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8880 1100 50  0001 C CNN
F 3 "~" H 8950 1100 50  0001 C CNN
	1    8950 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DC9C9F9
P 9250 1100
F 0 "R10" H 9320 1146 50  0000 L CNN
F 1 "500" H 9320 1055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 9180 1100 50  0001 C CNN
F 3 "~" H 9250 1100 50  0001 C CNN
	1    9250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DC9C9FF
P 8400 2000
F 0 "R4" V 8193 2000 50  0000 C CNN
F 1 "200" V 8284 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 8330 2000 50  0001 C CNN
F 3 "~" H 8400 2000 50  0001 C CNN
	1    8400 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DC9CA05
P 9250 2250
F 0 "#PWR0105" H 9250 2000 50  0001 C CNN
F 1 "GND" H 9255 2077 50  0000 C CNN
F 2 "" H 9250 2250 50  0001 C CNN
F 3 "" H 9250 2250 50  0001 C CNN
	1    9250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2250 9250 2250
Connection ~ 9250 2250
Text GLabel 9100 850  1    50   Input ~ 0
12V
Wire Wire Line
	9250 2250 9550 2250
Wire Wire Line
	8950 1250 8950 1700
Wire Wire Line
	8950 1800 8950 1700
Connection ~ 8950 1700
Wire Wire Line
	9250 1500 9250 1400
Wire Wire Line
	9250 1250 9250 1400
Connection ~ 9250 1400
Wire Wire Line
	8650 2000 8550 2000
Wire Wire Line
	8950 2200 8950 2250
Wire Wire Line
	9250 1900 9250 2250
Wire Wire Line
	9550 1600 9550 2250
Connection ~ 9550 2250
Wire Wire Line
	9550 2250 9800 2250
Wire Wire Line
	8950 950  9100 950 
Wire Wire Line
	9100 950  9100 850 
Wire Wire Line
	9250 950  9100 950 
Connection ~ 9100 950 
Text GLabel 9850 950  2    50   Input ~ 0
OUT4+
Text GLabel 9850 1200 2    50   Input ~ 0
OUT4-
Text GLabel 8100 2000 0    50   Input ~ 0
CTRL4
Wire Wire Line
	8250 2000 8100 2000
Wire Wire Line
	9550 1200 9700 1200
Wire Wire Line
	9850 950  9700 950 
Connection ~ 9250 950 
$Comp
L Transistor_FET:IRF540N Q3
U 1 1 5DC9E058
P 6200 5150
F 0 "Q3" H 6405 5196 50  0000 L CNN
F 1 "IRF540N" H 6405 5105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6450 5075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 6200 5150 50  0001 L CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5DC9E05E
P 5600 5750
F 0 "Q1" H 5791 5796 50  0000 L CNN
F 1 "2N3904" H 5791 5705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 5800 5675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5600 5750 50  0001 L CNN
	1    5600 5750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5DC9E064
P 5900 5450
F 0 "Q2" H 6091 5496 50  0000 L CNN
F 1 "2N3904" H 6091 5405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 6100 5375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5900 5450 50  0001 L CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DC9E06A
P 5700 4850
F 0 "R2" H 5770 4896 50  0000 L CNN
F 1 "1K" H 5770 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 5630 4850 50  0001 C CNN
F 3 "~" H 5700 4850 50  0001 C CNN
	1    5700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DC9E070
P 6000 4850
F 0 "R3" H 6070 4896 50  0000 L CNN
F 1 "500" H 6070 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 5930 4850 50  0001 C CNN
F 3 "~" H 6000 4850 50  0001 C CNN
	1    6000 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DC9E076
P 5150 5750
F 0 "R1" V 4943 5750 50  0000 C CNN
F 1 "200" V 5034 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0516_L15.5mm_D5.0mm_P20.32mm_Horizontal" V 5080 5750 50  0001 C CNN
F 3 "~" H 5150 5750 50  0001 C CNN
	1    5150 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DC9E07C
P 6000 6000
F 0 "#PWR0106" H 6000 5750 50  0001 C CNN
F 1 "GND" H 6005 5827 50  0000 C CNN
F 2 "" H 6000 6000 50  0001 C CNN
F 3 "" H 6000 6000 50  0001 C CNN
	1    6000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6000 6000 6000
Connection ~ 6000 6000
Text GLabel 5850 4600 1    50   Input ~ 0
12V
Wire Wire Line
	6000 6000 6300 6000
Wire Wire Line
	5700 5000 5700 5450
Wire Wire Line
	5700 5550 5700 5450
Connection ~ 5700 5450
Wire Wire Line
	6000 5250 6000 5150
Wire Wire Line
	6000 5000 6000 5150
Connection ~ 6000 5150
Wire Wire Line
	5400 5750 5300 5750
Wire Wire Line
	5700 5950 5700 6000
Wire Wire Line
	6000 5650 6000 6000
Wire Wire Line
	6300 5350 6300 6000
Connection ~ 6300 6000
Wire Wire Line
	6300 6000 6550 6000
Wire Wire Line
	5700 4700 5850 4700
Wire Wire Line
	5850 4700 5850 4600
Wire Wire Line
	6000 4700 5850 4700
Connection ~ 5850 4700
Text GLabel 6600 4700 2    50   Input ~ 0
OUT1+
Text GLabel 6600 4950 2    50   Input ~ 0
OUT1-
Text GLabel 4850 5750 0    50   Input ~ 0
CTRL1
Wire Wire Line
	5000 5750 4850 5750
Wire Wire Line
	6300 4950 6500 4950
Wire Wire Line
	6600 4700 6550 4700
Connection ~ 6000 4700
Text GLabel 5200 2400 2    50   Input ~ 0
CTRL1
Wire Wire Line
	4950 2400 5200 2400
Text GLabel 5200 2300 2    50   Input ~ 0
CTRL2
Text GLabel 5200 2200 2    50   Input ~ 0
CTRL3
Text GLabel 5200 2100 2    50   Input ~ 0
CTRL4
Wire Wire Line
	5200 2300 4950 2300
Wire Wire Line
	4950 2200 5200 2200
Wire Wire Line
	5200 2100 4950 2100
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5DCA725E
P 10850 4700
F 0 "J5" H 10930 4692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10930 4601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 10850 4700 50  0001 C CNN
F 3 "~" H 10850 4700 50  0001 C CNN
	1    10850 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5DCA7356
P 10800 2800
F 0 "J4" H 10880 2792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10880 2701 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 10800 2800 50  0001 C CNN
F 3 "~" H 10800 2800 50  0001 C CNN
	1    10800 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5DCA73E2
P 10750 1000
F 0 "J3" H 10830 992 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10830 901 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 10750 1000 50  0001 C CNN
F 3 "~" H 10750 1000 50  0001 C CNN
	1    10750 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5DCA7468
P 7550 4800
F 0 "J1" H 7630 4792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7630 4701 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7550 4800 50  0001 C CNN
F 3 "~" H 7550 4800 50  0001 C CNN
	1    7550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4800 6550 4800
Wire Wire Line
	6550 4800 6550 4700
Connection ~ 6550 4700
Wire Wire Line
	6550 4700 6000 4700
Wire Wire Line
	7350 4900 6500 4900
Wire Wire Line
	6500 4900 6500 4950
Connection ~ 6500 4950
Wire Wire Line
	6500 4950 6600 4950
Wire Wire Line
	10650 4700 9800 4700
Wire Wire Line
	9800 4700 9800 4600
Connection ~ 9800 4600
Wire Wire Line
	9800 4600 9250 4600
Wire Wire Line
	10650 4800 9750 4800
Wire Wire Line
	9750 4800 9750 4850
Connection ~ 9750 4850
Wire Wire Line
	9750 4850 9850 4850
Wire Wire Line
	10600 2800 9750 2800
Wire Wire Line
	9750 2800 9750 2700
Connection ~ 9750 2700
Wire Wire Line
	9750 2700 9250 2700
Wire Wire Line
	10600 2900 9750 2900
Wire Wire Line
	9750 2900 9750 2950
Connection ~ 9750 2950
Wire Wire Line
	9750 2950 9850 2950
Wire Wire Line
	10550 1000 9700 1000
Wire Wire Line
	9700 1000 9700 950 
Connection ~ 9700 950 
Wire Wire Line
	9700 950  9250 950 
Wire Wire Line
	10550 1100 9700 1100
Wire Wire Line
	9700 1100 9700 1200
Connection ~ 9700 1200
Wire Wire Line
	9700 1200 9850 1200
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5DCBC37C
P 7650 650
F 0 "J2" V 7616 462 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 7525 462 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7650 650 50  0001 C CNN
F 3 "~" H 7650 650 50  0001 C CNN
	1    7650 650 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 950  7650 950 
Wire Wire Line
	7650 950  7650 850 
Connection ~ 8950 950 
$Comp
L power:GND #PWR0107
U 1 1 5DCBF49D
P 7750 1250
F 0 "#PWR0107" H 7750 1000 50  0001 C CNN
F 1 "GND" H 7755 1077 50  0000 C CNN
F 2 "" H 7750 1250 50  0001 C CNN
F 3 "" H 7750 1250 50  0001 C CNN
	1    7750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 850  7750 1250
$EndSCHEMATC
