EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 16
Title "Y Ddraig Fawr"
Date ""
Rev ""
Comp "Stephen Moody"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_A J1601
U 1 1 61321BB1
P 8050 3450
F 0 "J1601" H 7820 3439 50  0000 R CNN
F 1 "USB_A" H 7820 3348 50  0000 R CNN
F 2 "Ddraig:UP2-AH-1-TH" H 8200 3400 50  0001 C CNN
F 3 " ~" H 8200 3400 50  0001 C CNN
	1    8050 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1603
U 1 1 613235DB
P 6100 3450
F 0 "R1603" V 6000 3500 50  0000 C CNN
F 1 "24R" V 6000 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 3450 50  0001 C CNN
F 3 "~" H 6100 3450 50  0001 C CNN
	1    6100 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R1604
U 1 1 61323FFD
P 6100 3550
F 0 "R1604" V 6200 3600 50  0000 C CNN
F 1 "24R" V 6200 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 3550 50  0001 C CNN
F 3 "~" H 6100 3550 50  0001 C CNN
	1    6100 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3850 8050 3900
Wire Wire Line
	8050 3900 8100 3900
Wire Wire Line
	8150 3900 8150 3850
Wire Wire Line
	8100 3950 8100 3900
Connection ~ 8100 3900
Wire Wire Line
	8100 3900 8150 3900
Wire Wire Line
	6250 3550 6600 3550
Wire Wire Line
	6250 3450 6900 3450
Wire Wire Line
	7750 3250 6950 3250
$Comp
L Ddraig:SL811HST-AXC U1601
U 1 1 612FBA5F
P 4750 4250
F 0 "U1601" H 4450 5450 50  0000 C CNN
F 1 "SL811HST-AXC" H 5250 5450 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 4750 4350 50  0001 C CNN
F 3 "" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
Text HLabel 3650 3150 0    50   BiDi ~ 0
D[0..31]
Entry Wire Line
	3750 3300 3850 3400
Entry Wire Line
	3750 3400 3850 3500
Entry Wire Line
	3750 3500 3850 3600
Entry Wire Line
	3750 3600 3850 3700
Entry Wire Line
	3750 3700 3850 3800
Entry Wire Line
	3750 3800 3850 3900
Entry Wire Line
	3750 3900 3850 4000
Entry Wire Line
	3750 4000 3850 4100
Wire Bus Line
	3750 3150 3650 3150
Wire Wire Line
	4250 3400 3850 3400
Wire Wire Line
	4250 3500 3850 3500
Wire Wire Line
	4250 3600 3850 3600
Wire Wire Line
	4250 3700 3850 3700
Wire Wire Line
	4250 3800 3850 3800
Wire Wire Line
	4250 3900 3850 3900
Wire Wire Line
	4250 4000 3850 4000
Wire Wire Line
	4250 4100 3850 4100
Text Label 4000 3400 0    50   ~ 0
D24
Text Label 4000 3500 0    50   ~ 0
D25
Text Label 4000 3600 0    50   ~ 0
D26
Text Label 4000 3700 0    50   ~ 0
D27
Text Label 4000 3800 0    50   ~ 0
D28
Text Label 4000 3900 0    50   ~ 0
D29
Text Label 4000 4000 0    50   ~ 0
D30
Text Label 4000 4100 0    50   ~ 0
D31
Text HLabel 3050 4100 0    50   BiDi ~ 0
A[0..31]
Entry Wire Line
	3150 4150 3250 4250
Wire Wire Line
	4250 4250 3250 4250
Wire Bus Line
	3150 4150 3150 4100
Wire Bus Line
	3150 4100 3050 4100
Text Label 4000 4250 0    50   ~ 0
A1
Wire Wire Line
	5250 3450 5950 3450
Wire Wire Line
	5950 3550 5250 3550
$Comp
L Device:Crystal Y1601
U 1 1 613221FC
P 6400 5900
F 0 "Y1601" H 6400 6168 50  0000 C CNN
F 1 "12Mhz" H 6400 6077 50  0000 C CNN
F 2 "Crystal:Crystal_HC50_Vertical" H 6400 5900 50  0001 C CNN
F 3 "~" H 6400 5900 50  0001 C CNN
	1    6400 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1601
U 1 1 61322B20
P 6150 6200
F 0 "C1601" H 6265 6246 50  0000 L CNN
F 1 "22pF" H 6265 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6188 6050 50  0001 C CNN
F 3 "~" H 6150 6200 50  0001 C CNN
	1    6150 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1602
U 1 1 61323185
P 6650 6200
F 0 "C1602" H 6765 6246 50  0000 L CNN
F 1 "22pF" H 6765 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6688 6050 50  0001 C CNN
F 3 "~" H 6650 6200 50  0001 C CNN
	1    6650 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5900 6150 5900
Wire Wire Line
	6150 5900 6150 6050
Wire Wire Line
	6550 5900 6650 5900
