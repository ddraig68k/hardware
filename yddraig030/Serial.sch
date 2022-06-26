EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 16
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
L Device:R R?
U 1 1 61360CF7
P 3100 7200
AR Path="/6139AAF1/612A9B8D/61360CF7" Ref="R?"  Part="1" 
AR Path="/6139AAF1/61360CF7" Ref="R1403"  Part="1" 
F 0 "R1403" H 3170 7246 50  0000 L CNN
F 1 "150R" H 3170 7155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 7200 50  0001 C CNN
F 3 "~" H 3100 7200 50  0001 C CNN
	1    3100 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61360CFD
P 3100 6850
AR Path="/6139AAF1/612A9B8D/61360CFD" Ref="D?"  Part="1" 
AR Path="/6139AAF1/61360CFD" Ref="D1401"  Part="1" 
F 0 "D1401" H 3093 7067 50  0000 C CNN
F 1 "Green" H 3093 6976 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 3100 6850 50  0001 C CNN
F 3 "~" H 3100 6850 50  0001 C CNN
	1    3100 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PNP_EBC Q?
U 1 1 61360D03
P 3000 6450
AR Path="/6139AAF1/612A9B8D/61360D03" Ref="Q?"  Part="1" 
AR Path="/6139AAF1/61360D03" Ref="Q1401"  Part="1" 
F 0 "Q1401" H 3190 6404 50  0000 L CNN
F 1 "2N4403" H 3190 6495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 3200 6550 50  0001 C CNN
F 3 "~" H 3000 6450 50  0001 C CNN
	1    3000 6450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61360D09
P 3100 7400
AR Path="/6139AAF1/612A9B8D/61360D09" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/61360D09" Ref="#PWR01405"  Part="1" 
F 0 "#PWR01405" H 3100 7150 50  0001 C CNN
F 1 "GND" H 3105 7227 50  0000 C CNN
F 2 "" H 3100 7400 50  0001 C CNN
F 3 "" H 3100 7400 50  0001 C CNN
	1    3100 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61360D0F
P 2600 6450
AR Path="/6139AAF1/612A9B8D/61360D0F" Ref="R?"  Part="1" 
AR Path="/6139AAF1/61360D0F" Ref="R1402"  Part="1" 
F 0 "R1402" H 2670 6496 50  0000 L CNN
F 1 "150R" H 2670 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 6450 50  0001 C CNN
F 3 "~" H 2600 6450 50  0001 C CNN
	1    2600 6450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61360D15
P 3100 6200
AR Path="/6139AAF1/612A9B8D/61360D15" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/61360D15" Ref="#PWR01404"  Part="1" 
F 0 "#PWR01404" H 3100 6050 50  0001 C CNN
F 1 "+5V" H 3115 6373 50  0000 C CNN
F 2 "" H 3100 6200 50  0001 C CNN
F 3 "" H 3100 6200 50  0001 C CNN
	1    3100 6200
	1    0    0    -1  
$EndComp
Text Label 2400 6450 2    50   ~ 0
TXDA
Wire Wire Line
	2400 6450 2450 6450
Wire Wire Line
	2750 6450 2800 6450
Wire Wire Line
	3100 6250 3100 6200
Wire Wire Line
	3100 6650 3100 6700
Wire Wire Line
	3100 7000 3100 7050
Wire Wire Line
	3100 7350 3100 7400
$Comp
L Device:R R?
U 1 1 61360D22
P 4750 7200
AR Path="/6139AAF1/612A9B8D/61360D22" Ref="R?"  Part="1" 
AR Path="/6139AAF1/61360D22" Ref="R1405"  Part="1" 
F 0 "R1405" H 4820 7246 50  0000 L CNN
F 1 "150R" H 4820 7155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 7200 50  0001 C CNN
F 3 "~" H 4750 7200 50  0001 C CNN
	1    4750 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61360D28
