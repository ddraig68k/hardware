EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 15 16
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
L power:+5V #PWR01503
U 1 1 61738A8A
P 3600 2000
F 0 "#PWR01503" H 3600 1850 50  0001 C CNN
F 1 "+5V" H 3615 2173 50  0000 C CNN
F 2 "" H 3600 2000 50  0001 C CNN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2100 3300 2050
Wire Wire Line
	3300 2050 3400 2050
Wire Wire Line
	3900 2050 3900 2100
Wire Wire Line
	3800 2100 3800 2050
Connection ~ 3800 2050
Wire Wire Line
	3800 2050 3900 2050
Wire Wire Line
	3400 2100 3400 2050
Connection ~ 3400 2050
Wire Wire Line
	3400 2050 3500 2050
Wire Wire Line
	3500 2100 3500 2050
Connection ~ 3500 2050
Wire Wire Line
	3500 2050 3600 2050
Wire Wire Line
	3700 2100 3700 2050
Connection ~ 3700 2050
Wire Wire Line
	3700 2050 3800 2050
Wire Wire Line
	3600 2100 3600 2050
Connection ~ 3600 2050
Wire Wire Line
	3600 2050 3700 2050
Wire Wire Line
	3600 2000 3600 2050
Wire Wire Line
	3300 7200 3300 7250
Wire Wire Line
	3300 7250 3400 7250
Wire Wire Line
	4000 7250 4000 7200
Wire Wire Line
	3900 7200 3900 7250
Connection ~ 3900 7250
Wire Wire Line
	3900 7250 4000 7250
Wire Wire Line
	3400 7200 3400 7250
Connection ~ 3400 7250
Wire Wire Line
	3400 7250 3500 7250
Wire Wire Line
	3500 7200 3500 7250
Connection ~ 3500 7250
Wire Wire Line
	3500 7250 3600 7250
Wire Wire Line
	3800 7200 3800 7250
Connection ~ 3800 7250
Wire Wire Line
	3800 7250 3900 7250
Wire Wire Line
	3600 7200 3600 7250
Connection ~ 3600 7250
Wire Wire Line
	3600 7250 3650 7250
Wire Wire Line
	3700 7200 3700 7250
Connection ~ 3700 7250
Wire Wire Line
	3700 7250 3800 7250
$Comp
L power:GND #PWR01504
U 1 1 6173BF38
P 3650 7300
F 0 "#PWR01504" H 3650 7050 50  0001 C CNN
F 1 "GND" H 3655 7127 50  0000 C CNN
F 2 "" H 3650 7300 50  0001 C CNN
F 3 "" H 3650 7300 50  0001 C CNN
	1    3650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7300 3650 7250
Connection ~ 3650 7250
Wire Wire Line
	3650 7250 3700 7250
Text Label 2450 5100 2    50   ~ 0
D24
Text Label 2450 5200 2    50   ~ 0
D25
Text Label 2450 5300 2    50   ~ 0
D26
Text Label 2450 5400 2    50   ~ 0
D27
Text Label 2450 5500 2    50   ~ 0
D28
Text Label 2450 5600 2    50   ~ 0
D29
Text Label 2450 5700 2    50   ~ 0
D30
Text Label 2450 5800 2    50   ~ 0
D31
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61CE39C1
P 4300 1550
AR Path="/60CA1C9E/61CE39C1" Ref="J?"  Part="1" 
AR Path="/6139A6BE/61CE39C1" Ref="J1501"  Part="1" 
F 0 "J1501" H 4218 1967 50  0000 C CNN
F 1 "JTAG" H 4218 1876 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 4300 1550 50  0001 C CNN
F 3 "~" H 4300 1550 50  0001 C CNN
	1    4300 1550
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61CE39C7
P 4600 1250
AR Path="/60CA1C9E/61CE39C7" Ref="#PWR?"  Part="1" 
AR Path="/6139A6BE/61CE39C7" Ref="#PWR01506"  Part="1" 
F 0 "#PWR01506" H 4600 1100 50  0001 C CNN
F 1 "+5V" H 4615 1423 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CE39CD
P 4600 1950
AR Path="/60CA1C9E/61CE39CD" Ref="#PWR?"  Part="1" 
AR Path="/6139A6BE/61CE39CD" Ref="#PWR01507"  Part="1" 
F 0 "#PWR01507" H 4600 1700 50  0001 C CNN
F 1 "GND" H 4605 1777 50  0000 C CNN
F 2 "" H 4600 1950 50  0001 C CNN
F 3 "" H 4600 1950 50  0001 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1950 4600 1850
Wire Wire Line
	4600 1850 4500 1850
Wire Wire Line
	4600 1350 4500 1350
Wire Wire Line
	4600 1250 4600 1350
Wire Wire Line
	5350 1750 5050 1750
Wire Wire Line
	5350 1450 5150 1450
Wire Wire Line
	5350 1650 4500 1650
Text Label 4750 1550 0    50   ~ 0
TDI
Text Label 4750 1450 0    50   ~ 0
TCK
Text Label 4750 1750 0    50   ~ 0
TMS
Text Label 4750 1650 0    50   ~ 0
TDO
Text HLabel 5350 1450 2    50   Output ~ 0
JTAG_TCK
Text HLabel 5350 1750 2    50   Output ~ 0
JTAG_TMS
Text HLabel 4800 2700 2    50   Output ~ 0
JTAG_TDI
Text HLabel 5350 1650 2    50   Input ~ 0
JTAG_TDO
Wire Wire Line
	4600 2400 4950 2400
Wire Wire Line
	4950 2400 4950 1550
Wire Wire Line
	4950 1550 4500 1550
Wire Wire Line
	4600 2500 5050 2500
Wire Wire Line
	5050 2500 5050 1750
Connection ~ 5050 1750
Wire Wire Line
	5050 1750 4500 1750
Wire Wire Line
	4600 2600 5150 2600
Wire Wire Line
	5150 2600 5150 1450
Connection ~ 5150 1450
Wire Wire Line
	5150 1450 4500 1450
Wire Wire Line
	4600 2700 4800 2700
