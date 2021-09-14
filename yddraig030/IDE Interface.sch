EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 16
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
L Ddraig:IDE_Interface J?
U 1 1 612BA6EB
P 8650 3200
F 0 "J?" H 8650 4465 50  0000 C CNN
F 1 "IDE_Interface" H 8650 4374 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 8150 3300 50  0001 C CNN
F 3 "" H 8150 3300 50  0001 C CNN
	1    8650 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	9800 2150 9700 2250
Entry Wire Line
	9800 2250 9700 2350
Entry Wire Line
	9800 2350 9700 2450
Entry Wire Line
	9800 2450 9700 2550
Entry Wire Line
	9800 2550 9700 2650
Entry Wire Line
	9800 2650 9700 2750
Entry Wire Line
	9800 2750 9700 2850
Entry Wire Line
	9800 2850 9700 2950
Entry Wire Line
	9800 2950 9700 3050
Entry Wire Line
	9800 3050 9700 3150
Entry Wire Line
	9800 3150 9700 3250
Entry Wire Line
	9800 3250 9700 3350
Entry Wire Line
	9800 3350 9700 3450
Entry Wire Line
	9800 3450 9700 3550
Entry Wire Line
	9800 3550 9700 3650
Entry Wire Line
	9800 3650 9700 3750
Wire Wire Line
	9300 3750 9700 3750
Wire Wire Line
	9700 3650 9300 3650
Wire Wire Line
	9300 3550 9700 3550
Wire Wire Line
	9700 3450 9300 3450
Wire Wire Line
	9300 3350 9700 3350
Wire Wire Line
	9700 3250 9300 3250
Wire Wire Line
	9300 3150 9700 3150
Wire Wire Line
	9700 3050 9300 3050
Wire Wire Line
	9300 2950 9700 2950
Wire Wire Line
	9700 2850 9300 2850
Wire Wire Line
	9300 2750 9700 2750
Wire Wire Line
	9700 2650 9300 2650
Wire Wire Line
	9300 2550 9700 2550
Wire Wire Line
	9700 2450 9300 2450
Wire Wire Line
	9300 2350 9700 2350
Wire Wire Line
	9700 2250 9300 2250
Wire Bus Line
	9800 2050 10150 2050
Text HLabel 10150 2050 2    50   BiDi ~ 0
D[0..31]
Entry Wire Line
	4700 1950 4800 2050
Entry Wire Line
	4700 2050 4800 2150
Entry Wire Line
	4700 2150 4800 2250
Wire Wire Line
	4800 2250 5150 2250
Wire Wire Line
	5150 2150 4800 2150
Wire Wire Line
	4800 2050 5150 2050
Text Label 4950 2050 0    50   ~ 0
A1
Text Label 4950 2150 0    50   ~ 0
A2
Text Label 4950 2250 0    50   ~ 0
A3
Wire Bus Line
	4700 1850 4450 1850
Text HLabel 4450 1850 0    50   Input ~ 0
A[0..31]
$Comp
L power:GND #PWR?
U 1 1 612BA72E
P 8650 5150
F 0 "#PWR?" H 8650 4900 50  0001 C CNN
F 1 "GND" H 8655 4977 50  0000 C CNN
F 2 "" H 8650 5150 50  0001 C CNN
F 3 "" H 8650 5150 50  0001 C CNN
	1    8650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4950 8350 5050
Wire Wire Line
	8350 5050 8450 5050
Wire Wire Line
	8950 5050 8950 4950
Wire Wire Line
	8850 4950 8850 5050
Connection ~ 8850 5050
Wire Wire Line
	8850 5050 8950 5050
Wire Wire Line
	8750 4950 8750 5050
Connection ~ 8750 5050
Wire Wire Line
	8750 5050 8850 5050
Wire Wire Line
	8650 4950 8650 5050
Connection ~ 8650 5050
Wire Wire Line
	8650 5050 8750 5050
Wire Wire Line
	8550 4950 8550 5050
Connection ~ 8550 5050
Wire Wire Line
	8550 5050 8650 5050
Wire Wire Line
	8450 4950 8450 5050
Connection ~ 8450 5050
Wire Wire Line
	8450 5050 8550 5050
Wire Wire Line
	8650 5150 8650 5050
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 612BA747
P 6800 5050
F 0 "J?" H 6800 4850 50  0000 C CNN
F 1 "IDE 5V" H 6750 5200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6800 5050 50  0001 C CNN
F 3 "~" H 6800 5050 50  0001 C CNN
	1    6800 5050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 612BA74D