P 4750 6850
AR Path="/6139AAF1/612A9B8D/61360D28" Ref="D?"  Part="1" 
AR Path="/6139AAF1/61360D28" Ref="D1402"  Part="1" 
F 0 "D1402" H 4743 7067 50  0000 C CNN
F 1 "Green" H 4743 6976 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4750 6850 50  0001 C CNN
F 3 "~" H 4750 6850 50  0001 C CNN
	1    4750 6850
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PNP_EBC Q?
U 1 1 61360D2E
P 4650 6450
AR Path="/6139AAF1/612A9B8D/61360D2E" Ref="Q?"  Part="1" 
AR Path="/6139AAF1/61360D2E" Ref="Q1402"  Part="1" 
F 0 "Q1402" H 4840 6404 50  0000 L CNN
F 1 "2N4403" H 4840 6495 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4850 6550 50  0001 C CNN
F 3 "~" H 4650 6450 50  0001 C CNN
	1    4650 6450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61360D34
P 4750 7400
AR Path="/6139AAF1/612A9B8D/61360D34" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/61360D34" Ref="#PWR01409"  Part="1" 
F 0 "#PWR01409" H 4750 7150 50  0001 C CNN
F 1 "GND" H 4755 7227 50  0000 C CNN
F 2 "" H 4750 7400 50  0001 C CNN
F 3 "" H 4750 7400 50  0001 C CNN
	1    4750 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61360D3A
P 4250 6450
AR Path="/6139AAF1/612A9B8D/61360D3A" Ref="R?"  Part="1" 
AR Path="/6139AAF1/61360D3A" Ref="R1404"  Part="1" 
F 0 "R1404" H 4320 6496 50  0000 L CNN
F 1 "150R" H 4320 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 6450 50  0001 C CNN
F 3 "~" H 4250 6450 50  0001 C CNN
	1    4250 6450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61360D40
P 4750 6200
AR Path="/6139AAF1/612A9B8D/61360D40" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/61360D40" Ref="#PWR01408"  Part="1" 
F 0 "#PWR01408" H 4750 6050 50  0001 C CNN
F 1 "+5V" H 4765 6373 50  0000 C CNN
F 2 "" H 4750 6200 50  0001 C CNN
F 3 "" H 4750 6200 50  0001 C CNN
	1    4750 6200
	1    0    0    -1  
$EndComp
Text Label 4050 6450 2    50   ~ 0
RXDA
Wire Wire Line
	4050 6450 4100 6450
Wire Wire Line
	4400 6450 4450 6450
Wire Wire Line
	4750 6250 4750 6200
Wire Wire Line
	4750 6650 4750 6700
Wire Wire Line
	4750 7000 4750 7050
Wire Wire Line
	4750 7350 4750 7400
$Comp
L Device:C C?
U 1 1 613A3EBF
P 1500 2050
AR Path="/6139AAF1/612A9B8D/613A3EBF" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3EBF" Ref="C1401"  Part="1" 
F 0 "C1401" H 1615 2096 50  0000 L CNN
F 1 "10pF" H 1615 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1538 1900 50  0001 C CNN
F 3 "~" H 1500 2050 50  0001 C CNN
	1    1500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 613A3EC5
P 1750 1750
AR Path="/6139AAF1/612A9B8D/613A3EC5" Ref="Y?"  Part="1" 
AR Path="/6139AAF1/613A3EC5" Ref="Y1401"  Part="1" 
F 0 "Y1401" H 1750 2018 50  0000 C CNN
F 1 "3.6864MHz" H 1750 1927 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 1750 1750 50  0001 C CNN
F 3 "~" H 1750 1750 50  0001 C CNN
	1    1750 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:DB9_Male_MountingHoles J?
