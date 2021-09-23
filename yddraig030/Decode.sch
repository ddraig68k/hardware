EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 15
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
L CPLD_Xilinx:XC95108PQ100 U1501
U 1 1 617369BA
P 3450 4150
F 0 "U1501" H 2750 6500 50  0000 C CNN
F 1 "XC95108PQ100" H 4100 6500 50  0000 C CNN
F 2 "" H 3450 4150 50  0001 C CNN
F 3 "xilinx/xc95108.pdf" H 3450 4150 50  0001 C CNN
	1    3450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01503
U 1 1 61738A8A
P 3450 1550
F 0 "#PWR01503" H 3450 1400 50  0001 C CNN
F 1 "+5V" H 3465 1723 50  0000 C CNN
F 2 "" H 3450 1550 50  0001 C CNN
F 3 "" H 3450 1550 50  0001 C CNN
	1    3450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1650 3150 1600
Wire Wire Line
	3150 1600 3250 1600
Wire Wire Line
	3750 1600 3750 1650
Wire Wire Line
	3650 1650 3650 1600
Connection ~ 3650 1600
Wire Wire Line
	3650 1600 3750 1600
Wire Wire Line
	3250 1650 3250 1600
Connection ~ 3250 1600
Wire Wire Line
	3250 1600 3350 1600
Wire Wire Line
	3350 1650 3350 1600
Connection ~ 3350 1600
Wire Wire Line
	3350 1600 3450 1600
Wire Wire Line
	3550 1650 3550 1600
Connection ~ 3550 1600
Wire Wire Line
	3550 1600 3650 1600
Wire Wire Line
	3450 1650 3450 1600
Connection ~ 3450 1600
Wire Wire Line
	3450 1600 3550 1600
Wire Wire Line
	3450 1550 3450 1600
Wire Wire Line
	3150 6750 3150 6800
Wire Wire Line
	3150 6800 3250 6800
Wire Wire Line
	3850 6800 3850 6750
Wire Wire Line
	3750 6750 3750 6800
Connection ~ 3750 6800
Wire Wire Line
	3750 6800 3850 6800
Wire Wire Line
	3250 6750 3250 6800
Connection ~ 3250 6800
Wire Wire Line
	3250 6800 3350 6800
Wire Wire Line
	3350 6750 3350 6800
Connection ~ 3350 6800
Wire Wire Line
	3350 6800 3450 6800
Wire Wire Line
	3650 6750 3650 6800
Connection ~ 3650 6800
Wire Wire Line
	3650 6800 3750 6800
Wire Wire Line
	3450 6750 3450 6800
Connection ~ 3450 6800
Wire Wire Line
	3450 6800 3500 6800
Wire Wire Line
	3550 6750 3550 6800
Connection ~ 3550 6800
Wire Wire Line
	3550 6800 3650 6800
$Comp
L power:GND #PWR01504
U 1 1 6173BF38
P 3500 6850
F 0 "#PWR01504" H 3500 6600 50  0001 C CNN
F 1 "GND" H 3505 6677 50  0000 C CNN
F 2 "" H 3500 6850 50  0001 C CNN
F 3 "" H 3500 6850 50  0001 C CNN
	1    3500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6850 3500 6800
Connection ~ 3500 6800
Wire Wire Line
	3500 6800 3550 6800
Text Label 2300 4850 2    50   ~ 0
A0
Text Label 2300 4750 2    50   ~ 0
A1
Text Label 2300 4650 2    50   ~ 0
A2
Text Label 2300 4550 2    50   ~ 0
A3
Text Label 2300 4450 2    50   ~ 0
A8
Text Label 2300 4350 2    50   ~ 0
A9
Text Label 2300 4150 2    50   ~ 0
A10
Text Label 2300 4050 2    50   ~ 0
A11
Text Label 2300 3950 2    50   ~ 0
A12
Text Label 2300 3850 2    50   ~ 0
A13
Text Label 2300 3750 2    50   ~ 0
A14
Text Label 2300 3650 2    50   ~ 0
A15
Text Label 2300 3550 2    50   ~ 0
A16
Text Label 2300 3450 2    50   ~ 0
A17
Text Label 2300 3350 2    50   ~ 0
A18
Text Label 2300 3250 2    50   ~ 0
A19
Text Label 2300 3150 2    50   ~ 0
A20
Text Label 2300 2950 2    50   ~ 0
A21
Text Label 2300 2850 2    50   ~ 0
A22
Text Label 2300 2750 2    50   ~ 0
A23
Text Label 2300 2650 2    50   ~ 0
A24
Text Label 2300 2550 2    50   ~ 0
A25
Text Label 2300 2450 2    50   ~ 0
A26
Text Label 2300 2350 2    50   ~ 0
A27
Text Label 2300 2250 2    50   ~ 0
A28
Text Label 2300 2150 2    50   ~ 0
A29
Text Label 2300 2050 2    50   ~ 0
A30
Text Label 2300 1950 2    50   ~ 0
A31
Text Label 2300 4950 2    50   ~ 0
D24
Text Label 2300 5050 2    50   ~ 0
D25
Text Label 2300 5150 2    50   ~ 0
D26
Text Label 2300 5250 2    50   ~ 0
D27
Text Label 2300 5350 2    50   ~ 0
D28
Text Label 2300 5450 2    50   ~ 0
D29
Text Label 2300 5550 2    50   ~ 0
D30
Text Label 2300 5650 2    50   ~ 0
D31
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61CE39C1
P 4150 1100
AR Path="/60CA1C9E/61CE39C1" Ref="J?"  Part="1" 
AR Path="/6139A6BE/61CE39C1" Ref="J1501"  Part="1" 
F 0 "J1501" H 4068 1517 50  0000 C CNN
F 1 "JTAG" H 4068 1426 50  0000 C CNN
F 2 "" H 4150 1100 50  0001 C CNN
F 3 "~" H 4150 1100 50  0001 C CNN
	1    4150 1100
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61CE39C7
P 4450 800
AR Path="/60CA1C9E/61CE39C7" Ref="#PWR?"  Part="1" 
AR Path="/6139A6BE/61CE39C7" Ref="#PWR01506"  Part="1" 
F 0 "#PWR01506" H 4450 650 50  0001 C CNN
F 1 "+5V" H 4465 973 50  0000 C CNN
F 2 "" H 4450 800 50  0001 C CNN
F 3 "" H 4450 800 50  0001 C CNN
	1    4450 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE39CD