Wire Wire Line
	6650 5900 6650 6050
$Comp
L power:GND #PWR01608
U 1 1 61324225
P 6150 6400
F 0 "#PWR01608" H 6150 6150 50  0001 C CNN
F 1 "GND" H 6155 6227 50  0000 C CNN
F 2 "" H 6150 6400 50  0001 C CNN
F 3 "" H 6150 6400 50  0001 C CNN
	1    6150 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01611
U 1 1 613245B5
P 6650 6400
F 0 "#PWR01611" H 6650 6150 50  0001 C CNN
F 1 "GND" H 6655 6227 50  0000 C CNN
F 2 "" H 6650 6400 50  0001 C CNN
F 3 "" H 6650 6400 50  0001 C CNN
	1    6650 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01602
U 1 1 613247BA
P 4750 5650
F 0 "#PWR01602" H 4750 5400 50  0001 C CNN
F 1 "GND" H 4755 5477 50  0000 C CNN
F 2 "" H 4750 5650 50  0001 C CNN
F 3 "" H 4750 5650 50  0001 C CNN
	1    4750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5550 4650 5600
Wire Wire Line
	4650 5600 4750 5600
Wire Wire Line
	4850 5600 4850 5550
Wire Wire Line
	4750 5550 4750 5600
Connection ~ 4750 5600
Wire Wire Line
	4750 5600 4850 5600
Wire Wire Line
	4750 5650 4750 5600
Wire Wire Line
	6150 6400 6150 6350
Wire Wire Line
	6650 6400 6650 6350
$Comp
L Device:R R1605
U 1 1 613284F5
P 6400 5500
F 0 "R1605" V 6193 5500 50  0000 C CNN
F 1 "1M" V 6284 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6330 5500 50  0001 C CNN
F 3 "~" H 6400 5500 50  0001 C CNN
	1    6400 5500
	0    1    1    0   
$EndComp
Connection ~ 6150 5900
Wire Wire Line
	5250 5050 6650 5050
Wire Wire Line
	6650 5050 6650 5500
Connection ~ 6650 5900
Wire Wire Line
	6550 5500 6650 5500
Connection ~ 6650 5500
Wire Wire Line
	6650 5500 6650 5900
Wire Wire Line
	6250 5500 6150 5500
$Comp
L Device:R R1602
U 1 1 6132FC73
P 5900 5500
F 0 "R1602" V 5693 5500 50  0000 C CNN
F 1 "100R" V 5784 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 5500 50  0001 C CNN
F 3 "~" H 5900 5500 50  0001 C CNN
	1    5900 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5900 6150 5500
Wire Wire Line
	6150 5500 6050 5500
Connection ~ 6150 5500
Wire Wire Line
	5250 5150 5650 5150
Wire Wire Line
	5650 5150 5650 5500
Wire Wire Line
	5650 5500 5750 5500
$Comp
L Device:R R1606
U 1 1 613345B2
P 6600 3950
F 0 "R1606" H 6670 3996 50  0000 L CNN
F 1 "15K" H 6670 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 3950 50  0001 C CNN
F 3 "~" H 6600 3950 50  0001 C CNN
	1    6600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1607
U 1 1 6133473A
P 6900 3950
F 0 "R1607" H 6970 3996 50  0000 L CNN
F 1 "15K" H 6970 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 3950 50  0001 C CNN
F 3 "~" H 6900 3950 50  0001 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01613
U 1 1 6132B336
P 8100 3950
F 0 "#PWR01613" H 8100 3700 50  0001 C CNN
F 1 "GND" H 8105 3777 50  0000 C CNN
F 2 "" H 8100 3950 50  0001 C CNN
F 3 "" H 8100 3950 50  0001 C CNN
	1    8100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01610
U 1 1 6133530D
P 6600 4200
F 0 "#PWR01610" H 6600 3950 50  0001 C CNN
F 1 "GND" H 6605 4027 50  0000 C CNN
F 2 "" H 6600 4200 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01612
U 1 1 61335716
P 6900 4200
F 0 "#PWR01612" H 6900 3950 50  0001 C CNN
F 1 "GND" H 6905 4027 50  0000 C CNN
F 2 "" H 6900 4200 50  0001 C CNN
F 3 "" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3800 6600 3550
Connection ~ 6600 3550
Wire Wire Line
	6600 3550 7750 3550
Wire Wire Line
	6900 3800 6900 3450
Connection ~ 6900 3450
Wire Wire Line
	6900 3450 7750 3450
Wire Wire Line
	6600 4100 6600 4200
Wire Wire Line
	6900 4200 6900 4100
$Comp
L power:+3V3 #PWR01603
U 1 1 61338604
P 4800 2800
F 0 "#PWR01603" H 4800 2650 50  0001 C CNN
F 1 "+3V3" H 4815 2973 50  0000 C CNN
F 2 "" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2950 4900 2900
Wire Wire Line
	4900 2900 4800 2900