U 1 1 613A3ECB
P 10400 2500
AR Path="/6139AAF1/612A9B8D/613A3ECB" Ref="J?"  Part="1" 
AR Path="/6139AAF1/613A3ECB" Ref="J1401"  Part="1" 
F 0 "J1401" H 10580 2502 50  0000 L CNN
F 1 "Serial1" H 10580 2411 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 10400 2500 50  0001 C CNN
F 3 " ~" H 10400 2500 50  0001 C CNN
	1    10400 2500
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX202 U?
U 1 1 613A3ED1
P 8350 2100
AR Path="/6139AAF1/612A9B8D/613A3ED1" Ref="U?"  Part="1" 
AR Path="/6139AAF1/613A3ED1" Ref="U1402"  Part="1" 
F 0 "U1402" H 8700 3200 50  0000 C CNN
F 1 "MAX202" H 8700 1000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8400 1050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max202.pdf" H 8350 2200 50  0001 C CNN
	1    8350 2100
	1    0    0    -1  
$EndComp
$Comp
L Interface:68681 U?
U 1 1 613A3ED7
P 3850 4150
AR Path="/6139AAF1/612A9B8D/613A3ED7" Ref="U?"  Part="1" 
AR Path="/6139AAF1/613A3ED7" Ref="U1401"  Part="1" 
F 0 "U1401" H 4450 5550 50  0000 C CNN
F 1 "68681" H 4400 2850 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 3850 4150 50  0001 C CNN
F 3 "" H 3850 4150 50  0001 C CNN
	1    3850 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613A3EDD
P 1450 4600
AR Path="/6139AAF1/612A9B8D/613A3EDD" Ref="R?"  Part="1" 
AR Path="/6139AAF1/613A3EDD" Ref="R1401"  Part="1" 
F 0 "R1401" H 1520 4646 50  0000 L CNN
F 1 "4K7" H 1520 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4600 50  0001 C CNN
F 3 "~" H 1450 4600 50  0001 C CNN
	1    1450 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613A3EE3
P 8350 850
AR Path="/6139AAF1/612A9B8D/613A3EE3" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3EE3" Ref="#PWR01410"  Part="1" 
F 0 "#PWR01410" H 8350 700 50  0001 C CNN
F 1 "+5V" H 8365 1023 50  0000 C CNN
F 2 "" H 8350 850 50  0001 C CNN
F 3 "" H 8350 850 50  0001 C CNN
	1    8350 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A3EE9
P 8350 3350
AR Path="/6139AAF1/612A9B8D/613A3EE9" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3EE9" Ref="#PWR01411"  Part="1" 
F 0 "#PWR01411" H 8350 3100 50  0001 C CNN
F 1 "GND" H 8355 3177 50  0000 C CNN
F 2 "" H 8350 3350 50  0001 C CNN
F 3 "" H 8350 3350 50  0001 C CNN
	1    8350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3350 8350 3300
Wire Wire Line
	8350 850  8350 900 
$Comp
L Device:C C?
U 1 1 613A3EF1
P 9350 1350
AR Path="/6139AAF1/612A9B8D/613A3EF1" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3EF1" Ref="C1407"  Part="1" 
F 0 "C1407" H 9465 1396 50  0000 L CNN
F 1 "100nF" H 9465 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9388 1200 50  0001 C CNN
F 3 "~" H 9350 1350 50  0001 C CNN
	1    9350 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 613A3EF7
P 7350 1350
AR Path="/6139AAF1/612A9B8D/613A3EF7" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3EF7" Ref="C1403"  Part="1" 
F 0 "C1403" H 7465 1396 50  0000 L CNN
F 1 "100nF" H 7465 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7388 1200 50  0001 C CNN
F 3 "~" H 7350 1350 50  0001 C CNN
	1    7350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1200 9150 1200
Wire Wire Line
	9150 1500 9350 1500
Wire Wire Line
	7550 1200 7350 1200
Wire Wire Line
	7350 1500 7550 1500