P 4450 1500
AR Path="/60CA1C9E/61CE39CD" Ref="#PWR?"  Part="1" 
AR Path="/6139A6BE/61CE39CD" Ref="#PWR01507"  Part="1" 
F 0 "#PWR01507" H 4450 1250 50  0001 C CNN
F 1 "GND" H 4455 1327 50  0000 C CNN
F 2 "" H 4450 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1500 4450 1400
Wire Wire Line
	4450 1400 4350 1400
Wire Wire Line
	4450 900  4350 900 
Wire Wire Line
	4450 800  4450 900 
Wire Wire Line
	5200 1300 4900 1300
Wire Wire Line
	5200 1000 5000 1000
Wire Wire Line
	5200 1200 4350 1200
Text Label 4600 1100 0    50   ~ 0
TDI
Text Label 4600 1000 0    50   ~ 0
TCK
Text Label 4600 1300 0    50   ~ 0
TMS
Text Label 4600 1200 0    50   ~ 0
TDO
Text HLabel 5200 1000 2    50   Output ~ 0
JTAG_TCK
Text HLabel 5200 1300 2    50   Output ~ 0
JTAG_TMS
Text HLabel 4650 2250 2    50   Output ~ 0
JTAG_TDI
Text HLabel 5200 1200 2    50   Input ~ 0
JTAG_TDO
Wire Wire Line
	4450 1950 4800 1950
Wire Wire Line
	4800 1950 4800 1100
Wire Wire Line
	4800 1100 4350 1100
Wire Wire Line
	4450 2050 4900 2050
Wire Wire Line
	4900 2050 4900 1300
Connection ~ 4900 1300
Wire Wire Line
	4900 1300 4350 1300
Wire Wire Line
	4450 2150 5000 2150
Wire Wire Line
	5000 2150 5000 1000
Connection ~ 5000 1000
Wire Wire Line
	5000 1000 4350 1000
Wire Wire Line
	4450 2250 4650 2250
Text HLabel 7250 6100 2    50   Output ~ 0
~DSACK0
Text HLabel 7250 6650 2    50   Output ~ 0
~DSACK1
Text HLabel 6300 6150 0    50   Input ~ 0
~DRAM_DSACK0
Text HLabel 6300 6700 0    50   Input ~ 0
~DRAM_DSACK1
Text HLabel 1850 1750 0    50   Input ~ 0
A[0..31]
Text HLabel 1650 4750 0    50   BiDi ~ 0
D[0..31]
Text HLabel 4650 5850 2    50   Output ~ 0
~LDS
Text HLabel 4650 5950 2    50   Output ~ 0
~UDS
Text HLabel 4650 6050 2    50   Output ~ 0
E
Text HLabel 4650 5450 2    50   Output ~ 0
~EXT_DBEN
Text HLabel 7250 700  2    50   Output ~ 0
~EXT_IRQ[1..4]
Text HLabel 6300 6600 0    50   Input ~ 0
~DSACK1_EXT
Text HLabel 6300 6050 0    50   Input ~ 0
~DSACK0_EXT
Text HLabel 10500 4850 2    50   Input ~ 0
~EXT_PRD0[1..4]
Text HLabel 10500 4950 2    50   Input ~ 0
~EXT_PRD1[1..4]
Text HLabel 4650 5750 2    50   Input ~ 0
~EXT_DTACK
Text HLabel 4650 5650 2    50   Input ~ 0
~EXT_BERR
Text HLabel 4650 3450 2    50   Output ~ 0
~CS_ETH
Text HLabel 4650 3650 2    50   Input ~ 0
RESET
Text HLabel 6600 2950 0    50   Input ~ 0
INT_ETH
Text HLabel 8400 1550 0    50   Input ~ 0
~INT_DUART
Text HLabel 4650 3350 2    50   Output ~ 0
~CS_DUART
Text HLabel 4650 3950 2    50   Output ~ 0
~CS_KBD
Text HLabel 8400 1850 0    50   Input ~ 0
~INT_KBD
Text HLabel 4650 4050 2    50   Output ~ 0
~CS_RTC
Text HLabel 4650 4150 2    50   Output ~ 0
~CS_IDE
Text HLabel 10700 1150 2    50   Output ~ 0
~IPL[0..2]
$Comp
L 74xx:74LS148 U1506
U 1 1 613EF31A
P 9700 1750
F 0 "U1506" H 9550 2300 50  0000 C CNN
F 1 "74LS148" H 9900 1200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 9700 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS148" H 9700 1750 50  0001 C CNN
	1    9700 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network08 RN1501