Text HLabel 9300 7400 2    50   Output ~ 0
~DSACK0
Text HLabel 9300 7950 2    50   Output ~ 0
~DSACK1
Text HLabel 6550 7450 0    50   Input ~ 0
~DRAM_DSACK0
Text HLabel 6550 8000 0    50   Input ~ 0
~DRAM_DSACK1
Text HLabel 2000 2200 0    50   Input ~ 0
A[0..31]
Text HLabel 1700 4900 0    50   BiDi ~ 0
D[0..31]
Text HLabel 4800 6200 2    50   Output ~ 0
~LDS
Text HLabel 4800 6300 2    50   Output ~ 0
~UDS
Text HLabel 4800 6400 2    50   Output ~ 0
E
Text HLabel 4800 5800 2    50   Output ~ 0
~EXT_DBEN
Text HLabel 15250 4550 2    50   Output ~ 0
~EXT_IRQ[1..4]
Text HLabel 6550 7900 0    50   Input ~ 0
~DSACK1_EXT
Text HLabel 6550 7350 0    50   Input ~ 0
~DSACK0_EXT
Text HLabel 14950 7600 2    50   Input ~ 0
~EXT_PRD0[1..4]
Text HLabel 14950 7700 2    50   Input ~ 0
~EXT_PRD1[1..4]
Text HLabel 4800 6100 2    50   Input ~ 0
~EXT_DTACK
Text HLabel 4800 6000 2    50   Input ~ 0
~EXT_BERR
Text HLabel 4800 3800 2    50   Output ~ 0
~CS_ETH
Text HLabel 4800 4000 2    50   Input ~ 0
RESET
Text HLabel 10600 3300 0    50   Input ~ 0
INT_ETH
Text HLabel 12400 1900 0    50   Input ~ 0
~INT_DUART
Text HLabel 4800 3700 2    50   Output ~ 0
~CS_DUART
Text HLabel 4800 4300 2    50   Output ~ 0
~CS_KBD
Text HLabel 12400 2200 0    50   Input ~ 0
~INT_KBD
Text HLabel 4800 4400 2    50   Output ~ 0
~CS_RTC
Text HLabel 4800 4500 2    50   Output ~ 0
~CS_IDE
Text HLabel 14700 1500 2    50   Output ~ 0
~IPL[0..2]
$Comp
L 74xx:74LS148 U1507
U 1 1 613EF31A
P 13700 2100
F 0 "U1507" H 13550 2650 50  0000 C CNN
F 1 "74LS148" H 13900 1550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 13700 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS148" H 13700 2100 50  0001 C CNN
	1    13700 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network08 RN1501
U 1 1 613EF320
P 12800 1350
F 0 "RN1501" H 13188 1396 50  0000 L CNN
F 1 "10K" H 12700 1550 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 13275 1350 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 12800 1350 50  0001 C CNN
	1    12800 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1502
U 1 1 613EF326
P 10650 2000
F 0 "J1502" H 10568 2217 50  0000 C CNN
F 1 "NMI Reset" H 10568 2126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10650 2000 50  0001 C CNN
F 3 "~" H 10650 2000 50  0001 C CNN
	1    10650 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1501
U 1 1 613EF32C
P 11250 2000
F 0 "C1501" H 11365 2046 50  0000 L CNN
F 1 "100nF" H 11365 1955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 11288 1850 50  0001 C CNN
F 3 "~" H 11250 2000 50  0001 C CNN
	1    11250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 1700 11250 1850
Wire Wire Line
	10850 2000 11050 2000
Wire Wire Line
	11050 2000 11050 1700
Wire Wire Line
	11050 1700 11250 1700
Connection ~ 11250 1700
Wire Wire Line
	11250 1700 12400 1700
Wire Wire Line
	12400 1550 12400 1700
Connection ~ 12400 1700
Wire Wire Line
	12400 1700 13200 1700
Wire Wire Line
	12500 1550 12500 1800
Wire Wire Line
	12500 1800 13200 1800
Wire Wire Line
	12600 1550 12600 1900
Wire Wire Line
	12600 1900 13200 1900
$Comp
L power:GND #PWR01516
U 1 1 613EF369
P 11250 2400
F 0 "#PWR01516" H 11250 2150 50  0001 C CNN
F 1 "GND" H 11255 2227 50  0000 C CNN
F 2 "" H 11250 2400 50  0001 C CNN
F 3 "" H 11250 2400 50  0001 C CNN
	1    11250 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01525
U 1 1 613EF36F
P 13700 1350
F 0 "#PWR01525" H 13700 1200 50  0001 C CNN
F 1 "+5V" H 13715 1523 50  0000 C CNN
F 2 "" H 13700 1350 50  0001 C CNN
F 3 "" H 13700 1350 50  0001 C CNN
	1    13700 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01519
U 1 1 613EF375
P 12400 1100
F 0 "#PWR01519" H 12400 950 50  0001 C CNN
F 1 "+5V" H 12415 1273 50  0000 C CNN
F 2 "" H 12400 1100 50  0001 C CNN
F 3 "" H 12400 1100 50  0001 C CNN
	1    12400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 1350 13700 1400
Wire Wire Line
	12400 1100 12400 1150
Wire Wire Line
	11250 2400 11250 2300
Wire Wire Line
	10850 2100 11050 2100
Wire Wire Line
	11050 2100 11050 2300
Wire Wire Line
	11050 2300 11250 2300
Connection ~ 11250 2300
Wire Wire Line
	11250 2300 11250 2150
$Comp
L power:GND #PWR01524
U 1 1 613EF384
P 13150 2550
F 0 "#PWR01524" H 13150 2300 50  0001 C CNN
F 1 "GND" H 13155 2377 50  0000 C CNN
F 2 "" H 13150 2550 50  0001 C CNN
F 3 "" H 13150 2550 50  0001 C CNN
	1    13150 2550
	1    0    0    -1  
$EndComp
Entry Wire Line
	14500 1700 14600 1600
Entry Wire Line
	14600 1700 14500 1800
Entry Wire Line
	14600 1800 14500 1900
Wire Wire Line
	14200 1900 14500 1900
Wire Wire Line
	14500 1800 14200 1800
Wire Wire Line
	14200 1700 14500 1700
Wire Bus Line
	14600 1500 14700 1500
Text Label 14300 1700 0    50   ~ 0
~IPL0
Text Label 14300 1800 0    50   ~ 0
~IPL1
Text Label 14300 1900 0    50   ~ 0
~IPL2
NoConn ~ 14200 2200
NoConn ~ 14200 2300
Wire Wire Line
	13700 2850 13700 2800
$Comp
L power:GND #PWR01526
U 1 1 613EF398
P 13700 2850
F 0 "#PWR01526" H 13700 2600 50  0001 C CNN
F 1 "GND" H 13705 2677 50  0000 C CNN
F 2 "" H 13700 2850 50  0001 C CNN
F 3 "" H 13700 2850 50  0001 C CNN
	1    13700 2850
	1    0    0    -1  
