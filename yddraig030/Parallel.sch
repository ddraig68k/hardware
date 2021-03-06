EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 14
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
L power:GND #PWR?
U 1 1 6145FE8E
P 8150 4400
F 0 "#PWR?" H 8150 4150 50  0001 C CNN
F 1 "GND" H 8155 4227 50  0000 C CNN
F 2 "" H 8150 4400 50  0001 C CNN
F 3 "" H 8150 4400 50  0001 C CNN
	1    8150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4250 8550 4350
Wire Wire Line
	8550 4350 8150 4350
Connection ~ 8150 4350
Wire Wire Line
	8150 4350 8150 4400
Wire Wire Line
	8250 3950 8150 3950
Wire Wire Line
	8150 3950 8150 4350
Wire Wire Line
	8250 3750 8150 3750
Wire Wire Line
	8150 3750 8150 3950
Connection ~ 8150 3950
Wire Wire Line
	8250 3550 8150 3550
Wire Wire Line
	8150 3550 8150 3750
Connection ~ 8150 3750
Wire Wire Line
	8150 3550 8150 3350
Wire Wire Line
	8150 3350 8250 3350
Connection ~ 8150 3550
Wire Wire Line
	8150 3350 8150 3150
Wire Wire Line
	8150 3150 8250 3150
Connection ~ 8150 3350
Wire Wire Line
	8150 3150 8150 2950
Wire Wire Line
	8150 2950 8250 2950
Connection ~ 8150 3150
Wire Wire Line
	8150 2950 8150 2750
Wire Wire Line
	8150 2750 8250 2750
Connection ~ 8150 2950
Wire Wire Line
	8150 2550 8250 2550
Connection ~ 8150 2750
Wire Wire Line
	5850 1850 8250 1850
Wire Wire Line
	8150 2550 8150 2750
Wire Wire Line
	5850 1950 7000 1950
Wire Wire Line
	5850 2050 6900 2050
Wire Wire Line
	5850 2150 6800 2150
Wire Wire Line
	5850 2250 6700 2250
Wire Wire Line
	5850 2550 6400 2550
Text HLabel 3450 4150 0    50   Output ~ 0
~DTACK_68K
Text Label 3450 3950 2    50   ~ 0
~RESET
Text HLabel 3450 3750 0    50   Input ~ 0
CLK10
Text HLabel 3450 3350 0    50   Input ~ 0
~CS_PIT
Text Label 3450 3550 2    50   ~ 0
RD~WR
Wire Wire Line
	3450 3350 3850 3350
Wire Wire Line
	3850 3550 3450 3550
Wire Wire Line
	3450 3750 3850 3750
Wire Wire Line
	3850 3950 3450 3950
Wire Wire Line
	3450 4150 3850 4150
Entry Wire Line
	3200 1750 3300 1850
Entry Wire Line
	3200 1850 3300 1950
Entry Wire Line
	3200 1950 3300 2050
Entry Wire Line
	3200 2050 3300 2150
Entry Wire Line
	3200 2150 3300 2250
Entry Wire Line
	3200 2250 3300 2350
Entry Wire Line
	3200 2350 3300 2450
Entry Wire Line
	3200 2450 3300 2550
Entry Wire Line
	3200 2650 3300 2750
Entry Wire Line
	3200 2750 3300 2850
Entry Wire Line
	3200 2850 3300 2950
Entry Wire Line
	3200 2950 3300 3050
Entry Wire Line
	3200 3050 3300 3150
Wire Wire Line
	3850 3150 3300 3150
Wire Wire Line
	3300 3050 3850 3050
Wire Wire Line
	3850 2950 3300 2950
Wire Wire Line
	3300 2850 3850 2850
Wire Wire Line
	3850 2750 3300 2750
Wire Wire Line
	3850 2550 3300 2550
Wire Wire Line
	3300 2450 3850 2450
Wire Wire Line
	3850 2350 3300 2350
Wire Wire Line
	3300 2250 3850 2250
Wire Wire Line
	3850 2150 3300 2150
Wire Wire Line
	3300 2050 3850 2050
Wire Wire Line
	3850 1950 3300 1950
Wire Wire Line
	3850 1850 3300 1850
Wire Bus Line
	3200 1650 2900 1650
Wire Bus Line
	2900 2600 3200 2600
Text Label 2900 2600 0    50   ~ 0
A[0..31]
Text Label 2900 1650 0    50   ~ 0
D[0..31]
Text Label 3550 2750 0    50   ~ 0
A1
Text Label 3550 2850 0    50   ~ 0
A2
Text Label 3550 2950 0    50   ~ 0
A3
Text Label 3550 3050 0    50   ~ 0
A4
Text Label 3550 3150 0    50   ~ 0
A5
Text Label 6000 3650 0    50   ~ 0
PPACK
Text Label 6000 3750 0    50   ~ 0
PPSTROBE
Text Label 6000 3850 0    50   ~ 0
PPERROR
Text Label 6000 3950 0    50   ~ 0
PPINIT
Text Label 5900 2750 0    50   ~ 0
PPBUSY
Text Label 5900 2850 0    50   ~ 0
PPPAPER
Text Label 5900 2950 0    50   ~ 0
PPSELECT
Wire Wire Line
	5850 3750 7100 3750
Wire Wire Line
	7100 1650 8250 1650
Wire Wire Line
	6400 3250 6400 2550
Wire Wire Line
	6400 3250 8250 3250
Wire Wire Line
	6500 2450 5850 2450