U 1 1 613EF320
P 8800 1000
F 0 "RN1501" H 9188 1046 50  0000 L CNN
F 1 "10K" H 8700 1200 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 9275 1000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8800 1000 50  0001 C CNN
	1    8800 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1502
U 1 1 613EF326
P 6650 1650
F 0 "J1502" H 6568 1867 50  0000 C CNN
F 1 "NMI Reset" H 6568 1776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6650 1650 50  0001 C CNN
F 3 "~" H 6650 1650 50  0001 C CNN
	1    6650 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1501
U 1 1 613EF32C
P 7250 1650
F 0 "C1501" H 7365 1696 50  0000 L CNN
F 1 "100nF" H 7365 1605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7288 1500 50  0001 C CNN
F 3 "~" H 7250 1650 50  0001 C CNN
	1    7250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1350 7250 1500
Wire Wire Line
	6850 1650 7050 1650
Wire Wire Line
	7050 1650 7050 1350
Wire Wire Line
	7050 1350 7250 1350
Connection ~ 7250 1350
Wire Wire Line
	7250 1350 8400 1350
Wire Wire Line
	8400 1200 8400 1350
Connection ~ 8400 1350
Wire Wire Line
	8400 1350 9200 1350
Wire Wire Line
	8500 1200 8500 1450
Wire Wire Line
	8500 1450 9200 1450
Wire Wire Line
	8600 1200 8600 1550
Wire Wire Line
	8600 1550 9200 1550
$Comp
L power:GND #PWR01512
U 1 1 613EF369
P 7250 2050
F 0 "#PWR01512" H 7250 1800 50  0001 C CNN
F 1 "GND" H 7255 1877 50  0000 C CNN
F 2 "" H 7250 2050 50  0001 C CNN
F 3 "" H 7250 2050 50  0001 C CNN
	1    7250 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01518
U 1 1 613EF36F
P 9700 1000
F 0 "#PWR01518" H 9700 850 50  0001 C CNN
F 1 "+5V" H 9715 1173 50  0000 C CNN
F 2 "" H 9700 1000 50  0001 C CNN
F 3 "" H 9700 1000 50  0001 C CNN
	1    9700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01513
U 1 1 613EF375
P 8400 750
F 0 "#PWR01513" H 8400 600 50  0001 C CNN
F 1 "+5V" H 8415 923 50  0000 C CNN
F 2 "" H 8400 750 50  0001 C CNN
F 3 "" H 8400 750 50  0001 C CNN
	1    8400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1000 9700 1050
Wire Wire Line
	8400 750  8400 800 
Wire Wire Line
	7250 2050 7250 1950
Wire Wire Line
	6850 1750 7050 1750
Wire Wire Line
	7050 1750 7050 1950
Wire Wire Line
	7050 1950 7250 1950
Connection ~ 7250 1950
Wire Wire Line
	7250 1950 7250 1800
$Comp
L power:GND #PWR01515
U 1 1 613EF384
P 9150 2200
F 0 "#PWR01515" H 9150 1950 50  0001 C CNN
F 1 "GND" H 9155 2027 50  0000 C CNN
F 2 "" H 9150 2200 50  0001 C CNN
F 3 "" H 9150 2200 50  0001 C CNN
	1    9150 2200
	1    0    0    -1  
$EndComp
Entry Wire Line
	10500 1350 10600 1250
Entry Wire Line
	10600 1350 10500 1450
Entry Wire Line
	10600 1450 10500 1550
Wire Wire Line
	10200 1550 10500 1550
Wire Wire Line
	10500 1450 10200 1450
Wire Wire Line
	10200 1350 10500 1350
Wire Bus Line
	10600 1150 10700 1150
Text Label 10300 1350 0    50   ~ 0
~IPL0
Text Label 10300 1450 0    50   ~ 0
~IPL1
Text Label 10300 1550 0    50   ~ 0
~IPL2
NoConn ~ 10200 1850
NoConn ~ 10200 1950
Wire Wire Line
	9700 2500 9700 2450
$Comp
L power:GND #PWR01519
U 1 1 613EF398
P 9700 2500
F 0 "#PWR01519" H 9700 2250 50  0001 C CNN
F 1 "GND" H 9705 2327 50  0000 C CNN
F 2 "" H 9700 2500 50  0001 C CNN
F 3 "" H 9700 2500 50  0001 C CNN
	1    9700 2500
	1    0    0    -1  
$EndComp
Text HLabel 4650 4550 2    50   Output ~ 0
~CS_ROM
Text HLabel 4650 4650 2    50   Output ~ 0
~CS_SRAM
NoConn ~ 7450 4200
NoConn ~ 7450 4300
NoConn ~ 7450 4400
NoConn ~ 7450 4600
NoConn ~ 7450 4700
NoConn ~ 7450 4800
NoConn ~ 7450 4900
Wire Wire Line
	6650 4800 6550 4800