$EndComp
Text HLabel 4800 4700 2    50   Output ~ 0
~CS_ROM
Text HLabel 4800 4800 2    50   Output ~ 0
~CS_SRAM
NoConn ~ 8800 1350
NoConn ~ 8800 1450
NoConn ~ 8800 1550
NoConn ~ 8800 1750
NoConn ~ 8800 1850
NoConn ~ 8800 1950
Wire Wire Line
	8000 1950 7900 1950
Wire Wire Line
	7900 1450 8000 1450
Wire Wire Line
	7350 1000 7350 1050
$Comp
L power:+5V #PWR01510
U 1 1 617636DB
P 7350 1000
F 0 "#PWR01510" H 7350 850 50  0001 C CNN
F 1 "+5V" H 7365 1173 50  0000 C CNN
F 2 "" H 7350 1000 50  0001 C CNN
F 3 "" H 7350 1000 50  0001 C CNN
	1    7350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2050 9050 2050
Wire Wire Line
	8400 2300 8400 2250
$Comp
L power:GND #PWR01514
U 1 1 617636E3
P 8400 2300
F 0 "#PWR01514" H 8400 2050 50  0001 C CNN
F 1 "GND" H 8405 2127 50  0000 C CNN
F 2 "" H 8400 2300 50  0001 C CNN
F 3 "" H 8400 2300 50  0001 C CNN
	1    8400 2300
	1    0    0    -1  
$EndComp
Text Label 7900 1450 2    50   ~ 0
~RESET
Text Label 7900 1950 2    50   ~ 0
~AS
Text Label 9050 2050 0    50   ~ 0
BOOTROM
$Comp
L Device:R R1501
U 1 1 617636EC
P 7350 1200
F 0 "R1501" H 7420 1246 50  0000 L CNN
F 1 "4K7" H 7420 1155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 1200 50  0001 C CNN
F 3 "~" H 7350 1200 50  0001 C CNN
	1    7350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1750 7350 1650
Wire Wire Line
	7350 1750 8000 1750
Wire Wire Line
	7350 1650 8000 1650
Connection ~ 7350 1650
Wire Wire Line
	7350 1650 7350 1350
$Comp
L power:+5V #PWR01513
U 1 1 617636FD
P 8400 1050
F 0 "#PWR01513" H 8400 900 50  0001 C CNN
F 1 "+5V" H 8415 1223 50  0000 C CNN
F 2 "" H 8400 1050 50  0001 C CNN
F 3 "" H 8400 1050 50  0001 C CNN
	1    8400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1050 8400 1150
Entry Wire Line
	1800 5000 1900 5100
Entry Wire Line
	1800 5100 1900 5200
Entry Wire Line
	1800 5200 1900 5300
Entry Wire Line
	1800 5300 1900 5400
Entry Wire Line
	1800 5400 1900 5500
Entry Wire Line
	1800 5500 1900 5600
Entry Wire Line
	1800 5600 1900 5700
Entry Wire Line
	1800 5700 1900 5800
Wire Wire Line
	2600 5100 1900 5100
Wire Wire Line
	2600 5200 1900 5200
Wire Wire Line
	2600 5300 1900 5300
Wire Wire Line
	2600 5400 1900 5400
Wire Wire Line
	2600 5500 1900 5500
Wire Wire Line
	2600 5600 1900 5600
Wire Wire Line
	2600 5700 1900 5700
Wire Wire Line
	2600 5800 1900 5800
Wire Bus Line
	1800 4900 1700 4900
Wire Bus Line
	2100 2200 2000 2200
Wire Wire Line
	5350 5100 4600 5100
Wire Wire Line
	5350 5200 4600 5200
Text HLabel 4800 3900 2    50   Output ~ 0
~RESET
Text Label 6550 7250 2    50   ~ 0
~CPLD_DSACK0
Text Label 6550 7800 2    50   ~ 0
~CPLD_DSACK1
$Comp
L 74xx:74LS541 U1506
U 1 1 615D2430
P 12900 8850
F 0 "U1506" H 12650 9500 50  0000 C CNN
F 1 "74LS541" H 13100 9500 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 12900 8850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 12900 8850 50  0001 C CNN
	1    12900 8850
	1    0    0    -1  
$EndComp
Text Label 12300 8350 2    50   ~ 0
~EXT_PRD01
Text Label 12300 8550 2    50   ~ 0
~EXT_PRD02
Text Label 12300 8750 2    50   ~ 0
~EXT_PRD03
Text Label 12300 8950 2    50   ~ 0
~EXT_PRD04
Text Label 12300 8450 2    50   ~ 0
~EXT_PRD11
Text Label 12300 8650 2    50   ~ 0
~EXT_PRD12
Text Label 12300 8850 2    50   ~ 0
~EXT_PRD13
Text Label 12300 9050 2    50   ~ 0
~EXT_PRD14
Text HLabel 13950 8150 2    50   BiDi ~ 0
D[0..31]
Entry Wire Line
	13850 8250 13750 8350
Entry Wire Line
	13850 8350 13750 8450
Entry Wire Line
	13850 8450 13750 8550
Entry Wire Line
	13850 8550 13750 8650
Entry Wire Line
	13850 8650 13750 8750
Entry Wire Line
	13850 8750 13750 8850
Entry Wire Line
	13850 8850 13750 8950
Entry Wire Line
	13850 8950 13750 9050
Wire Wire Line
	13400 8350 13750 8350
Wire Wire Line
	13400 8450 13750 8450
Wire Wire Line
	13400 8550 13750 8550
Wire Wire Line
	13400 8650 13750 8650
Wire Wire Line
	13400 8750 13750 8750
Wire Wire Line
	13400 8850 13750 8850
Wire Wire Line
	13400 8950 13750 8950
Wire Wire Line
	13400 9050 13750 9050
Wire Bus Line
	13850 8150 13950 8150
Text Label 13500 8350 0    50   ~ 0
D24
Text Label 13500 8450 0    50   ~ 0
D25
Text Label 13500 8550 0    50   ~ 0
D26
Text Label 13500 8650 0    50   ~ 0
D27
Text Label 13500 8750 0    50   ~ 0
D28
Text Label 13500 8850 0    50   ~ 0
D29
Text Label 13500 8950 0    50   ~ 0
D30
Text Label 13500 9050 0    50   ~ 0
D31
Wire Wire Line
	12400 8350 12300 8350
Wire Wire Line
	12400 8450 12300 8450
Wire Wire Line
	12400 8550 12300 8550
Wire Wire Line
	12400 8650 12300 8650
Wire Wire Line
	12400 8750 12300 8750
Wire Wire Line
	12400 8850 12300 8850
Wire Wire Line
	12400 8950 12300 8950
Wire Wire Line
	12400 9050 12300 9050