$Comp
L Device:C C?
U 1 1 613A3F01
P 9300 3100
AR Path="/6139AAF1/612A9B8D/613A3F01" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3F01" Ref="C1405"  Part="1" 
F 0 "C1405" H 9415 3146 50  0000 L CNN
F 1 "100nF" H 9415 3055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9338 2950 50  0001 C CNN
F 3 "~" H 9300 3100 50  0001 C CNN
	1    9300 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 613A3F07
P 9850 1350
AR Path="/6139AAF1/612A9B8D/613A3F07" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3F07" Ref="C1409"  Part="1" 
F 0 "C1409" H 9965 1396 50  0000 L CNN
F 1 "100nF" H 9965 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9888 1200 50  0001 C CNN
F 3 "~" H 9850 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613A3F0D
P 9850 900
AR Path="/6139AAF1/612A9B8D/613A3F0D" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F0D" Ref="#PWR01416"  Part="1" 
F 0 "#PWR01416" H 9850 750 50  0001 C CNN
F 1 "+5V" H 9865 1073 50  0000 C CNN
F 2 "" H 9850 900 50  0001 C CNN
F 3 "" H 9850 900 50  0001 C CNN
	1    9850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 900  9850 1200
Wire Wire Line
	9150 1700 9850 1700
Wire Wire Line
	9850 1700 9850 1500
$Comp
L power:GND #PWR?
U 1 1 613A3F16
P 9300 3350
AR Path="/6139AAF1/612A9B8D/613A3F16" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F16" Ref="#PWR01414"  Part="1" 
F 0 "#PWR01414" H 9300 3100 50  0001 C CNN
F 1 "GND" H 9305 3177 50  0000 C CNN
F 2 "" H 9300 3350 50  0001 C CNN
F 3 "" H 9300 3350 50  0001 C CNN
	1    9300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2000 9300 2950
Wire Wire Line
	9150 2000 9300 2000
Wire Wire Line
	9300 3250 9300 3350
Entry Wire Line
	2200 3150 2300 3250
Entry Wire Line
	2200 3250 2300 3350
Entry Wire Line
	2200 3350 2300 3450
Entry Wire Line
	2200 3450 2300 3550
Entry Wire Line
	2200 3550 2300 3650
Entry Wire Line
	2200 3650 2300 3750
Entry Wire Line
	2200 3750 2300 3850
Entry Wire Line
	2200 3850 2300 3950
Entry Wire Line
	2200 4050 2300 4150
Entry Wire Line
	2200 4150 2300 4250
Entry Wire Line
	2200 4250 2300 4350
Entry Wire Line
	2200 4350 2300 4450
Wire Wire Line
	2300 4450 2850 4450
Wire Wire Line
	2850 4350 2300 4350
Wire Wire Line
	2300 4250 2850 4250
Wire Wire Line
	2850 4150 2300 4150
Wire Wire Line
	2850 3950 2300 3950
Wire Wire Line
	2300 3850 2850 3850
Wire Wire Line
	2850 3750 2300 3750
Wire Wire Line
	2300 3650 2850 3650
Wire Wire Line
	2850 3550 2300 3550
Wire Wire Line
	2300 3450 2850 3450
Wire Wire Line
	2850 3350 2300 3350
Wire Wire Line
	2850 3250 2300 3250
Wire Bus Line
	2200 3050 1900 3050
Wire Bus Line
	1900 4000 2200 4000
Text Label 2550 4150 0    50   ~ 0
A1
Text Label 2550 4250 0    50   ~ 0
A2
Text Label 2550 4350 0    50   ~ 0
A3
Text Label 2550 4450 0    50   ~ 0
A4
$Comp
L Device:C C?
U 1 1 613A3F45
P 2050 2050
AR Path="/6139AAF1/612A9B8D/613A3F45" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3F45" Ref="C1402"  Part="1" 
F 0 "C1402" H 2165 2096 50  0000 L CNN
F 1 "5pF" H 2165 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2088 1900 50  0001 C CNN
F 3 "~" H 2050 2050 50  0001 C CNN
	1    2050 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613A3F4B