Wire Wire Line
	6550 4300 6650 4300
Wire Wire Line
	6000 4100 6000 4150
$Comp
L power:+5V #PWR01508
U 1 1 617636DB
P 6000 4100
F 0 "#PWR01508" H 6000 3950 50  0001 C CNN
F 1 "+5V" H 6015 4273 50  0000 C CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4500 7700 4500
Wire Wire Line
	7050 5150 7050 5100
$Comp
L power:GND #PWR01511
U 1 1 617636E3
P 7050 5150
F 0 "#PWR01511" H 7050 4900 50  0001 C CNN
F 1 "GND" H 7055 4977 50  0000 C CNN
F 2 "" H 7050 5150 50  0001 C CNN
F 3 "" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
Text Label 6550 4300 2    50   ~ 0
~RESET
Text Label 6550 4800 2    50   ~ 0
~AS
Text Label 7700 4500 0    50   ~ 0
BOOTROM
$Comp
L Device:R R1501
U 1 1 617636EC
P 6000 4300
F 0 "R1501" H 6070 4346 50  0000 L CNN
F 1 "4K7" H 6070 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 4300 50  0001 C CNN
F 3 "~" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC164 U1504
U 1 1 617636F2
P 7050 4500
F 0 "U1504" H 7300 5000 50  0000 C CNN
F 1 "74HC164" H 7250 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7050 4500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT164.pdf" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4600 6000 4500
Wire Wire Line
	6000 4600 6650 4600
Wire Wire Line
	6000 4500 6650 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4500 6000 4450
$Comp
L power:+5V #PWR01510
U 1 1 617636FD
P 7050 3900
F 0 "#PWR01510" H 7050 3750 50  0001 C CNN
F 1 "+5V" H 7065 4073 50  0000 C CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0001 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3900 7050 4000
Entry Wire Line
	1950 1850 2050 1950
Entry Wire Line
	1950 1950 2050 2050
Entry Wire Line
	1950 2050 2050 2150
Entry Wire Line
	1950 2150 2050 2250
Entry Wire Line
	1950 2250 2050 2350
Entry Wire Line
	1950 2350 2050 2450
Entry Wire Line
	1950 2450 2050 2550
Entry Wire Line
	1950 2550 2050 2650
Entry Wire Line
	1950 2650 2050 2750
Entry Wire Line
	1950 2750 2050 2850
Entry Wire Line
	1950 2850 2050 2950
Entry Wire Line
	1950 3050 2050 3150
Entry Wire Line
	1950 3150 2050 3250
Entry Wire Line
	1950 3250 2050 3350
Entry Wire Line
	1950 3350 2050 3450
Entry Wire Line
	1950 3450 2050 3550
Entry Wire Line
	1950 3550 2050 3650
Entry Wire Line
	1950 3650 2050 3750
Entry Wire Line
	1950 3750 2050 3850
Entry Wire Line
	1950 3850 2050 3950
Entry Wire Line
	1950 3950 2050 4050
Entry Wire Line
	1950 4050 2050 4150
Entry Wire Line
	1950 4250 2050 4350
Entry Wire Line
	1950 4350 2050 4450
Entry Wire Line
	1950 4450 2050 4550
Entry Wire Line
	1950 4550 2050 4650
Entry Wire Line
	1950 4650 2050 4750
Entry Wire Line
	1950 4750 2050 4850
Entry Wire Line
	1750 4850 1850 4950
Entry Wire Line
	1750 4950 1850 5050
Entry Wire Line
	1750 5050 1850 5150
Entry Wire Line
	1750 5150 1850 5250
Entry Wire Line
	1750 5250 1850 5350
Entry Wire Line
	1750 5350 1850 5450
Entry Wire Line
	1750 5450 1850 5550
Entry Wire Line
	1750 5550 1850 5650
Wire Wire Line
	2450 1950 2050 1950
Wire Wire Line
	2450 2050 2050 2050
Wire Wire Line
	2450 2150 2050 2150
Wire Wire Line
	2450 2250 2050 2250
Wire Wire Line
	2450 2350 2050 2350
Wire Wire Line
	2450 2450 2050 2450
Wire Wire Line
	2450 2550 2050 2550
Wire Wire Line
	2450 2650 2050 2650
Wire Wire Line
	2450 2750 2050 2750
Wire Wire Line
	2450 2850 2050 2850
Wire Wire Line
	2450 2950 2050 2950
Wire Wire Line
	2450 3150 2050 3150
Wire Wire Line
	2450 3250 2050 3250
Wire Wire Line
	2450 3350 2050 3350
Wire Wire Line
	2450 3450 2050 3450
Wire Wire Line
	2450 3550 2050 3550
Wire Wire Line
	2450 3650 2050 3650
Wire Wire Line
	2450 3750 2050 3750
Wire Wire Line
	2450 3850 2050 3850
Wire Wire Line
	2450 3950 2050 3950
Wire Wire Line
	2450 4050 2050 4050
Wire Wire Line
	2450 4150 2050 4150