Text Label 14800 7600 2    50   ~ 0
~EXT_PRD0[1..4]
Text Label 14800 7700 2    50   ~ 0
~EXT_PRD1[1..4]
Wire Bus Line
	14800 7600 14950 7600
Wire Bus Line
	14950 7700 14800 7700
$Comp
L power:+5V #PWR01522
U 1 1 616B834A
P 12900 8000
F 0 "#PWR01522" H 12900 7850 50  0001 C CNN
F 1 "+5V" H 12915 8173 50  0000 C CNN
F 2 "" H 12900 8000 50  0001 C CNN
F 3 "" H 12900 8000 50  0001 C CNN
	1    12900 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01523
U 1 1 616B89A7
P 12900 9700
F 0 "#PWR01523" H 12900 9450 50  0001 C CNN
F 1 "GND" H 12905 9527 50  0000 C CNN
F 2 "" H 12900 9700 50  0001 C CNN
F 3 "" H 12900 9700 50  0001 C CNN
	1    12900 9700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01518
U 1 1 616B8D51
P 12300 9450
F 0 "#PWR01518" H 12300 9200 50  0001 C CNN
F 1 "GND" H 12305 9277 50  0000 C CNN
F 2 "" H 12300 9450 50  0001 C CNN
F 3 "" H 12300 9450 50  0001 C CNN
	1    12300 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 9350 12300 9350
Wire Wire Line
	12300 9350 12300 9450
Wire Wire Line
	12900 9650 12900 9700
Wire Wire Line
	12900 8050 12900 8000
Text Label 12300 9250 2    50   ~ 0
~CS_CARDPRD
Wire Wire Line
	12400 9250 12300 9250
Text Label 5300 3200 0    50   ~ 0
~CS_CARDPRD
Wire Wire Line
	4600 2900 4800 2900
Wire Wire Line
	10700 3300 10600 3300
Wire Wire Line
	10600 2900 10700 2900
$Comp
L Oscillator:ACO-xxxMHz X1501
U 1 1 6170296C
P 1400 6600
F 0 "X1501" H 1850 6500 50  0000 R CNN
F 1 "40Mhz" H 1850 6400 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 1850 6250 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1300 6600 50  0001 C CNN
	1    1400 6600
	1    0    0    -1  
$EndComp
Text HLabel 12400 2300 0    50   Input ~ 0
~INT_IDE
Wire Wire Line
	12600 1900 12400 1900
Connection ~ 12600 1900
Wire Wire Line
	11300 2900 11800 2900
Wire Wire Line
	11800 2900 11800 2000
Wire Wire Line
	11300 3300 11900 3300
Wire Wire Line
	11900 3300 11900 2100
$Comp
L 74xx:74LS04 U1502
U 1 1 61791A6A
P 11000 2900
F 0 "U1502" H 10650 3050 50  0000 C CNN
F 1 "74LS04" H 11200 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 11000 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 11000 2900 50  0001 C CNN
	1    11000 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1502
U 2 1 61792459
P 11000 3300
F 0 "U1502" H 10650 3450 50  0000 C CNN
F 1 "74LS04" H 11200 3450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 11000 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 11000 3300 50  0001 C CNN
	2    11000 3300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1502
U 6 1 6179414D
P 3200 8950
F 0 "U1502" H 3200 9267 50  0000 C CNN
F 1 "74LS04" H 3200 9176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3200 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3200 8950 50  0001 C CNN
	6    3200 8950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1502
U 7 1 61794A1E
P 10050 10300
F 0 "U1502" H 10350 10650 50  0000 R CNN
F 1 "74LS04" H 10400 9950 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10050 10300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10050 10300 50  0001 C CNN
	7    10050 10300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11800 2000 13200 2000
Wire Wire Line
	11900 2100 13200 2100
Wire Wire Line
	12400 2200 12700 2200
Wire Wire Line
	12400 2300 12800 2300
Wire Wire Line
	12700 1550 12700 2200
Connection ~ 12700 2200
Wire Wire Line
	12700 2200 13200 2200
Wire Wire Line
	12800 1550 12800 2300
Connection ~ 12800 2300
Wire Wire Line
	12800 2300 13200 2300
Wire Wire Line
	12800 2400 13200 2400
$Comp
L 74xx:74LS21 U1503
U 1 1 617CBEF9
P 7100 7400
F 0 "U1503" H 7000 7650 50  0000 C CNN
F 1 "74LS21" H 7350 7600 50  0000 C CNN
F 2 "Package_DIP:DIP-12_W7.62mm_Socket" H 7100 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 7100 7400 50  0001 C CNN
	1    7100 7400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS21 U1503
U 2 1 617CCDAA
P 7100 7950
F 0 "U1503" H 7000 8200 50  0000 C CNN
F 1 "74LS21" H 7350 8150 50  0000 C CNN
F 2 "Package_DIP:DIP-12_W7.62mm_Socket" H 7100 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 7100 7950 50  0001 C CNN
	2    7100 7950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS21 U1503
U 3 1 617CD539
P 10550 10300
F 0 "U1503" H 10650 10650 50  0000 L CNN
F 1 "74LS21" H 10650 9950 50  0000 L CNN
F 2 "Package_DIP:DIP-12_W7.62mm_Socket" H 10550 10300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 10550 10300 50  0001 C CNN
	3    10550 10300
	1    0    0    -1  
$EndComp
Text HLabel 4800 5900 2    50   Input ~ 0
~DTACK_DUART
Wire Wire Line
	6800 7250 6550 7250
Wire Wire Line
	6800 7350 6550 7350
Wire Wire Line
	6800 7450 6550 7450
Wire Wire Line
	6800 7800 6550 7800
Wire Wire Line
	6800 7900 6550 7900
Wire Wire Line
	6800 8000 6550 8000
$Comp
L power:+5V #PWR01515
U 1 1 6183C7EC
P 6700 7100
F 0 "#PWR01515" H 6700 6950 50  0001 C CNN
F 1 "+5V" H 6715 7273 50  0000 C CNN
F 2 "" H 6700 7100 50  0001 C CNN
F 3 "" H 6700 7100 50  0001 C CNN
	1    6700 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 7100 6700 7550
Wire Wire Line
	6700 8100 6800 8100
Wire Wire Line
	6800 7550 6700 7550
Connection ~ 6700 7550
Wire Wire Line
	6700 7550 6700 8100
Wire Wire Line
	7600 7400 7400 7400
Wire Wire Line
	7400 7950 7600 7950
Entry Wire Line
	15150 4650 15050 4750
Entry Wire Line
	15150 4750 15050 4850
Entry Wire Line
	15150 4850 15050 4950