P 3850 2600
AR Path="/6139AAF1/612A9B8D/613A3F4B" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F4B" Ref="#PWR01406"  Part="1" 
F 0 "#PWR01406" H 3850 2450 50  0001 C CNN
F 1 "+5V" H 3865 2773 50  0000 C CNN
F 2 "" H 3850 2600 50  0001 C CNN
F 3 "" H 3850 2600 50  0001 C CNN
	1    3850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A3F51
P 2050 2250
AR Path="/6139AAF1/612A9B8D/613A3F51" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F51" Ref="#PWR01403"  Part="1" 
F 0 "#PWR01403" H 2050 2000 50  0001 C CNN
F 1 "GND" H 2055 2077 50  0000 C CNN
F 2 "" H 2050 2250 50  0001 C CNN
F 3 "" H 2050 2250 50  0001 C CNN
	1    2050 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A3F57
P 1500 2250
AR Path="/6139AAF1/612A9B8D/613A3F57" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F57" Ref="#PWR01402"  Part="1" 
F 0 "#PWR01402" H 1500 2000 50  0001 C CNN
F 1 "GND" H 1505 2077 50  0000 C CNN
F 2 "" H 1500 2250 50  0001 C CNN
F 3 "" H 1500 2250 50  0001 C CNN
	1    1500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1400 2500 1400
Wire Wire Line
	2500 1400 2500 3050
Wire Wire Line
	2500 3050 2850 3050
Wire Wire Line
	2600 1750 2600 2950
Wire Wire Line
	2600 2950 2850 2950
Wire Wire Line
	1900 1750 2050 1750
Wire Wire Line
	1600 1750 1500 1750
Wire Wire Line
	1500 1400 1500 1750
Connection ~ 1500 1750
Wire Wire Line
	1500 1750 1500 1900
Wire Wire Line
	2050 1900 2050 1750
Connection ~ 2050 1750
Wire Wire Line
	2050 1750 2600 1750
Wire Wire Line
	2050 2200 2050 2250
Wire Wire Line
	1500 2200 1500 2250
Wire Wire Line
	3850 2650 3850 2600
Wire Wire Line
	10100 2700 9600 2700
Wire Wire Line
	9600 2700 9600 2600
Wire Wire Line
	9150 2600 9600 2600
Wire Wire Line
	10100 2600 9700 2600
Wire Wire Line
	9700 2600 9700 2400
Wire Wire Line
	9700 2400 9150 2400
Wire Wire Line
	10100 2500 9750 2500
Wire Wire Line
	9750 2500 9750 2200
Wire Wire Line
	9150 2200 9750 2200
Wire Wire Line
	10100 2400 9850 2400
Wire Wire Line
	9850 2400 9850 2800
Wire Wire Line
	9850 2800 9150 2800
$Comp
L power:GND #PWR?
U 1 1 613A3F79
P 10000 3350
AR Path="/6139AAF1/612A9B8D/613A3F79" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F79" Ref="#PWR01418"  Part="1" 
F 0 "#PWR01418" H 10000 3100 50  0001 C CNN
F 1 "GND" H 10005 3177 50  0000 C CNN
F 2 "" H 10000 3350 50  0001 C CNN
F 3 "" H 10000 3350 50  0001 C CNN
	1    10000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A3F7F
P 10400 3150
AR Path="/6139AAF1/612A9B8D/613A3F7F" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F7F" Ref="#PWR01420"  Part="1" 
F 0 "#PWR01420" H 10400 2900 50  0001 C CNN
F 1 "GND" H 10405 2977 50  0000 C CNN
F 2 "" H 10400 3150 50  0001 C CNN
F 3 "" H 10400 3150 50  0001 C CNN
	1    10400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3150 10400 3100
Wire Wire Line
	10000 3350 10000 2100
Wire Wire Line
	10000 2100 10100 2100