Wire Wire Line
	2450 4350 2050 4350
Wire Wire Line
	2450 4450 2050 4450
Wire Wire Line
	2450 4550 2050 4550
Wire Wire Line
	2450 4650 2050 4650
Wire Wire Line
	2450 4750 2050 4750
Wire Wire Line
	2450 4850 2050 4850
Wire Wire Line
	2450 4950 1850 4950
Wire Wire Line
	2450 5050 1850 5050
Wire Wire Line
	2450 5150 1850 5150
Wire Wire Line
	2450 5250 1850 5250
Wire Wire Line
	2450 5350 1850 5350
Wire Wire Line
	2450 5450 1850 5450
Wire Wire Line
	2450 5550 1850 5550
Wire Wire Line
	2450 5650 1850 5650
Wire Bus Line
	1750 4750 1650 4750
Wire Bus Line
	1950 1750 1850 1750
Wire Wire Line
	4650 4750 4450 4750
Wire Wire Line
	4650 4850 4450 4850
Text HLabel 4650 3550 2    50   Output ~ 0
~RESET
Text Label 6300 5950 2    50   ~ 0
~CPLD_DSACK0
Text Label 6300 6500 2    50   ~ 0
~CPLD_DSACK1
$Comp
L 74xx:74LS541 U1505
U 1 1 615D2430
P 9450 3900
F 0 "U1505" H 9200 4550 50  0000 C CNN
F 1 "74LS541" H 9650 4550 50  0000 C CNN
F 2 "" H 9450 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
Text Label 8850 3400 2    50   ~ 0
~EXT_PRD01
Text Label 8850 3600 2    50   ~ 0
~EXT_PRD02
Text Label 8850 3800 2    50   ~ 0
~EXT_PRD03
Text Label 8850 4000 2    50   ~ 0
~EXT_PRD04
Text Label 8850 3500 2    50   ~ 0
~EXT_PRD11
Text Label 8850 3700 2    50   ~ 0
~EXT_PRD12
Text Label 8850 3900 2    50   ~ 0
~EXT_PRD13
Text Label 8850 4100 2    50   ~ 0
~EXT_PRD14
Text HLabel 10500 3200 2    50   BiDi ~ 0
D[0..31]
Entry Wire Line
	10400 3300 10300 3400
Entry Wire Line
	10400 3400 10300 3500
Entry Wire Line
	10400 3500 10300 3600
Entry Wire Line
	10400 3600 10300 3700
Entry Wire Line
	10400 3700 10300 3800
Entry Wire Line
	10400 3800 10300 3900
Entry Wire Line
	10400 3900 10300 4000
Entry Wire Line
	10400 4000 10300 4100
Wire Wire Line
	9950 3400 10300 3400
Wire Wire Line
	9950 3500 10300 3500
Wire Wire Line
	9950 3600 10300 3600
Wire Wire Line
	9950 3700 10300 3700
Wire Wire Line
	9950 3800 10300 3800
Wire Wire Line
	9950 3900 10300 3900
Wire Wire Line
	9950 4000 10300 4000
Wire Wire Line
	9950 4100 10300 4100
Wire Bus Line
	10400 3200 10500 3200
Text Label 10050 3400 0    50   ~ 0
D24
Text Label 10050 3500 0    50   ~ 0
D25
Text Label 10050 3600 0    50   ~ 0
D26
Text Label 10050 3700 0    50   ~ 0
D27
Text Label 10050 3800 0    50   ~ 0
D28
Text Label 10050 3900 0    50   ~ 0
D29
Text Label 10050 4000 0    50   ~ 0
D30
Text Label 10050 4100 0    50   ~ 0
D31
Wire Wire Line
	8950 3400 8850 3400
Wire Wire Line
	8950 3500 8850 3500
Wire Wire Line
	8950 3600 8850 3600
Wire Wire Line
	8950 3700 8850 3700
Wire Wire Line
	8950 3800 8850 3800
Wire Wire Line
	8950 3900 8850 3900
Wire Wire Line
	8950 4000 8850 4000
Wire Wire Line
	8950 4100 8850 4100
Text Label 10350 4850 2    50   ~ 0
~EXT_PRD0[1..4]
Text Label 10350 4950 2    50   ~ 0
~EXT_PRD1[1..4]
Wire Bus Line
	10350 4850 10500 4850
Wire Bus Line
	10500 4950 10350 4950
$Comp
L power:+5V #PWR01516
U 1 1 616B834A
P 9450 3050
F 0 "#PWR01516" H 9450 2900 50  0001 C CNN
F 1 "+5V" H 9465 3223 50  0000 C CNN
F 2 "" H 9450 3050 50  0001 C CNN
F 3 "" H 9450 3050 50  0001 C CNN
	1    9450 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01517
U 1 1 616B89A7
P 9450 4750
F 0 "#PWR01517" H 9450 4500 50  0001 C CNN
F 1 "GND" H 9455 4577 50  0000 C CNN
F 2 "" H 9450 4750 50  0001 C CNN
F 3 "" H 9450 4750 50  0001 C CNN
	1    9450 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01514