Entry Wire Line
	15150 4950 15050 5050
Text Label 14950 4750 2    50   ~ 0
~EXT_IRQ1
Text Label 14950 4850 2    50   ~ 0
~EXT_IRQ2
Text Label 14950 4950 2    50   ~ 0
~EXT_IRQ3
Text Label 14950 5050 2    50   ~ 0
~EXT_IRQ4
Wire Wire Line
	14950 4750 15050 4750
Wire Wire Line
	14950 4850 15050 4850
Wire Wire Line
	14950 4950 15050 4950
Wire Wire Line
	14950 5050 15050 5050
Wire Bus Line
	15250 4550 15150 4550
Text Label 12350 1800 2    50   ~ 0
~EXT_IRQ1
Wire Wire Line
	12500 1800 12350 1800
Connection ~ 12500 1800
Text Label 5300 3500 0    50   ~ 0
~EXT_IRQ2
Text Label 5300 3400 0    50   ~ 0
~EXT_IRQ3
Text Label 5300 3300 0    50   ~ 0
~EXT_IRQ4
Text Label 5300 3100 0    50   ~ 0
~CPLD_INT
Text Label 12400 2500 2    50   ~ 0
~CPLD_INT
Wire Wire Line
	12400 2500 12800 2500
Wire Wire Line
	12800 2400 12800 2500
Wire Wire Line
	13200 2500 13150 2500
Wire Wire Line
	13150 2500 13150 2550
Wire Wire Line
	5300 3200 4600 3200
Wire Wire Line
	5300 3300 4600 3300
Wire Wire Line
	5300 3400 4600 3400
Wire Wire Line
	5300 3500 4600 3500
Wire Wire Line
	4800 3700 4600 3700
Wire Wire Line
	4800 3800 4600 3800
Wire Wire Line
	4800 3900 4600 3900
Wire Wire Line
	4800 4000 4600 4000
Wire Wire Line
	4800 4300 4600 4300
Wire Wire Line
	4800 4400 4600 4400
Wire Wire Line
	4800 4500 4600 4500
Wire Wire Line
	4800 4600 4600 4600
Wire Wire Line
	4800 4700 4600 4700
Wire Wire Line
	4800 4800 4600 4800
Wire Wire Line
	4800 4900 4600 4900
Wire Wire Line
	4800 5000 4600 5000
Wire Wire Line
	4800 5800 4600 5800
Wire Wire Line
	4800 5900 4600 5900
Wire Wire Line
	4800 6000 4600 6000
Wire Wire Line
	4800 6100 4600 6100
Wire Wire Line
	4800 6200 4600 6200
Wire Wire Line
	4800 6300 4600 6300
Wire Wire Line
	4800 6400 4600 6400
$Comp
L power:GND #PWR01502
U 1 1 61B21D9C
P 1400 6950
F 0 "#PWR01502" H 1400 6700 50  0001 C CNN
F 1 "GND" H 1405 6777 50  0000 C CNN
F 2 "" H 1400 6950 50  0001 C CNN
F 3 "" H 1400 6950 50  0001 C CNN
	1    1400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6950 1400 6900
$Comp
L power:+5V #PWR01501
U 1 1 61B316EE
P 1400 6250
F 0 "#PWR01501" H 1400 6100 50  0001 C CNN
F 1 "+5V" H 1415 6423 50  0000 C CNN
F 2 "" H 1400 6250 50  0001 C CNN
F 3 "" H 1400 6250 50  0001 C CNN
	1    1400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6250 1400 6300
Text HLabel 4800 6500 2    50   Output ~ 0
~BERR
Wire Wire Line
	4600 6500 4800 6500
$Comp
L power:GND #PWR01509
U 1 1 61B9FF21
P 10050 10850
F 0 "#PWR01509" H 10050 10600 50  0001 C CNN
F 1 "GND" H 10055 10677 50  0000 C CNN
F 2 "" H 10050 10850 50  0001 C CNN
F 3 "" H 10050 10850 50  0001 C CNN
	1    10050 10850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01512
U 1 1 61BA039D
P 10550 10850
F 0 "#PWR01512" H 10550 10600 50  0001 C CNN
F 1 "GND" H 10555 10677 50  0000 C CNN
F 2 "" H 10550 10850 50  0001 C CNN
F 3 "" H 10550 10850 50  0001 C CNN
	1    10550 10850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01508
U 1 1 61BA061B
P 10050 9750
F 0 "#PWR01508" H 10050 9600 50  0001 C CNN
F 1 "+5V" H 10065 9923 50  0000 C CNN
F 2 "" H 10050 9750 50  0001 C CNN
F 3 "" H 10050 9750 50  0001 C CNN
	1    10050 9750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01511
U 1 1 61BA0872
P 10550 9750
F 0 "#PWR01511" H 10550 9600 50  0001 C CNN
F 1 "+5V" H 10565 9923 50  0000 C CNN
F 2 "" H 10550 9750 50  0001 C CNN
F 3 "" H 10550 9750 50  0001 C CNN
	1    10550 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 9800 10050 9750
Wire Wire Line
	10550 9800 10550 9750
Wire Wire Line
	10550 10850 10550 10800
Wire Wire Line
	10050 10850 10050 10800
$Comp
L power:+5V #PWR01505
U 1 1 61BF0865
P 2700 8750
F 0 "#PWR01505" H 2700 8600 50  0001 C CNN
F 1 "+5V" H 2715 8923 50  0000 C CNN
F 2 "" H 2700 8750 50  0001 C CNN
F 3 "" H 2700 8750 50  0001 C CNN
	1    2700 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 8750 2700 8950
Wire Wire Line
	2700 8950 2900 8950
Wire Wire Line
	2700 8950 2700 9150
Connection ~ 2700 8950
NoConn ~ 3500 8950
Text HLabel 4800 3000 2    50   Input ~ 0
~FPUSENSE
Text HLabel 4800 2900 2    50   Output ~ 0
~CS_FPU
Text HLabel 4800 6600 2    50   Input ~ 0
SIZ0
Text HLabel 4800 6700 2    50   Input ~ 0
SIZ1
Text HLabel 4800 6800 2    50   Input ~ 0
~DS
Text HLabel 4800 3600 2    50   Input ~ 0
~AS
Text HLabel 2450 6100 0    50   Input ~ 0
~CDIS
Text HLabel 2450 6000 0    50   Input ~ 0
~MMUDIS
Wire Wire Line
	4800 3600 4600 3600
Wire Wire Line
	4800 3000 4600 3000
Text HLabel 4800 4100 2    50   Input ~ 0
R~W
Wire Wire Line
	4800 4100 4600 4100