NoConn ~ 10100 2200
NoConn ~ 10100 2300
NoConn ~ 10100 2800
NoConn ~ 10100 2900
$Comp
L Connector:DB9_Male_MountingHoles J?
U 1 1 613A3F8C
P 10400 5700
AR Path="/6139AAF1/612A9B8D/613A3F8C" Ref="J?"  Part="1" 
AR Path="/6139AAF1/613A3F8C" Ref="J1402"  Part="1" 
F 0 "J1402" H 10580 5702 50  0000 L CNN
F 1 "Serial2" H 10580 5611 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 10400 5700 50  0001 C CNN
F 3 " ~" H 10400 5700 50  0001 C CNN
	1    10400 5700
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX202 U?
U 1 1 613A3F92
P 8350 5300
AR Path="/6139AAF1/612A9B8D/613A3F92" Ref="U?"  Part="1" 
AR Path="/6139AAF1/613A3F92" Ref="U1403"  Part="1" 
F 0 "U1403" H 8700 6400 50  0000 C CNN
F 1 "MAX202" H 8700 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8400 4250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max202.pdf" H 8350 5400 50  0001 C CNN
	1    8350 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613A3F98
P 8350 4050
AR Path="/6139AAF1/612A9B8D/613A3F98" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F98" Ref="#PWR01412"  Part="1" 
F 0 "#PWR01412" H 8350 3900 50  0001 C CNN
F 1 "+5V" H 8365 4223 50  0000 C CNN
F 2 "" H 8350 4050 50  0001 C CNN
F 3 "" H 8350 4050 50  0001 C CNN
	1    8350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A3F9E
P 8350 6550
AR Path="/6139AAF1/612A9B8D/613A3F9E" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3F9E" Ref="#PWR01413"  Part="1" 
F 0 "#PWR01413" H 8350 6300 50  0001 C CNN
F 1 "GND" H 8355 6377 50  0000 C CNN
F 2 "" H 8350 6550 50  0001 C CNN
F 3 "" H 8350 6550 50  0001 C CNN
	1    8350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6550 8350 6500
Wire Wire Line
	8350 4050 8350 4100
$Comp
L Device:C C?
U 1 1 613A3FA6
P 9350 4550
AR Path="/6139AAF1/612A9B8D/613A3FA6" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3FA6" Ref="C1408"  Part="1" 
F 0 "C1408" H 9500 4600 50  0000 L CNN
F 1 "100nF" H 9500 4500 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9388 4400 50  0001 C CNN
F 3 "~" H 9350 4550 50  0001 C CNN
	1    9350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 613A3FAC
P 7350 4550
AR Path="/6139AAF1/612A9B8D/613A3FAC" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3FAC" Ref="C1404"  Part="1" 
F 0 "C1404" H 7465 4596 50  0000 L CNN
F 1 "100nF" H 7465 4505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7388 4400 50  0001 C CNN
F 3 "~" H 7350 4550 50  0001 C CNN
	1    7350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4400 9150 4400
Wire Wire Line
	9150 4700 9350 4700
Wire Wire Line
	7550 4400 7350 4400
Wire Wire Line
	7350 4700 7550 4700
$Comp
L Device:C C?
U 1 1 613A3FB6
P 9300 6300
AR Path="/6139AAF1/612A9B8D/613A3FB6" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3FB6" Ref="C1406"  Part="1" 
F 0 "C1406" H 9415 6346 50  0000 L CNN
F 1 "100nF" H 9415 6255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9338 6150 50  0001 C CNN
F 3 "~" H 9300 6300 50  0001 C CNN
	1    9300 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 613A3FBC
P 9850 4550
AR Path="/6139AAF1/612A9B8D/613A3FBC" Ref="C?"  Part="1" 
AR Path="/6139AAF1/613A3FBC" Ref="C1410"  Part="1" 
F 0 "C1410" H 9500 4500 50  0000 L CNN
F 1 "100nF" H 9500 4600 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9888 4400 50  0001 C CNN
F 3 "~" H 9850 4550 50  0001 C CNN
	1    9850 4550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613A3FC2