U 1 1 616B8D51
P 8850 4500
F 0 "#PWR01514" H 8850 4250 50  0001 C CNN
F 1 "GND" H 8855 4327 50  0000 C CNN
F 2 "" H 8850 4500 50  0001 C CNN
F 3 "" H 8850 4500 50  0001 C CNN
	1    8850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4400 8850 4400
Wire Wire Line
	8850 4400 8850 4500
Wire Wire Line
	9450 4700 9450 4750
Wire Wire Line
	9450 3100 9450 3050
Text Label 8850 4300 2    50   ~ 0
~CS_CARDPRD
Wire Wire Line
	8950 4300 8850 4300
Text Label 4650 2450 0    50   ~ 0
~CS_CARDPRD
Wire Wire Line
	4450 2450 4650 2450
Wire Wire Line
	6700 2950 6600 2950
Wire Wire Line
	6600 2550 6700 2550
$Comp
L Oscillator:ACO-xxxMHz X1501
U 1 1 6170296C
P 1650 6750
F 0 "X1501" H 2000 6650 50  0000 R CNN
F 1 "ACO-xxxMHz" H 2200 6500 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2100 6400 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1550 6750 50  0001 C CNN
	1    1650 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6750 2050 6750
Wire Wire Line
	2050 6750 2050 6150
Wire Wire Line
	2450 6150 2050 6150
Text HLabel 8400 1950 0    50   Input ~ 0
~INT_IDE
Wire Wire Line
	8600 1550 8400 1550
Connection ~ 8600 1550
Wire Wire Line
	7300 2550 7800 2550
Wire Wire Line
	7800 2550 7800 1650
Wire Wire Line
	7300 2950 7900 2950
Wire Wire Line
	7900 2950 7900 1750
$Comp
L 74xx:74LS04 U1502
U 1 1 61791A6A
P 7000 2550
F 0 "U1502" H 6650 2700 50  0000 C CNN
F 1 "74LS04" H 7200 2700 50  0000 C CNN
F 2 "" H 7000 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7000 2550 50  0001 C CNN
	1    7000 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1502
U 2 1 61792459
P 7000 2950
F 0 "U1502" H 6650 3100 50  0000 C CNN
F 1 "74LS04" H 7200 3100 50  0000 C CNN
F 2 "" H 7000 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7000 2950 50  0001 C CNN
	2    7000 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1502
U 6 1 6179414D
P 4300 7450
F 0 "U1502" H 4300 7767 50  0000 C CNN
F 1 "74LS04" H 4300 7676 50  0000 C CNN
F 2 "" H 4300 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4300 7450 50  0001 C CNN
	6    4300 7450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1502
U 7 1 61794A1E
P 10100 6300
F 0 "U1502" H 10400 6650 50  0000 R CNN
F 1 "74LS04" H 10450 5950 50  0000 R CNN
F 2 "" H 10100 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10100 6300 50  0001 C CNN
	7    10100 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 1650 9200 1650
Wire Wire Line
	7900 1750 9200 1750
Wire Wire Line
	8400 1850 8700 1850
Wire Wire Line
	8400 1950 8800 1950
Wire Wire Line
	8700 1200 8700 1850
Connection ~ 8700 1850
Wire Wire Line
	8700 1850 9200 1850
Wire Wire Line
	8800 1200 8800 1950
Connection ~ 8800 1950
Wire Wire Line
	8800 1950 9200 1950
Wire Wire Line
	8800 2050 9200 2050
$Comp
L 74xx:74LS21 U1503
U 1 1 617CBEF9
P 6850 6100
F 0 "U1503" H 6750 6350 50  0000 C CNN
F 1 "74LS21" H 7100 6300 50  0000 C CNN
F 2 "" H 6850 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 6850 6100 50  0001 C CNN
	1    6850 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS21 U1503
U 2 1 617CCDAA
P 6850 6650
F 0 "U1503" H 6750 6900 50  0000 C CNN
F 1 "74LS21" H 7100 6850 50  0000 C CNN
F 2 "" H 6850 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 6850 6650 50  0001 C CNN
	2    6850 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS21 U1503
U 3 1 617CD539
P 10600 6300
F 0 "U1503" H 10700 6650 50  0000 L CNN
F 1 "74LS21" H 10700 5950 50  0000 L CNN
F 2 "" H 10600 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 10600 6300 50  0001 C CNN
	3    10600 6300
	1    0    0    -1  
$EndComp
Text HLabel 4650 5550 2    50   Input ~ 0
~DTACK_DUART
Wire Wire Line
	6550 5950 6300 5950
Wire Wire Line
	6550 6050 6300 6050
Wire Wire Line
	6550 6150 6300 6150
Wire Wire Line
	6550 6500 6300 6500
Wire Wire Line
	6550 6600 6300 6600
Wire Wire Line
	6550 6700 6300 6700
$Comp
L power:+5V #PWR01509
U 1 1 6183C7EC
P 6450 5800
F 0 "#PWR01509" H 6450 5650 50  0001 C CNN
F 1 "+5V" H 6465 5973 50  0000 C CNN
F 2 "" H 6450 5800 50  0001 C CNN
F 3 "" H 6450 5800 50  0001 C CNN
	1    6450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5800 6450 6250
Wire Wire Line
	6450 6800 6550 6800
Wire Wire Line
	6550 6250 6450 6250