Wire Wire Line
	4800 6800 4600 6800
Wire Wire Line
	4800 6700 4600 6700
Wire Wire Line
	4600 6600 4800 6600
Wire Wire Line
	2600 6100 2450 6100
Wire Wire Line
	2450 6000 2600 6000
Text HLabel 4800 5000 2    50   Output ~ 0
~CS_DRAM
Text HLabel 4800 4900 2    50   Output ~ 0
~CS_DRAMCPLD
Text HLabel 6150 5200 2    50   Input ~ 0
FC[0..2]
Entry Wire Line
	5950 5400 6050 5300
Entry Wire Line
	6050 5400 5950 5500
Entry Wire Line
	6050 5600 5950 5700
Wire Bus Line
	6050 5200 6150 5200
Text Label 5750 5400 0    50   ~ 0
FC0
Text Label 5750 5500 0    50   ~ 0
FC1
Text Label 5750 5700 0    50   ~ 0
FC2
Wire Wire Line
	14400 3600 14300 3600
Wire Wire Line
	15100 3600 15000 3600
$Comp
L 74xx:74LS04 U1502
U 4 1 61793343
P 14700 3600
F 0 "U1502" H 14350 3750 50  0000 C CNN
F 1 "74LS04" H 14900 3750 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 14700 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14700 3600 50  0001 C CNN
	4    14700 3600
	1    0    0    -1  
$EndComp
Text HLabel 15100 3600 2    50   Output ~ 0
~RD~WR
Wire Wire Line
	2700 9150 3600 9150
NoConn ~ 4250 8950
Wire Wire Line
	3600 8950 3600 9150
Wire Wire Line
	3650 8950 3600 8950
Text HLabel 2450 6300 0    50   Output ~ 0
CLK10
$Comp
L 74xx:74LS04 U1502
U 5 1 61793B51
P 3950 8950
F 0 "U1502" H 3950 9267 50  0000 C CNN
F 1 "74LS04" H 3950 9176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3950 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3950 8950 50  0001 C CNN
	5    3950 8950
	1    0    0    -1  
$EndComp
Text HLabel 14300 3600 0    50   Input ~ 0
R~W
NoConn ~ 4950 8950
Connection ~ 3600 9150
Wire Wire Line
	3600 9150 4300 9150
Wire Wire Line
	4300 9150 4300 8950
Wire Wire Line
	4300 8950 4350 8950
$Comp
L 74xx:74LS04 U1502
U 3 1 617929A1
P 4650 8950
F 0 "U1502" H 4650 9267 50  0000 C CNN
F 1 "74LS04" H 4650 9176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4650 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4650 8950 50  0001 C CNN
	3    4650 8950
	1    0    0    -1  
$EndComp
Text HLabel 4800 4600 2    50   Output ~ 0
RD~WR
Text HLabel 14950 7300 2    50   Output ~ 0
~CS_EXTREG[1..4]
Text HLabel 14950 7400 2    50   Output ~ 0
~CS_EXTDATA[1..4]
Wire Bus Line
	14950 7300 14800 7300
Text Label 14800 7300 2    50   ~ 0
~CS_EXTREG[1..4]
Wire Bus Line
	14950 7400 14800 7400
Text Label 14800 7400 2    50   ~ 0
~CS_EXTDATA[1..4]
Text Label 13600 6150 0    50   ~ 0
~CS_EXTREG1
Text Label 13600 6250 0    50   ~ 0
~CS_EXTREG2
Text Label 13600 6350 0    50   ~ 0
~CS_EXTREG3
Text Label 13600 6450 0    50   ~ 0
~CS_EXTREG4
Text Label 13600 6550 0    50   ~ 0
~CS_EXTDATA1
Text Label 13600 6650 0    50   ~ 0
~CS_EXTDATA2
Text Label 13600 6750 0    50   ~ 0
~CS_EXTDATA3
Text Label 13600 6850 0    50   ~ 0
~CS_EXTDATA4
Wire Wire Line
	4600 5300 5350 5300
$Comp
L 74xx:74LS138 U1505
U 1 1 6180D500
P 12900 6450
F 0 "U1505" H 12650 6900 50  0000 C CNN
F 1 "74LS138" H 13100 6900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 12900 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 12900 6450 50  0001 C CNN
	1    12900 6450
	1    0    0    -1  
$EndComp
Text Label 5350 5100 0    50   ~ 0
EXPSEL0
Text Label 5350 5200 0    50   ~ 0
EXPSEL1
Text Label 5350 5300 0    50   ~ 0
EXPSEL2
Wire Wire Line
	12200 6150 12400 6150
Wire Wire Line
	12200 6250 12400 6250
Wire Wire Line
	12400 6350 12200 6350
Text Label 12200 6150 2    50   ~ 0
EXPSEL0
Text Label 12200 6250 2    50   ~ 0
EXPSEL1
Text Label 12200 6350 2    50   ~ 0
EXPSEL2
Wire Wire Line
	12400 6650 12200 6650
Text Label 12200 6650 2    50   ~ 0
EXPSELEN
$Comp
L Device:R_Network08 RN1502
U 1 1 615D2346
P 14650 5850
F 0 "RN1502" H 15038 5896 50  0000 L CNN
F 1 "10K" H 14550 6050 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 15125 5850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 14650 5850 50  0001 C CNN
	1    14650 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01527
U 1 1 615D234C
P 14250 5600
F 0 "#PWR01527" H 14250 5450 50  0001 C CNN
F 1 "+5V" H 14265 5773 50  0000 C CNN
F 2 "" H 14250 5600 50  0001 C CNN
F 3 "" H 14250 5600 50  0001 C CNN
	1    14250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 5600 14250 5650
Wire Wire Line
	14250 6150 14250 6050
Wire Wire Line
	13400 6150 14250 6150
Wire Wire Line
	14350 6250 14350 6050
Wire Wire Line
	13400 6250 14350 6250
Wire Wire Line
	14450 6350 14450 6050
Wire Wire Line
	13400 6350 14450 6350
Wire Wire Line
	14550 6450 14550 6050
Wire Wire Line
	13400 6450 14550 6450
Wire Wire Line
	14650 6550 14650 6050
Wire Wire Line
	13400 6550 14650 6550
Wire Wire Line
	14750 6650 14750 6050
Wire Wire Line
	13400 6650 14750 6650
Wire Wire Line
	14850 6750 14850 6050
Wire Wire Line
	13400 6750 14850 6750
Wire Wire Line
	14950 6850 14950 6050
Wire Wire Line
	13400 6850 14950 6850