P 9850 4100
AR Path="/6139AAF1/612A9B8D/613A3FC2" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3FC2" Ref="#PWR01417"  Part="1" 
F 0 "#PWR01417" H 9850 3950 50  0001 C CNN
F 1 "+5V" H 9865 4273 50  0000 C CNN
F 2 "" H 9850 4100 50  0001 C CNN
F 3 "" H 9850 4100 50  0001 C CNN
	1    9850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4900 9850 4900
$Comp
L power:GND #PWR?
U 1 1 613A3FC9
P 9300 6550
AR Path="/6139AAF1/612A9B8D/613A3FC9" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3FC9" Ref="#PWR01415"  Part="1" 
F 0 "#PWR01415" H 9300 6300 50  0001 C CNN
F 1 "GND" H 9305 6377 50  0000 C CNN
F 2 "" H 9300 6550 50  0001 C CNN
F 3 "" H 9300 6550 50  0001 C CNN
	1    9300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5200 9300 6150
Wire Wire Line
	9150 5200 9300 5200
Wire Wire Line
	9300 6450 9300 6550
Wire Wire Line
	10100 5900 9600 5900
Wire Wire Line
	9600 5900 9600 5800
Wire Wire Line
	9150 5800 9600 5800
Wire Wire Line
	10100 5800 9700 5800
Wire Wire Line
	9700 5800 9700 5600
Wire Wire Line
	9700 5600 9150 5600
Wire Wire Line
	10100 5700 9750 5700
Wire Wire Line
	9750 5700 9750 5400
Wire Wire Line
	9150 5400 9750 5400
Wire Wire Line
	10100 5600 9850 5600
Wire Wire Line
	9850 5600 9850 6000
Wire Wire Line
	9850 6000 9150 6000
$Comp
L power:GND #PWR?
U 1 1 613A3FDE
P 10000 6550
AR Path="/6139AAF1/612A9B8D/613A3FDE" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3FDE" Ref="#PWR01419"  Part="1" 
F 0 "#PWR01419" H 10000 6300 50  0001 C CNN
F 1 "GND" H 10005 6377 50  0000 C CNN
F 2 "" H 10000 6550 50  0001 C CNN
F 3 "" H 10000 6550 50  0001 C CNN
	1    10000 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A3FE4
P 10400 6350
AR Path="/6139AAF1/612A9B8D/613A3FE4" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A3FE4" Ref="#PWR01421"  Part="1" 
F 0 "#PWR01421" H 10400 6100 50  0001 C CNN
F 1 "GND" H 10405 6177 50  0000 C CNN
F 2 "" H 10400 6350 50  0001 C CNN
F 3 "" H 10400 6350 50  0001 C CNN
	1    10400 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6350 10400 6300
Wire Wire Line
	10000 6550 10000 5300
Wire Wire Line
	10000 5300 10100 5300
NoConn ~ 10100 5400
NoConn ~ 10100 5500
NoConn ~ 10100 6000
NoConn ~ 10100 6100
Wire Wire Line
	4850 2950 5550 2950
Wire Wire Line
	5550 2950 5550 2200
Wire Wire Line
	5550 2200 7550 2200
Wire Wire Line
	7550 2600 5650 2600
Wire Wire Line
	5650 2600 5650 3050
Wire Wire Line
	5650 3050 4850 3050
Wire Wire Line
	5750 2400 5750 3550
Wire Wire Line
	5750 3550 4850 3550
Wire Wire Line
	5750 2400 7550 2400
Wire Wire Line
	7550 2800 5850 2800
Wire Wire Line
	5850 2800 5850 4450
Wire Wire Line
	5850 4450 4850 4450
