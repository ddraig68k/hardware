EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 16
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
L CPLD_Xilinx:XC95108PQ100 U?
U 1 1 617369BA
P 3450 4150
F 0 "U?" H 2750 6500 50  0000 C CNN
F 1 "XC95108PQ100" H 4100 6500 50  0000 C CNN
F 2 "" H 3450 4150 50  0001 C CNN
F 3 "xilinx/xc95108.pdf" H 3450 4150 50  0001 C CNN
	1    3450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61738A8A
P 3450 1550
F 0 "#PWR?" H 3450 1400 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 6173BF38
P 3500 6850
F 0 "#PWR?" H 3500 6600 50  0001 C CNN
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
Text Label 2200 4850 2    50   ~ 0
A0
Text Label 2200 4750 2    50   ~ 0
A1
Text Label 2200 4650 2    50   ~ 0
A2
Text Label 2200 4550 2    50   ~ 0
A3
Text Label 2200 4450 2    50   ~ 0
A8
Text Label 2200 4350 2    50   ~ 0
A9
Text Label 2200 4150 2    50   ~ 0
A10
Text Label 2200 4050 2    50   ~ 0
A11
Text Label 2200 3950 2    50   ~ 0
A12
Text Label 2200 3850 2    50   ~ 0
A13
Text Label 2200 3750 2    50   ~ 0
A14
Text Label 2200 3650 2    50   ~ 0
A15
Text Label 2200 3550 2    50   ~ 0
A16
Text Label 2200 3450 2    50   ~ 0
A17
Text Label 2200 3350 2    50   ~ 0
A18
Text Label 2200 3250 2    50   ~ 0
A19
Text Label 2200 3150 2    50   ~ 0
A20
Text Label 2200 2950 2    50   ~ 0
A21
Text Label 2200 2850 2    50   ~ 0
A22
Text Label 2200 2750 2    50   ~ 0
A23
Text Label 2200 2650 2    50   ~ 0
A24
Text Label 2200 2550 2    50   ~ 0
A25
Text Label 2200 2450 2    50   ~ 0
A26
Text Label 2200 2350 2    50   ~ 0
A27
Text Label 2200 2250 2    50   ~ 0
A28
Text Label 2200 2150 2    50   ~ 0
A29
Text Label 2200 2050 2    50   ~ 0
A30
Text Label 2200 1950 2    50   ~ 0
A31
Text Label 2200 4950 2    50   ~ 0
D24
Text Label 2200 5050 2    50   ~ 0
D25
Text Label 2200 5150 2    50   ~ 0
D26
Text Label 2200 5250 2    50   ~ 0
D27
Text Label 2200 5350 2    50   ~ 0
D28
Text Label 2200 5450 2    50   ~ 0
D29
Text Label 2200 5550 2    50   ~ 0
D30
Text Label 2200 5650 2    50   ~ 0
D31
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61CE39C1
P 4150 1100
AR Path="/60CA1C9E/61CE39C1" Ref="J?"  Part="1" 
AR Path="/6139A6BE/61CE39C1" Ref="J?"  Part="1" 
F 0 "J?" H 4068 1517 50  0000 C CNN
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
AR Path="/6139A6BE/61CE39C7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 650 50  0001 C CNN
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
AR Path="/6139A6BE/61CE39CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 1250 50  0001 C CNN
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
Text HLabel 4800 2250 2    50   Output ~ 0
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
	4450 2250 4800 2250