Connection ~ 6450 6250
Wire Wire Line
	6450 6250 6450 6800
Wire Wire Line
	7250 6100 7150 6100
Wire Wire Line
	7150 6650 7250 6650
Entry Wire Line
	7150 800  7050 900 
Entry Wire Line
	7150 900  7050 1000
Entry Wire Line
	7150 1000 7050 1100
Entry Wire Line
	7150 1100 7050 1200
Text Label 6950 900  2    50   ~ 0
~EXT_IRQ1
Text Label 6950 1000 2    50   ~ 0
~EXT_IRQ2
Text Label 6950 1100 2    50   ~ 0
~EXT_IRQ3
Text Label 6950 1200 2    50   ~ 0
~EXT_IRQ4
Wire Wire Line
	6950 900  7050 900 
Wire Wire Line
	6950 1000 7050 1000
Wire Wire Line
	6950 1100 7050 1100
Wire Wire Line
	6950 1200 7050 1200
Wire Bus Line
	7250 700  7150 700 
Text Label 8350 1450 2    50   ~ 0
~EXT_IRQ1
Wire Wire Line
	8500 1450 8350 1450
Connection ~ 8500 1450
Text Label 4650 3150 0    50   ~ 0
~EXT_IRQ2
Text Label 4650 3050 0    50   ~ 0
~EXT_IRQ3
Text Label 4650 2950 0    50   ~ 0
~EXT_IRQ4
Text Label 4650 2850 0    50   ~ 0
~CPLD_INT
Text Label 8400 2150 2    50   ~ 0
~CPLD_INT
Wire Wire Line
	8400 2150 8800 2150
Wire Wire Line
	8800 2050 8800 2150
Wire Wire Line
	9200 2150 9150 2150
Wire Wire Line
	9150 2150 9150 2200
Wire Wire Line
	4650 2850 4450 2850
Wire Wire Line
	4650 2950 4450 2950
Wire Wire Line
	4650 3050 4450 3050
Wire Wire Line
	4650 3150 4450 3150
Wire Wire Line
	4650 3350 4450 3350
Wire Wire Line
	4650 3450 4450 3450
Wire Wire Line
	4650 3550 4450 3550
Wire Wire Line
	4650 3650 4450 3650
Wire Wire Line
	4650 3950 4450 3950
Wire Wire Line
	4650 4050 4450 4050
Wire Wire Line
	4650 4150 4450 4150
Wire Wire Line
	4650 4250 4450 4250
Wire Wire Line
	4650 4350 4450 4350
Wire Wire Line
	4650 4450 4450 4450
Wire Wire Line
	4650 4550 4450 4550
Wire Wire Line
	4650 4650 4450 4650
Wire Wire Line
	4650 5450 4450 5450
Wire Wire Line
	4650 5550 4450 5550
Wire Wire Line
	4650 5650 4450 5650
Wire Wire Line
	4650 5750 4450 5750
Wire Wire Line
	4650 5850 4450 5850
Wire Wire Line
	4650 5950 4450 5950
Wire Wire Line
	4650 6050 4450 6050
$Comp
L power:GND #PWR01502
U 1 1 61B21D9C
P 1650 7100
F 0 "#PWR01502" H 1650 6850 50  0001 C CNN
F 1 "GND" H 1655 6927 50  0000 C CNN
F 2 "" H 1650 7100 50  0001 C CNN
F 3 "" H 1650 7100 50  0001 C CNN
	1    1650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7100 1650 7050
$Comp
L power:+5V #PWR01501
U 1 1 61B316EE
P 1650 6400
F 0 "#PWR01501" H 1650 6250 50  0001 C CNN
F 1 "+5V" H 1665 6573 50  0000 C CNN
F 2 "" H 1650 6400 50  0001 C CNN
F 3 "" H 1650 6400 50  0001 C CNN
	1    1650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6400 1650 6450
Text HLabel 4650 6150 2    50   Output ~ 0
~BERR
Wire Wire Line
	4450 6150 4650 6150
$Comp
L power:GND #PWR01521
U 1 1 61B9FF21
P 10100 6850
F 0 "#PWR01521" H 10100 6600 50  0001 C CNN
F 1 "GND" H 10105 6677 50  0000 C CNN
F 2 "" H 10100 6850 50  0001 C CNN
F 3 "" H 10100 6850 50  0001 C CNN
	1    10100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01523
U 1 1 61BA039D
P 10600 6850
F 0 "#PWR01523" H 10600 6600 50  0001 C CNN
F 1 "GND" H 10605 6677 50  0000 C CNN
F 2 "" H 10600 6850 50  0001 C CNN
F 3 "" H 10600 6850 50  0001 C CNN
	1    10600 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01520
U 1 1 61BA061B
P 10100 5750
F 0 "#PWR01520" H 10100 5600 50  0001 C CNN
F 1 "+5V" H 10115 5923 50  0000 C CNN
F 2 "" H 10100 5750 50  0001 C CNN
F 3 "" H 10100 5750 50  0001 C CNN
	1    10100 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01522
U 1 1 61BA0872
P 10600 5750
F 0 "#PWR01522" H 10600 5600 50  0001 C CNN
F 1 "+5V" H 10615 5923 50  0000 C CNN
F 2 "" H 10600 5750 50  0001 C CNN
F 3 "" H 10600 5750 50  0001 C CNN
	1    10600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5800 10100 5750
