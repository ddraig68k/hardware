EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 14
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
$EndSCHEMATC