$Comp
L power:+5V #PWR01520
U 1 1 616FB4A3
P 12900 5800
F 0 "#PWR01520" H 12900 5650 50  0001 C CNN
F 1 "+5V" H 12915 5973 50  0000 C CNN
F 2 "" H 12900 5800 50  0001 C CNN
F 3 "" H 12900 5800 50  0001 C CNN
	1    12900 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01521
U 1 1 616FBE3A
P 12900 7200
F 0 "#PWR01521" H 12900 6950 50  0001 C CNN
F 1 "GND" H 12905 7027 50  0000 C CNN
F 2 "" H 12900 7200 50  0001 C CNN
F 3 "" H 12900 7200 50  0001 C CNN
	1    12900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01517
U 1 1 616FC1CA
P 12300 6950
F 0 "#PWR01517" H 12300 6700 50  0001 C CNN
F 1 "GND" H 12305 6777 50  0000 C CNN
F 2 "" H 12300 6950 50  0001 C CNN
F 3 "" H 12300 6950 50  0001 C CNN
	1    12300 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 6950 12300 6850
Wire Wire Line
	12300 6750 12400 6750
Wire Wire Line
	12400 6850 12300 6850
Connection ~ 12300 6850
Wire Wire Line
	12300 6850 12300 6750
Wire Wire Line
	12900 7150 12900 7200
Wire Wire Line
	12900 5800 12900 5850
$Comp
L 74xx:74HC164 U1504
U 1 1 617636F2
P 8400 1650
F 0 "U1504" H 8650 2150 50  0000 C CNN
F 1 "74HC164" H 8600 1100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8400 1650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT164.pdf" H 8400 1650 50  0001 C CNN
	1    8400 1650
	1    0    0    -1  
$EndComp
NoConn ~ 8800 1650
Wire Wire Line
	4600 5400 5950 5400
Wire Wire Line
	4600 5700 5950 5700
Wire Wire Line
	4600 5500 5950 5500
Text Label 2450 5900 2    50   ~ 0
EXPSELEN
Wire Wire Line
	2600 5900 2450 5900
Wire Wire Line
	5300 3100 4600 3100
Wire Wire Line
	2600 5000 2200 5000
Wire Wire Line
	2600 4900 2200 4900
Wire Wire Line
	2600 4800 2200 4800
Wire Wire Line
	2600 4600 2200 4600
Wire Wire Line
	2600 4500 2200 4500
Wire Wire Line
	2600 4400 2200 4400
Wire Wire Line
	2600 4300 2200 4300
Wire Wire Line
	2600 4200 2200 4200
Wire Wire Line
	2600 4100 2200 4100
Wire Wire Line
	2600 4000 2200 4000
Wire Wire Line
	2600 3900 2200 3900
Wire Wire Line
	2600 3800 2200 3800
Wire Wire Line
	2600 3700 2200 3700
Wire Wire Line
	2600 3600 2200 3600
Wire Wire Line
	2600 3400 2200 3400
Wire Wire Line
	2600 3300 2200 3300
Wire Wire Line
	2600 3200 2200 3200
Wire Wire Line
	2600 3100 2200 3100
Wire Wire Line
	2600 3000 2200 3000
Wire Wire Line
	2600 2900 2200 2900
Wire Wire Line
	2600 2800 2200 2800
Wire Wire Line
	2600 2700 2200 2700
Wire Wire Line
	2600 2600 2200 2600
Wire Wire Line
	2600 2500 2200 2500
Wire Wire Line
	2600 2400 2200 2400
Entry Wire Line
	2100 4900 2200 5000
Entry Wire Line
	2100 4800 2200 4900
Entry Wire Line
	2100 4700 2200 4800
Entry Wire Line
	2100 4500 2200 4600
Entry Wire Line
	2100 4400 2200 4500
Entry Wire Line
	2100 4300 2200 4400
Entry Wire Line
	2100 4200 2200 4300
Entry Wire Line
	2100 4100 2200 4200
Entry Wire Line
	2100 4000 2200 4100
Entry Wire Line
	2100 3900 2200 4000
Entry Wire Line
	2100 3800 2200 3900
Entry Wire Line
	2100 3700 2200 3800
Entry Wire Line
	2100 3600 2200 3700
Entry Wire Line
	2100 3500 2200 3600
Entry Wire Line
	2100 3300 2200 3400
Entry Wire Line
	2100 3200 2200 3300
Entry Wire Line
	2100 3100 2200 3200
Entry Wire Line
	2100 3000 2200 3100
Entry Wire Line
	2100 2900 2200 3000
Entry Wire Line
	2100 2800 2200 2900
Entry Wire Line
	2100 2700 2200 2800
Entry Wire Line
	2100 2600 2200 2700
Entry Wire Line
	2100 2500 2200 2600
Entry Wire Line
	2100 2400 2200 2500
Entry Wire Line
	2100 2300 2200 2400
Text Label 2450 2400 2    50   ~ 0
A30
Text Label 2450 2500 2    50   ~ 0
A29
Text Label 2450 2600 2    50   ~ 0
A28
Text Label 2450 2700 2    50   ~ 0
A27
Text Label 2450 2800 2    50   ~ 0
A26
Text Label 2450 2900 2    50   ~ 0
A25
Text Label 2450 3000 2    50   ~ 0
A24
Text Label 2450 3100 2    50   ~ 0
A23
Text Label 2450 3200 2    50   ~ 0
A22
Text Label 2450 3300 2    50   ~ 0
A21
Text Label 2450 3400 2    50   ~ 0
A20
Text Label 2450 3600 2    50   ~ 0
A19
Text Label 2450 3700 2    50   ~ 0
A18
Text Label 2450 3800 2    50   ~ 0
A17
Text Label 2450 3900 2    50   ~ 0
A16
Text Label 2450 4000 2    50   ~ 0
A15
Text Label 2450 4100 2    50   ~ 0
A14
Text Label 2450 4200 2    50   ~ 0
A13
Text Label 2450 4300 2    50   ~ 0
A12
Text Label 2450 4400 2    50   ~ 0
A11
Text Label 2450 4500 2    50   ~ 0
A10
Text Label 2450 4600 2    50   ~ 0
A9
Text Label 2450 4800 2    50   ~ 0
A8
Text Label 2450 4900 2    50   ~ 0
A1
Text Label 2450 5000 2    50   ~ 0
A0
$Comp
L CPLD_Xilinx:XC95108PQ100 U1501
U 1 1 617369BA
P 3600 4600
F 0 "U1501" H 2900 6950 50  0000 C CNN
F 1 "XC95108PQ100" H 4250 6950 50  0000 C CNN
F 2 "Ddraig:RTL8019AS" H 3600 4600 50  0001 C CNN
F 3 "xilinx/xc95108.pdf" H 3600 4600 50  0001 C CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
Text HLabel 10600 2900 0    50   Input ~ 0
INT_USB
Text HLabel 4800 6900 2    50   Output ~ 0
~CS_USB
Text HLabel 2450 6400 0    50   Output ~ 0
~USB_ENABLE
Text HLabel 2450 6500 0    50   Input ~ 0
~USB_OVERCUR
Wire Wire Line
	2600 6300 2450 6300