Text HLabel 2550 4650 0    50   Input ~ 0
~CS_DUART
$Comp
L power:+5V #PWR?
U 1 1 613A4013
P 1450 4400
AR Path="/6139AAF1/612A9B8D/613A4013" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A4013" Ref="#PWR01401"  Part="1" 
F 0 "#PWR01401" H 1450 4250 50  0001 C CNN
F 1 "+5V" H 1465 4573 50  0000 C CNN
F 2 "" H 1450 4400 50  0001 C CNN
F 3 "" H 1450 4400 50  0001 C CNN
	1    1450 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613A4019
P 3850 5600
AR Path="/6139AAF1/612A9B8D/613A4019" Ref="#PWR?"  Part="1" 
AR Path="/6139AAF1/613A4019" Ref="#PWR01407"  Part="1" 
F 0 "#PWR01407" H 3850 5350 50  0001 C CNN
F 1 "GND" H 3855 5427 50  0000 C CNN
F 2 "" H 3850 5600 50  0001 C CNN
F 3 "" H 3850 5600 50  0001 C CNN
	1    3850 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5550 3850 5600
Wire Wire Line
	2850 4850 1450 4850
Wire Wire Line
	1450 4850 1450 4750
Wire Wire Line
	1450 4450 1450 4400
Wire Wire Line
	2550 5150 2850 5150
Wire Wire Line
	2850 4750 2550 4750
Wire Wire Line
	2550 4950 2850 4950
Text HLabel 2550 5250 0    50   Output ~ 0
~INT_DUART
Wire Wire Line
	2850 5250 2550 5250
NoConn ~ 4850 3750
NoConn ~ 4850 3850
NoConn ~ 4850 3950
NoConn ~ 4850 4050
NoConn ~ 4850 4150
NoConn ~ 4850 4250
Text HLabel 1900 4000 0    50   Input ~ 0
A[0..31]
Text HLabel 1900 3050 0    50   BiDi ~ 0
D[0..31]
Text Label 5000 2950 0    50   ~ 0
TXDA
Text Label 5000 3050 0    50   ~ 0
RXDA
Wire Wire Line
	9850 4100 9850 4400
Wire Wire Line
	9850 4700 9850 4900
Text Label 2550 3250 0    50   ~ 0
D24
Text Label 2550 3350 0    50   ~ 0
D25
Text Label 2550 3450 0    50   ~ 0
D26
Text Label 2550 3550 0    50   ~ 0
D27
Text Label 2550 3650 0    50   ~ 0
D28
Text Label 2550 3750 0    50   ~ 0
D29
Text Label 2550 3850 0    50   ~ 0
D30
Text Label 2550 3950 0    50   ~ 0
D31
Text HLabel 2550 5150 0    50   Output ~ 0
~DTACK_DUART
Text HLabel 2550 4950 0    50   Input ~ 0
~RESET
Text HLabel 2550 4750 0    50   Input ~ 0
RD~WR
Wire Wire Line
	2550 4650 2850 4650
Wire Wire Line
	6450 3650 4850 3650
Wire Wire Line
	6550 3350 4850 3350
Wire Wire Line
	6650 3250 4850 3250
Wire Wire Line
	6650 5400 7550 5400
Wire Wire Line
	6650 3250 6650 5400
Wire Wire Line
	6550 5800 7550 5800
Wire Wire Line
	6550 3350 6550 5800
Wire Wire Line
	6450 5600 7550 5600
Wire Wire Line
	6450 3650 6450 5600
Wire Wire Line
	6350 4550 6350 6000
Wire Wire Line
	6350 6000 7550 6000
Wire Wire Line
	4850 4550 6350 4550
NoConn ~ 4850 4650
NoConn ~ 4850 4750
NoConn ~ 4850 4850
NoConn ~ 4850 4950
Wire Bus Line
	2200 4000 2200 4350
Wire Bus Line
	2200 3050 2200 3850
$EndSCHEMATC