Wire Wire Line
	6500 2450 6500 3050
Wire Wire Line
	6500 3050 8250 3050
Wire Wire Line
	6600 2850 6600 2350
Wire Wire Line
	5850 2350 6600 2350
Wire Wire Line
	6600 2850 8250 2850
Wire Wire Line
	6700 2650 6700 2250
Wire Wire Line
	6700 2650 8250 2650
Wire Wire Line
	6800 2450 6800 2150
Wire Wire Line
	6800 2450 8250 2450
Wire Wire Line
	6900 2250 6900 2050
Wire Wire Line
	6900 2250 8250 2250
Wire Wire Line
	7000 2050 7000 1950
Wire Wire Line
	7000 2050 8250 2050
Wire Wire Line
	7100 1650 7100 3750
Wire Wire Line
	7200 1950 7200 3850
Wire Wire Line
	7200 3850 5850 3850
Wire Wire Line
	7200 1950 8250 1950
Wire Wire Line
	5850 3950 7300 3950
Wire Wire Line
	7300 3950 7300 2150
Wire Wire Line
	7300 2150 8250 2150
Wire Wire Line
	5850 3650 7400 3650
Wire Wire Line
	7400 3650 7400 3450
Wire Wire Line
	5850 2850 6350 2850
Wire Wire Line
	6350 2850 6350 3350
Wire Wire Line
	6350 3350 8050 3350
Wire Wire Line
	8050 3350 8050 3850
Wire Wire Line
	8050 3850 8250 3850
Wire Wire Line
	7850 2950 7850 2350
Wire Wire Line
	7850 2350 8250 2350
Wire Wire Line
	5850 2950 7850 2950
Wire Wire Line
	7650 2750 7650 3650
Wire Wire Line
	7400 3450 8250 3450
Wire Wire Line
	7650 3650 8250 3650
Wire Wire Line
	5850 2750 7650 2750
Text HLabel 6250 4450 2    50   Output ~ 0
~INT_PIT0
$Comp
L Interface:68230 U?
U 1 1 6145FF19
P 4850 3350
F 0 "U?" H 5400 5050 50  0000 C CNN
F 1 "68230" H 5300 1650 50  0000 C CNN
F 2 "Package_DIP:DIP-48_W15.24mm_Socket" H 4850 3350 50  0001 C CNN
F 3 "" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
NoConn ~ 5850 4850
NoConn ~ 5850 4750
NoConn ~ 5850 4550
NoConn ~ 5850 4350
NoConn ~ 5850 4250
NoConn ~ 5850 4150
NoConn ~ 5850 3450
NoConn ~ 5850 3350
NoConn ~ 5850 3250
NoConn ~ 5850 3150
NoConn ~ 5850 3050
$Comp
L Connector:DB25_Female_MountingHoles J?
U 1 1 6145FF2A
P 8550 2850
F 0 "J?" H 8730 2852 50  0000 L CNN
F 1 "Parallel" H 8730 2761 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-25_Female_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 8550 2850 50  0001 C CNN
F 3 " ~" H 8550 2850 50  0001 C CNN
	1    8550 2850
	1    0    0    -1  
$EndComp
NoConn ~ 8250 4050
$Comp
L power:+5V #PWR?
U 1 1 6145FF31
P 6500 1650
F 0 "#PWR?" H 6500 1500 50  0001 C CNN
F 1 "+5V" H 6515 1823 50  0000 C CNN
F 2 "" H 6500 1650 50  0001 C CNN
F 3 "" H 6500 1650 50  0001 C CNN
	1    6500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6145FF37
P 6750 1750
F 0 "R?" V 6957 1750 50  0000 C CNN
F 1 "1K" V 6866 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 1750 50  0001 C CNN
F 3 "~" H 6750 1750 50  0001 C CNN
	1    6750 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 1750 8250 1750
Wire Wire Line
	6500 1650 6500 1750
Wire Wire Line
	6500 1750 6600 1750
$Comp
L power:GND #PWR?
U 1 1 6145FF40
P 4850 5200
F 0 "#PWR?" H 4850 4950 50  0001 C CNN
F 1 "GND" H 4855 5027 50  0000 C CNN
F 2 "" H 4850 5200 50  0001 C CNN
F 3 "" H 4850 5200 50  0001 C CNN
	1    4850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5200 4850 5150
$Comp
L power:+5V #PWR?
U 1 1 6145FF47
P 4850 1450
F 0 "#PWR?" H 4850 1300 50  0001 C CNN
F 1 "+5V" H 4865 1623 50  0000 C CNN
F 2 "" H 4850 1450 50  0001 C CNN
F 3 "" H 4850 1450 50  0001 C CNN
	1    4850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1450 4850 1550
Text HLabel 6250 4650 2    50   Output ~ 0
~INT_PIT1
Wire Wire Line
	5850 4450 6250 4450
Wire Wire Line
	5850 4650 6250 4650
Text Label 3550 1850 0    50   ~ 0
D24
Text Label 3550 1950 0    50   ~ 0
D25
Text Label 3550 2050 0    50   ~ 0
D26
Text Label 3550 2150 0    50   ~ 0
D27
Text Label 3550 2250 0    50   ~ 0
D28
Text Label 3550 2350 0    50   ~ 0
D29
Text Label 3550 2450 0    50   ~ 0
D30
Text Label 3550 2550 0    50   ~ 0
D31
Wire Bus Line
	3200 2600 3200 3050
Wire Bus Line
	3200 1650 3200 2450
$EndSCHEMATC