Wire Wire Line
	4600 6900 4800 6900
Wire Wire Line
	2600 6400 2450 6400
Wire Wire Line
	2450 6500 2600 6500
Wire Wire Line
	1700 6600 2600 6600
$Comp
L 74xx:74LS07 U1508
U 1 1 616ECF7F
P 7900 7400
F 0 "U1508" H 7900 7717 50  0000 C CNN
F 1 "74LS07" H 7900 7626 50  0000 C CNN
F 2 "" H 7900 7400 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 7900 7400 50  0001 C CNN
	1    7900 7400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U1508
U 2 1 616EE6C5
P 7900 7950
F 0 "U1508" H 7900 8267 50  0000 C CNN
F 1 "74LS07" H 7900 8176 50  0000 C CNN
F 2 "" H 7900 7950 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 7900 7950 50  0001 C CNN
	2    7900 7950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U1508
U 3 1 616EF060
P 10850 5600
F 0 "U1508" H 10850 5917 50  0000 C CNN
F 1 "74LS07" H 10850 5826 50  0000 C CNN
F 2 "" H 10850 5600 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 10850 5600 50  0001 C CNN
	3    10850 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U1508
U 4 1 616EFBFA
P 10850 6100
F 0 "U1508" H 10850 6417 50  0000 C CNN
F 1 "74LS07" H 10850 6326 50  0000 C CNN
F 2 "" H 10850 6100 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 10850 6100 50  0001 C CNN
	4    10850 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U1508
U 5 1 616F107D
P 10850 6600
F 0 "U1508" H 10850 6917 50  0000 C CNN
F 1 "74LS07" H 10850 6826 50  0000 C CNN
F 2 "" H 10850 6600 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 10850 6600 50  0001 C CNN
	5    10850 6600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U1508
U 6 1 616F1480
P 10850 7100
F 0 "U1508" H 10850 7417 50  0000 C CNN
F 1 "74LS07" H 10850 7326 50  0000 C CNN
F 2 "" H 10850 7100 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 10850 7100 50  0001 C CNN
	6    10850 7100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U1508
U 7 1 616F3667
P 9500 10300
F 0 "U1508" H 9250 10650 50  0000 L CNN
F 1 "74LS07" H 9150 9950 50  0000 L CNN
F 2 "" H 9500 10300 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 9500 10300 50  0001 C CNN
	7    9500 10300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01529
U 1 1 61785837
P 9500 9750
F 0 "#PWR01529" H 9500 9600 50  0001 C CNN
F 1 "+5V" H 9515 9923 50  0000 C CNN
F 2 "" H 9500 9750 50  0001 C CNN
F 3 "" H 9500 9750 50  0001 C CNN
	1    9500 9750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01530
U 1 1 61785C3A
P 9500 10850
F 0 "#PWR01530" H 9500 10600 50  0001 C CNN
F 1 "GND" H 9505 10677 50  0000 C CNN
F 2 "" H 9500 10850 50  0001 C CNN
F 3 "" H 9500 10850 50  0001 C CNN
	1    9500 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 10850 9500 10800
Wire Wire Line
	9500 9750 9500 9800
Wire Wire Line
	8200 7400 8350 7400
Wire Wire Line
	8200 7950 8450 7950
$Comp
L Device:R_Network08 RN1503
U 1 1 618CA157
P 8750 6850
F 0 "RN1503" H 9138 6896 50  0000 L CNN
F 1 "10K" H 8650 7050 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 9225 6850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8750 6850 50  0001 C CNN
	1    8750 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01528
U 1 1 6168A8A7
P 8350 6600
F 0 "#PWR01528" H 8350 6450 50  0001 C CNN
F 1 "+5V" H 8365 6773 50  0000 C CNN
F 2 "" H 8350 6600 50  0001 C CNN
F 3 "" H 8350 6600 50  0001 C CNN
	1    8350 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6600 8350 6650
Wire Wire Line
	8350 7050 8350 7400
Connection ~ 8350 7400
Wire Wire Line
	8350 7400 9300 7400
Wire Wire Line
	8450 7050 8450 7950
Connection ~ 8450 7950
Wire Wire Line
	8450 7950 9300 7950
NoConn ~ 12900 1550
NoConn ~ 13000 1550
NoConn ~ 13100 1550
NoConn ~ 11150 5600
NoConn ~ 11150 6100
NoConn ~ 11150 6600
NoConn ~ 11150 7100
NoConn ~ 8550 7050
NoConn ~ 8650 7050
NoConn ~ 8750 7050
NoConn ~ 8850 7050
NoConn ~ 8950 7050
NoConn ~ 9050 7050
$Comp
L power:GND #PWR0107
U 1 1 61B06502
P 10450 7200
F 0 "#PWR0107" H 10450 6950 50  0001 C CNN
F 1 "GND" H 10455 7027 50  0000 C CNN
F 2 "" H 10450 7200 50  0001 C CNN
F 3 "" H 10450 7200 50  0001 C CNN
	1    10450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5600 10550 5600
Wire Wire Line
	10550 6100 10450 6100
Connection ~ 10450 6100
Wire Wire Line
	10450 6100 10450 5600
Wire Wire Line
	10550 6600 10450 6600
Wire Wire Line
	10450 6100 10450 6600
Connection ~ 10450 6600
Wire Wire Line
	10450 6600 10450 7100
Wire Wire Line
	10550 7100 10450 7100
Connection ~ 10450 7100
Wire Wire Line
	10450 7100 10450 7200
Text Label 2500 6700 2    50   ~ 0
~CPLD_DSACK0
Text Label 2500 6800 2    50   ~ 0
~CPLD_DSACK1
Wire Wire Line
	2500 6700 2600 6700
Wire Wire Line
	2500 6800 2600 6800
Wire Bus Line
	14600 1500 14600 1800
Wire Bus Line
	6050 5200 6050 5600
Wire Bus Line
	15150 4550 15150 4950
Wire Bus Line
	13850 8150 13850 8950
Wire Bus Line
	1800 4900 1800 5700
Wire Bus Line
	2100 2200 2100 4900
$EndSCHEMATC