Wire Wire Line
	10600 5800 10600 5750
Wire Wire Line
	10600 6850 10600 6800
Wire Wire Line
	10100 6850 10100 6800
$Comp
L power:+5V #PWR01505
U 1 1 61BF0865
P 3800 7250
F 0 "#PWR01505" H 3800 7100 50  0001 C CNN
F 1 "+5V" H 3815 7423 50  0000 C CNN
F 2 "" H 3800 7250 50  0001 C CNN
F 3 "" H 3800 7250 50  0001 C CNN
	1    3800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7250 3800 7450
Wire Wire Line
	3800 7450 4000 7450
Wire Wire Line
	3800 7450 3800 7650
Connection ~ 3800 7450
NoConn ~ 4600 7450
Text HLabel 4650 2650 2    50   Input ~ 0
~FPUSENSE
Text HLabel 4650 2550 2    50   Output ~ 0
~CS_FPU
Text HLabel 4650 6250 2    50   Input ~ 0
SIZ0
Text HLabel 4650 6350 2    50   Input ~ 0
SIZ1
Text HLabel 4650 6450 2    50   Input ~ 0
~DS
Text HLabel 4650 3250 2    50   Input ~ 0
~AS
Text HLabel 2300 5850 0    50   Input ~ 0
~CDIS
Text HLabel 2300 5950 0    50   Input ~ 0
~MMUDIS
Wire Wire Line
	4650 3250 4450 3250
Wire Wire Line
	4650 2550 4450 2550
Wire Wire Line
	4450 2650 4650 2650
Text HLabel 4650 3850 2    50   Input ~ 0
R~W
Wire Wire Line
	4650 3850 4450 3850
Wire Wire Line
	4650 6450 4450 6450
Wire Wire Line
	4650 6350 4450 6350
Wire Wire Line
	4450 6250 4650 6250
Wire Wire Line
	2450 5850 2300 5850
Wire Wire Line
	2300 5950 2450 5950
Text HLabel 4650 4850 2    50   Output ~ 0
~CS_DRAM
Text HLabel 4650 4750 2    50   Output ~ 0
~CS_DRAMCPLD
Text HLabel 2800 7150 2    50   Input ~ 0
FC[0..2]
Entry Wire Line
	2600 7350 2700 7250
Entry Wire Line
	2700 7350 2600 7450
Entry Wire Line
	2700 7450 2600 7550
Wire Wire Line
	2300 7550 2600 7550
Wire Wire Line
	2600 7450 2300 7450
Wire Wire Line
	2300 7350 2600 7350
Wire Bus Line
	2700 7150 2800 7150
Text Label 2400 7350 0    50   ~ 0
FC0
Text Label 2400 7450 0    50   ~ 0
FC1
Text Label 2400 7550 0    50   ~ 0
FC2
Wire Wire Line
	8350 6750 8250 6750
Wire Wire Line
	9050 6750 8950 6750
$Comp
L 74xx:74LS04 U1502
U 4 1 61793343
P 8650 6750
F 0 "U1502" H 8300 6900 50  0000 C CNN
F 1 "74LS04" H 8850 6900 50  0000 C CNN
F 2 "" H 8650 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8650 6750 50  0001 C CNN
	4    8650 6750
	1    0    0    -1  
$EndComp
Text HLabel 9050 6750 2    50   Output ~ 0
~RD~WR
Wire Wire Line
	3800 7650 4700 7650
NoConn ~ 5350 7450
Wire Wire Line
	4700 7450 4700 7650
Wire Wire Line
	4750 7450 4700 7450
Text HLabel 8750 5350 2    50   Output ~ 0
CLK10
$Comp
L 74xx:74LS04 U1502
U 5 1 61793B51
P 5050 7450
F 0 "U1502" H 5050 7767 50  0000 C CNN
F 1 "74LS04" H 5050 7676 50  0000 C CNN
F 2 "" H 5050 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5050 7450 50  0001 C CNN
	5    5050 7450
	1    0    0    -1  
$EndComp
Text HLabel 8250 6750 0    50   Input ~ 0
R~W
Wire Bus Line
	2700 7150 2700 7450
Wire Bus Line
	7150 700  7150 1100
Wire Bus Line
	10400 3200 10400 4000
Wire Bus Line
	1750 4750 1750 5550
Wire Bus Line
	1950 1750 1950 4750
Wire Bus Line
	10600 1150 10600 1450
NoConn ~ 6050 7450
Connection ~ 4700 7650
Wire Wire Line
	4700 7650 5400 7650
Wire Wire Line
	5400 7650 5400 7450
Wire Wire Line
	5400 7450 5450 7450
$Comp
L 74xx:74LS04 U1502
U 3 1 617929A1
P 5750 7450
F 0 "U1502" H 5750 7767 50  0000 C CNN
F 1 "74LS04" H 5750 7676 50  0000 C CNN
F 2 "" H 5750 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5750 7450 50  0001 C CNN
	3    5750 7450
	1    0    0    -1  
$EndComp
Text HLabel 4650 4250 2    50   Output ~ 0
RD~WR
$EndSCHEMATC