P 7100 4850
F 0 "#PWR?" H 7100 4700 50  0001 C CNN
F 1 "+5V" H 7115 5023 50  0000 C CNN
F 2 "" H 7100 4850 50  0001 C CNN
F 3 "" H 7100 4850 50  0001 C CNN
	1    7100 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U?
U 1 1 612BA753
P 5550 3950
F 0 "U?" H 5550 4317 50  0000 C CNN
F 1 "74LS139" H 5550 4226 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5550 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 5550 3950 50  0001 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U?
U 2 1 612BA759
P 10150 6250
F 0 "U?" H 10150 6617 50  0000 C CNN
F 1 "74LS139" H 10150 6526 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 10150 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 10150 6250 50  0001 C CNN
	2    10150 6250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U?
U 3 1 612BA75F
P 8400 6250
F 0 "U?" H 8630 6296 50  0000 L CNN
F 1 "74LS139" H 8630 6205 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8400 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 8400 6250 50  0001 C CNN
	3    8400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2200 8000 2200
Text HLabel 4700 2950 0    50   Input ~ 0
RD~WR
Text HLabel 4700 3050 0    50   Input ~ 0
~RD~WR
Text HLabel 4700 3150 0    50   Input ~ 0
~RESET
Text HLabel 4800 4150 0    50   Input ~ 0
~CS_IDE
Text HLabel 3850 6450 0    50   Output ~ 0
~INT_IDE
Wire Wire Line
	5150 2950 4700 2950
Wire Wire Line
	5150 3050 4700 3050
Wire Wire Line
	4700 3150 5150 3150
Wire Wire Line
	7600 4500 8000 4500
Text Label 4800 3950 2    50   ~ 0
A7
$Comp
L power:GND #PWR?
U 1 1 612BA776
P 4950 4250
F 0 "#PWR?" H 4950 4000 50  0001 C CNN
F 1 "GND" H 4955 4077 50  0000 C CNN
F 2 "" H 4950 4250 50  0001 C CNN
F 3 "" H 4950 4250 50  0001 C CNN
	1    4950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3950 5050 3950
Wire Wire Line
	5050 3850 4950 3850
Wire Wire Line
	4950 3850 4950 4250
Wire Wire Line
	4800 4150 5050 4150
Wire Wire Line
	6150 3850 6150 3600
Wire Wire Line
	6150 3850 6050 3850
Wire Wire Line
	6150 3600 8000 3600
Wire Wire Line
	6050 3950 6250 3950
Wire Wire Line
	6250 3950 6250 3700
Wire Wire Line
	6250 3700 8000 3700
Wire Wire Line
	8000 3800 7250 3800
Wire Wire Line
	7250 3800 7250 5050
$Comp
L power:GND #PWR?
U 1 1 612BA788
P 7900 4850
F 0 "#PWR?" H 7900 4600 50  0001 C CNN
F 1 "GND" H 7905 4677 50  0000 C CNN
F 2 "" H 7900 4850 50  0001 C CNN
F 3 "" H 7900 4850 50  0001 C CNN
	1    7900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4000 7900 4000
Wire Wire Line
	7900 4000 7900 4850
$Comp
L Device:R R?
U 1 1 612BA790
P 4100 6200
F 0 "R?" H 4170 6246 50  0000 L CNN
F 1 "1M" H 4170 6155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 6200 50  0001 C CNN
F 3 "~" H 4100 6200 50  0001 C CNN
	1    4100 6200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 612BA796
P 4200 6750
F 0 "Q?" H 4405 6796 50  0000 L CNN
F 1 "2N7000" H 4405 6705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4400 6675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 4200 6750 50  0001 L CNN
	1    4200 6750
	-1   0    0    -1  
$EndComp
Text Label 7450 3500 2    50   ~ 0
ACTIVE
Text Label 7450 3300 2    50   ~ 0
IRQ
Text Label 4600 6750 0    50   ~ 0
IRQ
$Comp
L power:GND #PWR?
U 1 1 612BA79F
P 4100 7000
F 0 "#PWR?" H 4100 6750 50  0001 C CNN
F 1 "GND" H 4105 6827 50  0000 C CNN
F 2 "" H 4100 7000 50  0001 C CNN
F 3 "" H 4100 7000 50  0001 C CNN
	1    4100 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 612BA7A5