Text HLabel 5950 6250 0    50   Output ~ 0
~DSACK0
Text HLabel 5950 6350 0    50   Output ~ 0
~DSACK1
Text HLabel 6000 6550 0    50   Input ~ 0
~DRAM_DSACK0
Text HLabel 6000 6650 0    50   Input ~ 0
~DRAM_DSACK1
Text HLabel 6600 6550 0    50   Input ~ 0
A[0..31]
Text HLabel 6600 6650 0    50   BiDi ~ 0
D[0..31]
Text HLabel 10550 6550 0    50   Output ~ 0
~LDS
Text HLabel 10550 6650 0    50   Output ~ 0
~UDS
Text HLabel 10550 6750 0    50   Output ~ 0
E
Text HLabel 10550 6850 0    50   Output ~ 0
~EXT_DBEN
Text HLabel 10550 6950 0    50   Output ~ 0
~RD~WR
Text HLabel 7800 2600 2    50   Output ~ 0
~EXT_IRQ[1..4]
Text HLabel 10500 6250 2    50   Input ~ 0
~DSACK1_EXT
Text HLabel 10500 6350 2    50   Input ~ 0
~DSACK0_EXT
Text HLabel 9500 6000 2    50   Input ~ 0
~EXT_PRD0[1..4]
Text HLabel 9500 6100 2    50   Input ~ 0
~EXT_PRD1[1..4
Text HLabel 9500 6300 2    50   Input ~ 0
~EXT_DTACK
Text HLabel 9500 6200 2    50   Input ~ 0
~EXT_BERR
Text HLabel 9800 6400 0    50   Output ~ 0
CLK10
Text HLabel 9550 4700 0    50   Output ~ 0
~CS_ETH
Text HLabel 9550 4600 0    50   Output ~ 0
RESET
Text HLabel 7950 1900 2    50   Output ~ 0
INT_ETH
Text HLabel 10850 3900 0    50   Input ~ 0
~INT_DUART
Text HLabel 10850 3800 0    50   Input ~ 0
~DTACK_DUART
Text HLabel 10850 4000 0    50   Output ~ 0
~CS_DUART
Text HLabel 9550 4500 0    50   Output ~ 0
~CS_KBD
Text HLabel 7900 1800 2    50   Input ~ 0
~INT_PS2
Text HLabel 9550 4400 0    50   Output ~ 0
~CS_RTC
Text HLabel 8150 5650 0    50   Output ~ 0
~CS_USB
Text HLabel 7750 2950 0    50   Input ~ 0
INT_USB
Text HLabel 8200 5850 0    50   Output ~ 0
~USB_ENABLE
Text HLabel 8200 5950 0    50   Input ~ 0
~USB_OVERCUR
Text HLabel 9550 4300 0    50   Output ~ 0
~CS_IDE
Text HLabel 9550 4100 0    50   Output ~ 0
~IDE_WR
Text HLabel 9550 4200 0    50   Output ~ 0
~IDE_RD
$Sheet
S 12100 2000 1000 950 
U 613CE63E
F0 "Sheet613CE63D" 50
F1 "file613CE63D.sch" 50
$EndSheet
Text HLabel 10550 1350 2    50   Output ~ 0
~IPL[0..2]
$Comp
L 74xx:74LS148 U?
U 1 1 613EF31A
P 9550 1950
F 0 "U?" H 9400 2500 50  0000 C CNN
F 1 "74LS148" H 9750 1400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 9550 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS148" H 9550 1950 50  0001 C CNN
	1    9550 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 613EF320
P 8650 1200
F 0 "RN?" H 9038 1246 50  0000 L CNN
F 1 "10K" H 8550 1400 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 9125 1200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 8650 1200 50  0001 C CNN
	1    8650 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 613EF326
P 6500 1850
F 0 "J?" H 6418 2067 50  0000 C CNN
F 1 "NMI Reset" H 6418 1976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6500 1850 50  0001 C CNN
F 3 "~" H 6500 1850 50  0001 C CNN
	1    6500 1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 613EF32C
P 7100 1850
F 0 "C?" H 7215 1896 50  0000 L CNN
F 1 "100nF" H 7215 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7138 1700 50  0001 C CNN
F 3 "~" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1550 7100 1700
Wire Wire Line
	6700 1850 6900 1850
Wire Wire Line
	6900 1850 6900 1550
Wire Wire Line
	6900 1550 7100 1550
Connection ~ 7100 1550
Wire Wire Line
	7100 1550 8250 1550
Wire Wire Line
	8250 1400 8250 1550
Connection ~ 8250 1550
Wire Wire Line
	8250 1550 9050 1550
Wire Wire Line
	9050 2250 8950 2250
Wire Wire Line
	9050 2050 8750 2050
Wire Wire Line
	9050 1850 8550 1850
Wire Wire Line
	8350 1400 8350 1650
Wire Wire Line
	8350 1650 9050 1650
Wire Wire Line
	8450 1400 8450 1750
Wire Wire Line
	8450 1750 9050 1750
Wire Wire Line
	8550 1400 8550 1850
Wire Wire Line
	8650 1400 8650 1950
Wire Wire Line
	8650 1950 9050 1950
Wire Wire Line
	8750 1400 8750 2050
Wire Wire Line
	8850 1400 8850 2150
Wire Wire Line
	8850 2150 9050 2150
Wire Wire Line
	8950 1400 8950 2250
$Comp
L power:GND #PWR?
U 1 1 613EF369
P 7100 2250
F 0 "#PWR?" H 7100 2000 50  0001 C CNN
F 1 "GND" H 7105 2077 50  0000 C CNN
F 2 "" H 7100 2250 50  0001 C CNN
F 3 "" H 7100 2250 50  0001 C CNN
	1    7100 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613EF36F
P 9550 1200
F 0 "#PWR?" H 9550 1050 50  0001 C CNN
F 1 "+5V" H 9565 1373 50  0000 C CNN
F 2 "" H 9550 1200 50  0001 C CNN
F 3 "" H 9550 1200 50  0001 C CNN
	1    9550 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 613EF375
P 8250 950
F 0 "#PWR?" H 8250 800 50  0001 C CNN
F 1 "+5V" H 8265 1123 50  0000 C CNN
F 2 "" H 8250 950 50  0001 C CNN
F 3 "" H 8250 950 50  0001 C CNN
	1    8250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1200 9550 1250
Wire Wire Line
	8250 950  8250 1000
Wire Wire Line
	7100 2250 7100 2150
Wire Wire Line
	6700 1950 6900 1950
Wire Wire Line
	6900 1950 6900 2150
Wire Wire Line
	6900 2150 7100 2150
Connection ~ 7100 2150
Wire Wire Line
	7100 2150 7100 2000
$Comp
L power:GND #PWR?
U 1 1 613EF384
P 8950 2450
F 0 "#PWR?" H 8950 2200 50  0001 C CNN
F 1 "GND" H 8955 2277 50  0000 C CNN
F 2 "" H 8950 2450 50  0001 C CNN
F 3 "" H 8950 2450 50  0001 C CNN
	1    8950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2350 8950 2350
Wire Wire Line
	8950 2350 8950 2450
Entry Wire Line
	10350 1550 10450 1450
Entry Wire Line
	10450 1550 10350 1650
Entry Wire Line
	10450 1650 10350 1750
Wire Wire Line
	10050 1750 10350 1750
Wire Wire Line
	10350 1650 10050 1650
Wire Wire Line
	10050 1550 10350 1550
Wire Bus Line
	10450 1350 10550 1350
Text Label 10150 1550 0    50   ~ 0
~IPL0
Text Label 10150 1650 0    50   ~ 0
~IPL1
Text Label 10150 1750 0    50   ~ 0
~IPL2
NoConn ~ 10050 2050
NoConn ~ 10050 2150
Wire Wire Line
	9550 2700 9550 2650
$Comp
L power:GND #PWR?
U 1 1 613EF398
P 9550 2700
F 0 "#PWR?" H 9550 2450 50  0001 C CNN
F 1 "GND" H 9555 2527 50  0000 C CNN
F 2 "" H 9550 2700 50  0001 C CNN
F 3 "" H 9550 2700 50  0001 C CNN
	1    9550 2700
	1    0    0    -1  
$EndComp
$Comp
L Timer:NE555P U?
U 1 1 6140E499
P 14750 6100
F 0 "U?" H 14550 6500 50  0000 C CNN
F 1 "NE555P" H 14950 6500 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 15400 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 15600 5700 50  0001 C CNN
	1    14750 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 6140E49F
P 12650 6950
AR Path="/6058AC66/6140E49F" Ref="J?"  Part="1" 
AR Path="/606E9E62/6140E49F" Ref="J?"  Part="1" 
AR Path="/6139A6BE/6140E49F" Ref="J?"  Part="1" 
F 0 "J?" H 12730 6942 50  0000 L CNN
F 1 "Conn_01x02" H 12730 6851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12650 6950 50  0001 C CNN
F 3 "~" H 12650 6950 50  0001 C CNN
	1    12650 6950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13250 7200 13250 7350
Wire Wire Line
	13250 7350 13050 7350
Wire Wire Line
	13250 6800 13250 6650
$Comp
L Device:R R?
U 1 1 6140E4A8
P 13600 6100
F 0 "R?" H 13670 6146 50  0000 L CNN
F 1 "10K" H 13670 6055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 13530 6100 50  0001 C CNN
F 3 "~" H 13600 6100 50  0001 C CNN
	1    13600 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6140E4AE
P 15650 6100
F 0 "R?" H 15720 6146 50  0000 L CNN
F 1 "38K" H 15720 6055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15580 6100 50  0001 C CNN
F 3 "~" H 15650 6100 50  0001 C CNN
	1    15650 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 6140E4B4
P 15400 6600
F 0 "C?" H 15518 6646 50  0000 L CNN
F 1 "10uF" H 15518 6555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 15438 6450 50  0001 C CNN
F 3 "~" H 15400 6600 50  0001 C CNN
	1    15400 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 6140E4BA
P 13600 6600
F 0 "C?" H 13718 6646 50  0000 L CNN
F 1 "10uF" H 13718 6555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 13638 6450 50  0001 C CNN
F 3 "~" H 13600 6600 50  0001 C CNN
	1    13600 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6140E4C0
P 14050 6600
F 0 "C?" H 14165 6646 50  0000 L CNN
F 1 "10nF" H 14165 6555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 14088 6450 50  0001 C CNN
F 3 "~" H 14050 6600 50  0001 C CNN
	1    14050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 6950 12900 6950
Wire Wire Line
	12900 6950 12900 6650
Wire Wire Line
	12850 7050 12900 7050
Wire Wire Line
	12900 7050 12900 7350
Wire Wire Line
	12900 7350 13050 7350
Connection ~ 13050 7350
$Comp
L power:GND #PWR?
U 1 1 6140E4CC
P 14750 6950
F 0 "#PWR?" H 14750 6700 50  0001 C CNN
F 1 "GND" H 14755 6777 50  0000 C CNN
F 2 "" H 14750 6950 50  0001 C CNN
F 3 "" H 14750 6950 50  0001 C CNN
	1    14750 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14050 6750 14050 6850
Wire Wire Line
	14050 6850 14750 6850
Wire Wire Line
	14750 6850 14750 6500
Wire Wire Line
	14750 6850 14750 6950
Connection ~ 14750 6850
Wire Wire Line
	14750 6850 15400 6850
Wire Wire Line
	15400 6850 15400 6750
Wire Wire Line
	15250 6300 15400 6300
Wire Wire Line
	15400 6300 15400 6450
Wire Wire Line
	15250 6100 15400 6100
Wire Wire Line
	15400 6100 15400 6300
Connection ~ 15400 6300
$Comp
L power:+5V #PWR?
U 1 1 6140E4DE
P 14750 5500
F 0 "#PWR?" H 14750 5350 50  0001 C CNN
F 1 "+5V" H 14765 5673 50  0000 C CNN
F 2 "" H 14750 5500 50  0001 C CNN
F 3 "" H 14750 5500 50  0001 C CNN
	1    14750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14750 5500 14750 5600
Wire Wire Line
	14750 5600 15650 5600
Wire Wire Line
	15650 5600 15650 5950
Connection ~ 14750 5600
Wire Wire Line
	14750 5600 14750 5700
Wire Wire Line
	15400 6300 15650 6300
Wire Wire Line
	15650 6300 15650 6250
Wire Wire Line
	14050 6850 13600 6850
Wire Wire Line
	13600 6850 13600 6750
Connection ~ 14050 6850
Wire Wire Line
	14250 6100 14050 6100
Wire Wire Line
	14050 6100 14050 6450
Wire Wire Line
	13600 6250 13600 6350
Wire Wire Line
	13600 5600 13600 5950
Wire Wire Line
	13600 5600 14150 5600
Wire Wire Line
	15250 5900 16200 5900
Text Label 15850 5900 0    50   ~ 0
RESET
Wire Wire Line
	14250 5900 13900 5900
Wire Wire Line
	13900 5900 13900 6350
Wire Wire Line
	13900 6350 13600 6350
Connection ~ 13600 6350
Wire Wire Line
	13600 6350 13600 6450
Wire Wire Line
	13600 6350 13250 6350
Wire Wire Line
	13250 6350 13250 6650
Connection ~ 13250 6650
$Comp
L power:GND #PWR?
U 1 1 6140E4FD
P 13050 7350
F 0 "#PWR?" H 13050 7100 50  0001 C CNN
F 1 "GND" H 13055 7177 50  0000 C CNN
F 2 "" H 13050 7350 50  0001 C CNN
F 3 "" H 13050 7350 50  0001 C CNN
	1    13050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 6300 14150 6300
Wire Wire Line
	14150 6300 14150 5600
Connection ~ 14150 5600
Wire Wire Line
	14150 5600 14750 5600
$Comp
L Switch:SW_SPST SW?
U 1 1 6140E507
P 13250 7000
AR Path="/6058AC66/6140E507" Ref="SW?"  Part="1" 
AR Path="/606E9E62/6140E507" Ref="SW?"  Part="1" 
AR Path="/6139A6BE/6140E507" Ref="SW?"  Part="1" 
F 0 "SW?" V 13296 6912 50  0000 R CNN
F 1 "SW_SPST" V 13205 6912 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 13250 7000 50  0001 C CNN
F 3 "~" H 13250 7000 50  0001 C CNN
	1    13250 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12900 6650 13250 6650
Text HLabel 6900 3800 0    50   Output ~ 0
~UUCS
Text HLabel 6900 3900 0    50   Output ~ 0
~LMCS
Text HLabel 6900 4000 0    50   Output ~ 0
~LMCS
Text HLabel 6900 4100 0    50   Output ~ 0
~LLCS
Text HLabel 6800 4700 2    50   Output ~ 0
~CS_ROM
Text HLabel 6800 4800 2    50   Output ~ 0
~CS_SRAM
NoConn ~ -500 4250
NoConn ~ -500 4350
NoConn ~ -500 4450
NoConn ~ -500 4650
NoConn ~ -500 4750
NoConn ~ -500 4850
NoConn ~ -500 4950
Wire Wire Line
	-1300 4850 -1600 4850
Wire Wire Line
	-1600 4350 -1300 4350
Wire Wire Line
	-2150 4150 -2150 4200
$Comp
L power:+5V #PWR?
U 1 1 617636DB
P -2150 4150
F 0 "#PWR?" H -2150 4000 50  0001 C CNN
F 1 "+5V" H -2135 4323 50  0000 C CNN
F 2 "" H -2150 4150 50  0001 C CNN
F 3 "" H -2150 4150 50  0001 C CNN
	1    -2150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	-500 4550 -250 4550
Wire Wire Line
	-900 5200 -900 5150
$Comp
L power:GND #PWR?
U 1 1 617636E3
P -900 5200
F 0 "#PWR?" H -900 4950 50  0001 C CNN
F 1 "GND" H -895 5027 50  0000 C CNN
F 2 "" H -900 5200 50  0001 C CNN
F 3 "" H -900 5200 50  0001 C CNN
	1    -900 5200
	1    0    0    -1  
$EndComp
Text Label -1600 4350 2    50   ~ 0
~RESET
Text Label -1600 4850 2    50   ~ 0
~AS
Text Label -250 4550 0    50   ~ 0
BOOTROM
$Comp
L Device:R R?
U 1 1 617636EC
P -2150 4350
F 0 "R?" H -2080 4396 50  0000 L CNN
F 1 "4K7" H -2080 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V -2220 4350 50  0001 C CNN
F 3 "~" H -2150 4350 50  0001 C CNN
	1    -2150 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC164 U?
U 1 1 617636F2
P -900 4550
F 0 "U?" H -650 5050 50  0000 C CNN
F 1 "74HC164" H -700 4000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H -900 4550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT164.pdf" H -900 4550 50  0001 C CNN
	1    -900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2150 4650 -2150 4550
Wire Wire Line
	-2150 4650 -1300 4650
Wire Wire Line
	-2150 4550 -1300 4550
Connection ~ -2150 4550
Wire Wire Line
	-2150 4550 -2150 4500
$Comp
L power:+5V #PWR?
U 1 1 617636FD
P -900 3950
F 0 "#PWR?" H -900 3800 50  0001 C CNN
F 1 "+5V" H -885 4123 50  0000 C CNN
F 2 "" H -900 3950 50  0001 C CNN
F 3 "" H -900 3950 50  0001 C CNN
	1    -900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	-900 3950 -900 4050
Wire Bus Line
	10450 1350 10450 1650
$EndSCHEMATC