Wire Wire Line
	4650 2900 4650 2950
Wire Wire Line
	4800 2950 4800 2900
Connection ~ 4800 2900
Wire Wire Line
	4800 2900 4650 2900
Wire Wire Line
	4800 2800 4800 2900
Text HLabel 3800 4650 0    50   Input ~ 0
~CS_USB
Text HLabel 3800 4550 0    50   Input ~ 0
RD~WR
Text HLabel 3800 4450 0    50   Input ~ 0
~RD~WR
Text HLabel 3800 4950 0    50   Input ~ 0
~RESET
Text HLabel 3800 5150 0    50   Output ~ 0
INT_USB
$Comp
L Device:R R1601
U 1 1 6133EE24
P 4050 5350
F 0 "R1601" H 4120 5396 50  0000 L CNN
F 1 "15K" H 4120 5305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3980 5350 50  0001 C CNN
F 3 "~" H 4050 5350 50  0001 C CNN
	1    4050 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01601
U 1 1 6133EE2A
P 4050 5550
F 0 "#PWR01601" H 4050 5300 50  0001 C CNN
F 1 "GND" H 4055 5377 50  0000 C CNN
F 2 "" H 4050 5550 50  0001 C CNN
F 3 "" H 4050 5550 50  0001 C CNN
	1    4050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5500 4050 5550
Wire Wire Line
	3800 5150 4050 5150
Wire Wire Line
	4050 5200 4050 5150
Connection ~ 4050 5150
Wire Wire Line
	4050 5150 4250 5150
Wire Wire Line
	3800 4950 4250 4950
Wire Wire Line
	4250 4650 3800 4650
Wire Wire Line
	3800 4550 4250 4550
Wire Wire Line
	4250 4450 3800 4450
$Comp
L power:+3V3 #PWR01604
U 1 1 6134A1AC
P 5350 4150
F 0 "#PWR01604" H 5350 4000 50  0001 C CNN
F 1 "+3V3" H 5365 4323 50  0000 C CNN
F 2 "" H 5350 4150 50  0001 C CNN
F 3 "" H 5350 4150 50  0001 C CNN
	1    5350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4250 5350 4250
Wire Wire Line
	5350 4250 5350 4150
Wire Wire Line
	5250 4550 5350 4550
Wire Wire Line
	5350 4550 5350 4250
$Comp
L power:GND #PWR01605
U 1 1 6134FFB6
P 5350 5300
F 0 "#PWR01605" H 5350 5050 50  0001 C CNN
F 1 "GND" H 5355 5127 50  0000 C CNN
F 2 "" H 5350 5300 50  0001 C CNN
F 3 "" H 5350 5300 50  0001 C CNN
	1    5350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5300 5350 4750
Wire Wire Line
	5350 4750 5250 4750
$Comp
L Ddraig:RYC8220-2M U1602
U 1 1 6135A5F5
P 6350 1850
F 0 "U1602" H 6350 2265 50  0000 C CNN
F 1 "RYC8220-2M" H 6350 2174 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 1850 50  0001 C CNN
F 3 "" H 6300 1850 50  0001 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
NoConn ~ 6750 1800
Wire Wire Line
	6750 1700 6950 1700
Wire Wire Line
	6950 1700 6950 3250
$Comp
L power:+5V #PWR01607
U 1 1 613657B9
P 5850 1600
F 0 "#PWR01607" H 5850 1450 50  0001 C CNN
F 1 "+5V" H 5865 1773 50  0000 C CNN
F 2 "" H 5850 1600 50  0001 C CNN
F 3 "" H 5850 1600 50  0001 C CNN
	1    5850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1700 5850 1700
Wire Wire Line
	5850 1700 5850 1600
$Comp
L power:GND #PWR01609
U 1 1 61367948
P 6350 2800
F 0 "#PWR01609" H 6350 2550 50  0001 C CNN
F 1 "GND" H 6355 2627 50  0000 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01606
U 1 1 61367CD1
P 5800 2550
F 0 "#PWR01606" H 5800 2300 50  0001 C CNN
F 1 "GND" H 5805 2377 50  0000 C CNN
F 2 "" H 5800 2550 50  0001 C CNN
F 3 "" H 5800 2550 50  0001 C CNN
	1    5800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2550 5800 2000
Wire Wire Line
	5800 2000 5950 2000
Text HLabel 5600 1900 0    50   Input ~ 0
~USB_ENABLE
Text HLabel 5600 2200 0    50   Output ~ 0
~USB_OVERCUR
NoConn ~ 5950 2300
Wire Wire Line
	5950 2200 5600 2200
Wire Wire Line
	5600 1900 5950 1900
Wire Wire Line
	6350 2750 6350 2800
Connection ~ 5350 4250
NoConn ~ 5250 4450
Wire Bus Line
	3750 3150 3750 4000
$EndSCHEMATC