P 4100 6000
F 0 "#PWR?" H 4100 5850 50  0001 C CNN
F 1 "+5V" H 4115 6173 50  0000 C CNN
F 2 "" H 4100 6000 50  0001 C CNN
F 3 "" H 4100 6000 50  0001 C CNN
	1    4100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6950 4100 7000
Wire Wire Line
	4100 6550 4100 6450
Wire Wire Line
	4100 6050 4100 6000
Wire Wire Line
	4600 6750 4400 6750
Wire Wire Line
	3850 6450 4100 6450
Connection ~ 4100 6450
Wire Wire Line
	4100 6350 4100 6450
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 612BA7B2
P 2200 6450
F 0 "J?" H 2118 6125 50  0000 C CNN
F 1 "IDE LED" H 2118 6216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 6450 50  0001 C CNN
F 3 "~" H 2200 6450 50  0001 C CNN
	1    2200 6450
	-1   0    0    1   
$EndComp
Text Label 2300 7000 2    50   ~ 0
ACTIVE
Wire Wire Line
	7450 3300 8000 3300
Wire Wire Line
	8000 3500 7450 3500
$Comp
L Device:R R?
U 1 1 612BA7BB
P 2850 6700
F 0 "R?" H 2920 6746 50  0000 L CNN
F 1 "330R" H 2920 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 6700 50  0001 C CNN
F 3 "~" H 2850 6700 50  0001 C CNN
	1    2850 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 612BA7C1
P 2850 6300
F 0 "D?" V 2889 6182 50  0000 R CNN
F 1 "Blue" V 2798 6182 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2850 6300 50  0001 C CNN
F 3 "~" H 2850 6300 50  0001 C CNN
	1    2850 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 612BA7C7
P 2500 6700
F 0 "R?" H 2570 6746 50  0000 L CNN
F 1 "330R" H 2570 6655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 6700 50  0001 C CNN
F 3 "~" H 2500 6700 50  0001 C CNN
	1    2500 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 612BA7CD
P 2850 5950
F 0 "#PWR?" H 2850 5800 50  0001 C CNN
F 1 "+5V" H 2865 6123 50  0000 C CNN
F 2 "" H 2850 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6050 2850 6150
Wire Wire Line
	2850 6450 2850 6550
Wire Wire Line
	2850 7000 2500 7000
Wire Wire Line
	2850 6850 2850 7000
Wire Wire Line
	2500 6850 2500 7000
Connection ~ 2500 7000
Wire Wire Line
	2500 7000 2300 7000
Wire Wire Line
	2400 6450 2500 6450
Wire Wire Line
	2500 6450 2500 6550
Wire Wire Line
	2400 6350 2500 6350
Wire Wire Line
	2500 6350 2500 6050
Wire Wire Line
	2500 6050 2850 6050
Wire Wire Line
	2850 5950 2850 6050
Connection ~ 2850 6050
NoConn ~ 8000 3000
NoConn ~ 8000 4100
NoConn ~ 8000 4300
NoConn ~ 6050 4050
NoConn ~ 6050 4150
$Comp
L power:GND #PWR?
U 1 1 612BA7E6
P 8400 6800
F 0 "#PWR?" H 8400 6550 50  0001 C CNN
F 1 "GND" H 8405 6627 50  0000 C CNN
F 2 "" H 8400 6800 50  0001 C CNN
F 3 "" H 8400 6800 50  0001 C CNN
	1    8400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5700 8400 5750
Wire Wire Line
	8400 6750 8400 6800
Wire Wire Line
	9550 6050 9550 6150
Wire Wire Line
	9550 6150 9650 6150
Wire Wire Line
	9550 6150 9550 6250
Wire Wire Line
	9550 6250 9650 6250
Connection ~ 9550 6150
Wire Wire Line
	9550 6250 9550 6450
Wire Wire Line
	9550 6450 9650 6450
Connection ~ 9550 6250
NoConn ~ 10650 6150
NoConn ~ 10650 6250
NoConn ~ 10650 6350
NoConn ~ 10650 6450
Wire Wire Line
	7000 4950 7100 4950
Wire Wire Line
	7100 4950 7100 4850
Wire Wire Line
	7250 5050 7000 5050
$Comp
L Device:C C?
U 1 1 612BA89F
P 1850 1800
AR Path="/6058AC66/612BA89F" Ref="C?"  Part="1" 
AR Path="/6090D430/612BA89F" Ref="C?"  Part="1" 
AR Path="/6139AB8F/612BA89F" Ref="C?"  Part="1" 
F 0 "C?" H 1965 1846 50  0000 L CNN
F 1 "100nF" H 1965 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1888 1650 50  0001 C CNN
F 3 "~" H 1850 1800 50  0001 C CNN
	1    1850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2150 1850 2050
Wire Wire Line
	1850 1650 1850 1550
Connection ~ 1850 1550
Wire Wire Line
	1850 1550 1850 1450
Connection ~ 1850 2050
Wire Wire Line
	1850 2050 1850 1950
$Comp
L power:GND #PWR?
U 1 1 612BA8AB
P 1850 2150
AR Path="/6058AC66/612BA8AB" Ref="#PWR?"  Part="1" 
AR Path="/6090D430/612BA8AB" Ref="#PWR?"  Part="1" 
AR Path="/6139AB8F/612BA8AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 1900 50  0001 C CNN
F 1 "GND" H 1855 1977 50  0000 C CNN
F 2 "" H 1850 2150 50  0001 C CNN
F 3 "" H 1850 2150 50  0001 C CNN
	1    1850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 612BA8B1
P 2350 1800
AR Path="/6058AC66/612BA8B1" Ref="C?"  Part="1" 
AR Path="/6090D430/612BA8B1" Ref="C?"  Part="1" 
AR Path="/6139AB8F/612BA8B1" Ref="C?"  Part="1" 
F 0 "C?" H 2465 1846 50  0000 L CNN
F 1 "100nF" H 2465 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2388 1650 50  0001 C CNN
F 3 "~" H 2350 1800 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2350 1650
Wire Wire Line
	1850 1550 2350 1550
Wire Wire Line
	2350 2050 2350 1950
Wire Wire Line
	1850 2050 2350 2050
$Comp
L power:+5V #PWR?
U 1 1 612BA8BB
P 1850 1450
AR Path="/6058AC66/612BA8BB" Ref="#PWR?"  Part="1" 
AR Path="/6090D430/612BA8BB" Ref="#PWR?"  Part="1" 
AR Path="/6139AB8F/612BA8BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 1300 50  0001 C CNN
F 1 "+5V" H 1865 1623 50  0000 C CNN
F 2 "" H 1850 1450 50  0001 C CNN
F 3 "" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 612BA8C1
P 2850 1800
AR Path="/6058AC66/612BA8C1" Ref="C?"  Part="1" 
AR Path="/6090D430/612BA8C1" Ref="C?"  Part="1" 
AR Path="/6139AB8F/612BA8C1" Ref="C?"  Part="1" 
F 0 "C?" H 2965 1846 50  0000 L CNN
F 1 "100nF" H 2965 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2888 1650 50  0001 C CNN
F 3 "~" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1650 2850 1550
Wire Wire Line
	2850 2050 2850 1950
$Comp
L Device:C C?
U 1 1 612BA8C9
P 3350 1800
AR Path="/6058AC66/612BA8C9" Ref="C?"  Part="1" 
AR Path="/6090D430/612BA8C9" Ref="C?"  Part="1" 
AR Path="/6139AB8F/612BA8C9" Ref="C?"  Part="1" 
F 0 "C?" H 3465 1846 50  0000 L CNN
F 1 "100nF" H 3465 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3388 1650 50  0001 C CNN
F 3 "~" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1550 3350 1650
Wire Wire Line
	2850 1550 3350 1550
Wire Wire Line
	3350 2050 3350 1950
Wire Wire Line
	2850 2050 3350 2050
Wire Wire Line
	2850 1550 2350 1550
Connection ~ 2850 1550
Connection ~ 2350 1550
Wire Wire Line
	2350 2050 2850 2050
Connection ~ 2350 2050
Connection ~ 2850 2050
$Comp
L power:+5V #PWR?
U 1 1 612BA8D9
P 8400 5700
F 0 "#PWR?" H 8400 5550 50  0001 C CNN
F 1 "+5V" H 8415 5873 50  0000 C CNN
F 2 "" H 8400 5700 50  0001 C CNN
F 3 "" H 8400 5700 50  0001 C CNN
	1    8400 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 612BA8DF
P 9550 6050
F 0 "#PWR?" H 9550 5900 50  0001 C CNN
F 1 "+5V" H 9565 6223 50  0000 C CNN
F 2 "" H 9550 6050 50  0001 C CNN
F 3 "" H 9550 6050 50  0001 C CNN
	1    9550 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2050 6050 2050
Wire Wire Line
	6050 2050 6050 2200
Wire Wire Line
	5550 2150 5950 2150
Wire Wire Line
	5950 2150 5950 2300
Wire Wire Line
	5950 2300 8000 2300
Wire Wire Line
	5550 2250 5850 2250
Wire Wire Line
	5850 2250 5850 2400
Wire Wire Line
	5850 2400 8000 2400
Wire Wire Line
	6050 3150 5550 3150
Wire Wire Line
	5550 3050 5950 3050
Wire Wire Line
	5950 3050 5950 2700
Wire Wire Line
	5850 2950 5850 2600
Wire Wire Line
	5550 2950 5850 2950
NoConn ~ 5150 2350
NoConn ~ 5550 2350
NoConn ~ 5550 3250
NoConn ~ 5150 3250
$Comp
L Device:R R?
U 1 1 612BA8F9
P 6600 4200
F 0 "R?" H 6670 4246 50  0000 L CNN
F 1 "10K" H 6670 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 4200 50  0001 C CNN
F 3 "~" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 612BA8FF
P 7750 1950
F 0 "R?" H 7820 1996 50  0000 L CNN
F 1 "10K" H 7820 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 1950 50  0001 C CNN
F 3 "~" H 7750 1950 50  0001 C CNN
	1    7750 1950
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 612BA905
P 7750 1750
F 0 "#PWR?" H 7750 1600 50  0001 C CNN
F 1 "+5V" H 7765 1923 50  0000 C CNN
F 2 "" H 7750 1750 50  0001 C CNN
F 3 "" H 7750 1750 50  0001 C CNN
	1    7750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3100 7750 3100
Wire Wire Line
	7750 3100 7750 2100
Wire Wire Line
	7750 1750 7750 1800
$Comp
L power:GND #PWR?
U 1 1 612BA90E
P 6600 4400
F 0 "#PWR?" H 6600 4150 50  0001 C CNN
F 1 "GND" H 6605 4227 50  0000 C CNN
F 2 "" H 6600 4400 50  0001 C CNN
F 3 "" H 6600 4400 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4400 6600 4350
$Comp
L Ddraig:RPack04_Alt RN?
U 1 1 612BA917
P 5350 2250
F 0 "RN?" V 4933 2250 50  0000 C CNN
F 1 "22R" V 5024 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 5625 2250 50  0001 C CNN
F 3 "~" H 5350 2250 50  0001 C CNN
	1    5350 2250
	0    1    1    0   
$EndComp
$Comp
L Ddraig:RPack04_Alt RN?
U 1 1 612BA91D
P 5350 3150
F 0 "RN?" V 4933 3150 50  0000 C CNN
F 1 "22R" V 5024 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 5625 3150 50  0001 C CNN
F 3 "~" H 5350 3150 50  0001 C CNN
	1    5350 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2800 6050 2800
Wire Wire Line
	7600 2800 7600 4500
Wire Wire Line
	6050 2800 6050 3150
Wire Wire Line
	5950 2700 8000 2700
Wire Wire Line
	5850 2600 8000 2600
Wire Wire Line
	6600 2900 6600 4050
Wire Wire Line
	6600 2900 8000 2900
Text Label 9450 3050 0    50   ~ 0
D16
Text Label 9450 3150 0    50   ~ 0
D17
Text Label 9450 3250 0    50   ~ 0
D18
Text Label 9450 3350 0    50   ~ 0
D19
Text Label 9450 3450 0    50   ~ 0
D20
Text Label 9450 3550 0    50   ~ 0
D21
Text Label 9450 3650 0    50   ~ 0
D22
Text Label 9450 3750 0    50   ~ 0
D23
Text Label 9450 2250 0    50   ~ 0
D24
Text Label 9450 2350 0    50   ~ 0
D25
Text Label 9450 2450 0    50   ~ 0
D26
Text Label 9450 2550 0    50   ~ 0
D27
Text Label 9450 2650 0    50   ~ 0
D28
Text Label 9450 2750 0    50   ~ 0
D29
Text Label 9450 2850 0    50   ~ 0
D30
Text Label 9450 2950 0    50   ~ 0
D31
Wire Bus Line
	4700 1850 4700 2150
Wire Bus Line
	9800 2050 9800 3650
$EndSCHEMATC
