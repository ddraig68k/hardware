EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 13
Title "Y Ddraig Fechan"
Date ""
Rev ""
Comp "Stephen Moody"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Ddraig:AT89C51-24PI U20
U 1 1 614188A1
P 4750 2800
F 0 "U20" H 4300 4100 50  0000 C CNN
F 1 "AT89C51-24PI" H 5100 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y3
U 1 1 6141AAA3
P 3650 4300
F 0 "Y3" H 3650 4568 50  0000 C CNN
F 1 "12Mhz" H 3650 4477 50  0000 C CNN
F 2 "Crystal:Crystal_HC50_Vertical" H 3650 4300 50  0001 C CNN
F 3 "~" H 3650 4300 50  0001 C CNN
	1    3650 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 6141B153
P 3400 4600
F 0 "C50" H 3515 4646 50  0000 L CNN
F 1 "22pF" H 3515 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3438 4450 50  0001 C CNN
F 3 "~" H 3400 4600 50  0001 C CNN
	1    3400 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C52
U 1 1 6141B584
P 3900 4600
F 0 "C52" H 4015 4646 50  0000 L CNN
F 1 "22pF" H 4015 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3938 4450 50  0001 C CNN
F 3 "~" H 3900 4600 50  0001 C CNN
	1    3900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4300 3800 4300
Wire Wire Line
	3900 4300 3900 4450
Wire Wire Line
	3900 4300 3900 3900
Wire Wire Line
	3900 3900 4100 3900
Connection ~ 3900 4300
Wire Wire Line
	4100 3800 3400 3800
Wire Wire Line
	3400 3800 3400 4300
Wire Wire Line
	3500 4300 3400 4300
Connection ~ 3400 4300
Wire Wire Line
	3400 4300 3400 4450
$Comp
L power:GND #PWR094
U 1 1 6141CC10
P 3400 4850
F 0 "#PWR094" H 3400 4600 50  0001 C CNN
F 1 "GND" H 3405 4677 50  0000 C CNN
F 2 "" H 3400 4850 50  0001 C CNN
F 3 "" H 3400 4850 50  0001 C CNN
	1    3400 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR095
U 1 1 6141D033
P 3900 4850
F 0 "#PWR095" H 3900 4600 50  0001 C CNN
F 1 "GND" H 3905 4677 50  0000 C CNN
F 2 "" H 3900 4850 50  0001 C CNN
F 3 "" H 3900 4850 50  0001 C CNN
	1    3900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4850 3900 4750
Wire Wire Line
	3400 4850 3400 4750
$Comp
L power:GND #PWR097
U 1 1 6141D440
P 4750 4400
F 0 "#PWR097" H 4750 4150 50  0001 C CNN
F 1 "GND" H 4755 4227 50  0000 C CNN
F 2 "" H 4750 4400 50  0001 C CNN
F 3 "" H 4750 4400 50  0001 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4400 4750 4300
$Comp
L power:GND #PWR098
U 1 1 6141D955
P 5500 4000
F 0 "#PWR098" H 5500 3750 50  0001 C CNN
F 1 "GND" H 5505 3827 50  0000 C CNN
F 2 "" H 5500 4000 50  0001 C CNN
F 3 "" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3900 5500 3900
Wire Wire Line
	5500 3900 5500 4000
NoConn ~ 5400 3700
NoConn ~ 5400 3600
$Comp
L power:+5V #PWR096
U 1 1 6141F129
P 4750 1300
F 0 "#PWR096" H 4750 1150 50  0001 C CNN
F 1 "+5V" H 4765 1473 50  0000 C CNN
F 2 "" H 4750 1300 50  0001 C CNN
F 3 "" H 4750 1300 50  0001 C CNN
	1    4750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1300 4750 1400
Text HLabel 3900 3600 0    50   Input ~ 0
RESET
Wire Wire Line
	3900 3600 4100 3600
Text Label 3050 1800 2    50   ~ 0
~ROW0
Text Label 3050 1900 2    50   ~ 0
~ROW1
Text Label 3050 2000 2    50   ~ 0
~ROW2
Text Label 3050 2100 2    50   ~ 0
~ROW3
Text Label 3050 2200 2    50   ~ 0
~ROW4
Text Label 3050 2300 2    50   ~ 0
~ROW5
Text Label 3050 2400 2    50   ~ 0
~ROW6
Text Label 3050 2500 2    50   ~ 0
~ROW7
Text Label 1650 4100 0    50   ~ 0
~COL0
Text Label 1650 4000 0    50   ~ 0
~COL1
Text Label 1650 3900 0    50   ~ 0
~COL2
Text Label 1650 3800 0    50   ~ 0
~COL3
Text Label 1650 3700 0    50   ~ 0
~COL4
Text Label 1650 3600 0    50   ~ 0
~COL5
Text Label 1650 3500 0    50   ~ 0
~COL6
Text Label 1650 3400 0    50   ~ 0
~COL7
Wire Wire Line
	4100 1800 3200 1800
Wire Wire Line
	4100 1900 3300 1900
Wire Wire Line
	4100 2000 3400 2000
Wire Wire Line
	4100 2100 3500 2100
Wire Wire Line
	4100 2200 3600 2200
Wire Wire Line
	4100 2400 3800 2400
Wire Wire Line
	4100 2500 3900 2500
$Comp
L Device:R_Network08 RN3
U 1 1 61425C9C
P 3600 1250
F 0 "RN3" H 3988 1296 50  0000 L CNN
F 1 "10K" H 3988 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 4075 1250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3600 1250 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR093
U 1 1 6142671F
P 3200 1000
F 0 "#PWR093" H 3200 850 50  0001 C CNN
F 1 "+5V" H 3215 1173 50  0000 C CNN
F 2 "" H 3200 1000 50  0001 C CNN
F 3 "" H 3200 1000 50  0001 C CNN
	1    3200 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1000 3200 1050
Wire Wire Line
	3200 1450 3200 1800
Wire Wire Line
	3300 1450 3300 1900
Connection ~ 3300 1900
Wire Wire Line
	3400 2000 3400 1450
Connection ~ 3400 2000
Wire Wire Line
	3500 1450 3500 2100
Connection ~ 3500 2100
Wire Wire Line
	4100 2300 3700 2300
Wire Wire Line
	3600 2200 3600 1450
Connection ~ 3600 2200
Wire Wire Line
	3700 1450 3700 2300
Wire Wire Line
	3900 1450 3900 2500
Wire Wire Line
	3800 1450 3800 2400
Text Label 5550 1800 0    50   ~ 0
SCDAT0
Text Label 5550 1900 0    50   ~ 0
SCDAT1
Text Label 5550 2000 0    50   ~ 0
SCDAT2
Text Label 5550 2100 0    50   ~ 0
SCDAT3
Text Label 5550 2200 0    50   ~ 0
SCDAT4
Text Label 5550 2300 0    50   ~ 0
SCDAT5
Text Label 5550 2400 0    50   ~ 0
SCDAT6
Text Label 5550 2500 0    50   ~ 0
SCDAT7
$Comp
L Memory_RAM:IDT7201 U22
U 1 1 6143D786
P 8650 2350
F 0 "U22" H 8300 3150 50  0000 C CNN
F 1 "IDT7201" H 8900 3150 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 8650 2350 50  0001 C CNN
F 3 "" H 8650 2350 50  0001 C CNN
	1    8650 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61442D70
P 8650 1300
F 0 "#PWR0106" H 8650 1150 50  0001 C CNN
F 1 "+5V" H 8665 1473 50  0000 C CNN
F 2 "" H 8650 1300 50  0001 C CNN
F 3 "" H 8650 1300 50  0001 C CNN
	1    8650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61458543
P 8650 3400
F 0 "#PWR0107" H 8650 3150 50  0001 C CNN
F 1 "GND" H 8655 3227 50  0000 C CNN
F 2 "" H 8650 3400 50  0001 C CNN
F 3 "" H 8650 3400 50  0001 C CNN
	1    8650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 614588EA
P 7850 2900
F 0 "#PWR0104" H 7850 2650 50  0001 C CNN
F 1 "GND" H 7855 2727 50  0000 C CNN
F 2 "" H 7850 2900 50  0001 C CNN
F 3 "" H 7850 2900 50  0001 C CNN
	1    7850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2900 7850 2700
Wire Wire Line
	7850 2600 7950 2600
Wire Wire Line
	7950 2700 7850 2700
Connection ~ 7850 2700
Wire Wire Line
	7850 2700 7850 2600
Entry Wire Line
	9950 2600 9850 2500
Entry Wire Line
	9950 2500 9850 2400
Entry Wire Line
	9950 2400 9850 2300
Entry Wire Line
	9950 2300 9850 2200
Entry Wire Line
	9950 2200 9850 2100
Entry Wire Line
	9950 2100 9850 2000
Entry Wire Line
	9950 2000 9850 1900
Entry Wire Line
	9950 1900 9850 1800
Wire Wire Line
	9350 1800 9850 1800
Wire Wire Line
	9350 1900 9850 1900
Wire Wire Line
	9350 2000 9850 2000
Wire Wire Line
	9350 2100 9850 2100
Wire Wire Line
	9350 2200 9850 2200
Wire Wire Line
	9350 2300 9850 2300
Wire Wire Line
	9350 2400 9850 2400
Wire Wire Line
	9350 2500 9850 2500
NoConn ~ 9350 2600
Wire Wire Line
	6950 3300 5400 3300
Wire Wire Line
	5400 3400 7050 3400
Text Label 7250 2800 0    50   ~ 0
~FIFO_CLR
Text Label 7250 1700 0    50   ~ 0
~FIFO_WR
Wire Wire Line
	5400 1800 7950 1800
Wire Wire Line
	5400 1900 7950 1900
Wire Wire Line
	5400 2000 7950 2000
Wire Wire Line
	5400 2100 7950 2100
Wire Wire Line
	5400 2200 7950 2200
Wire Wire Line
	5400 2300 7950 2300
Wire Wire Line
	5400 2400 7950 2400
Wire Wire Line
	5400 2500 7950 2500
Wire Wire Line
	6950 3300 6950 1700
Wire Wire Line
	6950 1700 7950 1700
Wire Wire Line
	7050 3400 7050 2800
Wire Wire Line
	7050 2800 7950 2800
Text HLabel 10100 6000 2    50   BiDi ~ 0
D[0..7]
$Comp
L 74xx:74LS138 U21
U 1 1 614E88B4
P 6300 5750
F 0 "U21" H 6050 6200 50  0000 C CNN
F 1 "74LS138" H 6500 6200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6300 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 6300 5750 50  0001 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J6
U 1 1 614EA1C2
P 1200 3100
F 0 "J6" H 1118 4217 50  0000 C CNN
F 1 "Keyboard" H 1118 4126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 1200 3100 50  0001 C CNN
F 3 "~" H 1200 3100 50  0001 C CNN
	1    1200 3100
	-1   0    0    -1  
$EndComp
Connection ~ 3700 2300
Connection ~ 3200 1800
NoConn ~ 1400 2300
Text Label 6500 3200 0    50   ~ 0
~ROW8
Text Label 5900 3100 0    50   ~ 0
~COL8
Wire Wire Line
	5400 3100 5900 3100
$Comp
L Device:R R25
U 1 1 61426438
P 6250 2800
F 0 "R25" H 6320 2846 50  0000 L CNN
F 1 "10K" H 6320 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 2800 50  0001 C CNN
F 3 "~" H 6250 2800 50  0001 C CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3200 6250 3200
Wire Wire Line
	6250 2950 6250 3200
Connection ~ 6250 3200
Wire Wire Line
	6250 3200 6500 3200
$Comp
L power:+5V #PWR0101
U 1 1 61436D31
P 6250 1300
F 0 "#PWR0101" H 6250 1150 50  0001 C CNN
F 1 "+5V" H 6265 1473 50  0000 C CNN
F 2 "" H 6250 1300 50  0001 C CNN
F 3 "" H 6250 1300 50  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1300 6250 2650
$Comp
L power:GND #PWR0103
U 1 1 6143C495
P 6300 6500
F 0 "#PWR0103" H 6300 6250 50  0001 C CNN
F 1 "GND" H 6305 6327 50  0000 C CNN
F 2 "" H 6300 6500 50  0001 C CNN
F 3 "" H 6300 6500 50  0001 C CNN
	1    6300 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6143C852
P 6300 5100
F 0 "#PWR0102" H 6300 4950 50  0001 C CNN
F 1 "+5V" H 6315 5273 50  0000 C CNN
F 2 "" H 6300 5100 50  0001 C CNN
F 3 "" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5150 6300 5100
Wire Wire Line
	6300 6500 6300 6450
Wire Wire Line
	8650 3400 8650 3350
Wire Wire Line
	8650 1350 8650 1300
$Comp
L 74xx:74HCT541 U23
U 1 1 61471D33
P 8850 5150
F 0 "U23" H 8600 5800 50  0000 C CNN
F 1 "74HCT541" H 9100 5800 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 8850 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 8850 5150 50  0001 C CNN
	1    8850 5150
	1    0    0    -1  
$EndComp
Wire Bus Line
	9950 6000 10100 6000
Entry Wire Line
	9950 5450 9850 5350
Entry Wire Line
	9950 5350 9850 5250
Entry Wire Line
	9950 5250 9850 5150
Entry Wire Line
	9950 5150 9850 5050
Entry Wire Line
	9950 5050 9850 4950
Entry Wire Line
	9950 4950 9850 4850
Entry Wire Line
	9950 4850 9850 4750
Entry Wire Line
	9950 4750 9850 4650
Wire Wire Line
	9350 4650 9850 4650
Wire Wire Line
	9350 4750 9850 4750
Wire Wire Line
	9350 4850 9850 4850
Wire Wire Line
	9350 4950 9850 4950
Wire Wire Line
	9350 5050 9850 5050
Wire Wire Line
	9350 5150 9850 5150
Wire Wire Line
	9350 5250 9850 5250
Wire Wire Line
	9350 5350 9850 5350
Wire Wire Line
	9650 3900 7950 3900
Wire Wire Line
	8350 4750 7950 4750
Wire Wire Line
	7950 3900 7950 4750
Wire Wire Line
	8350 4650 8050 4650
Wire Wire Line
	8050 4650 8050 4000
Wire Wire Line
	8050 4000 9750 4000
Wire Wire Line
	9750 4000 9750 2700
Wire Wire Line
	9350 3000 9650 3000
Wire Wire Line
	9650 3000 9650 3900
Wire Wire Line
	9350 2700 9750 2700
Text Label 8400 3900 0    50   ~ 0
~FIFO_FULL
Text Label 8400 4000 0    50   ~ 0
~FIFO_EMPTY
NoConn ~ 9350 2900
$Comp
L power:+5V #PWR0110
U 1 1 61493B77
P 10350 2650
F 0 "#PWR0110" H 10350 2500 50  0001 C CNN
F 1 "+5V" H 10365 2823 50  0000 C CNN
F 2 "" H 10350 2650 50  0001 C CNN
F 3 "" H 10350 2650 50  0001 C CNN
	1    10350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2800 10350 2800
Wire Wire Line
	10350 2800 10350 2650
$Comp
L power:+5V #PWR0108
U 1 1 6149A3E6
P 8850 4300
F 0 "#PWR0108" H 8850 4150 50  0001 C CNN
F 1 "+5V" H 8865 4473 50  0000 C CNN
F 2 "" H 8850 4300 50  0001 C CNN
F 3 "" H 8850 4300 50  0001 C CNN
	1    8850 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6149A802
P 8850 6000
F 0 "#PWR0109" H 8850 5750 50  0001 C CNN
F 1 "GND" H 8855 5827 50  0000 C CNN
F 2 "" H 8850 6000 50  0001 C CNN
F 3 "" H 8850 6000 50  0001 C CNN
	1    8850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 6000 8850 5950
Wire Wire Line
	8850 4350 8850 4300
$Comp
L power:GND #PWR0105
U 1 1 614A0E23
P 8250 5750
F 0 "#PWR0105" H 8250 5500 50  0001 C CNN
F 1 "GND" H 8255 5577 50  0000 C CNN
F 2 "" H 8250 5750 50  0001 C CNN
F 3 "" H 8250 5750 50  0001 C CNN
	1    8250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5750 8250 5650
Wire Wire Line
	8250 5650 8350 5650
Wire Wire Line
	8250 5650 8250 5350
Wire Wire Line
	8250 4850 8350 4850
Connection ~ 8250 5650
Wire Wire Line
	8350 4950 8250 4950
Connection ~ 8250 4950
Wire Wire Line
	8250 4950 8250 4850
Wire Wire Line
	8350 5050 8250 5050
Connection ~ 8250 5050
Wire Wire Line
	8250 5050 8250 4950
Wire Wire Line
	8350 5150 8250 5150
Connection ~ 8250 5150
Wire Wire Line
	8250 5150 8250 5050
Wire Wire Line
	8350 5250 8250 5250
Connection ~ 8250 5250
Wire Wire Line
	8250 5250 8250 5150
Wire Wire Line
	8350 5350 8250 5350
Connection ~ 8250 5350
Wire Wire Line
	8250 5350 8250 5250
Wire Wire Line
	8350 5550 6800 5550
Wire Wire Line
	6800 5450 7850 5450
Wire Wire Line
	7850 5450 7850 6500
Wire Wire Line
	7850 6500 10700 6500
Wire Wire Line
	10700 6500 10700 1700
Wire Wire Line
	10700 1700 9350 1700
Text Label 10000 1700 0    50   ~ 0
~FIFO_RD
Text HLabel 5000 5300 0    50   Input ~ 0
A[0..15]
Text HLabel 5400 6050 0    50   Input ~ 0
~RD
Text HLabel 5400 6150 0    50   Input ~ 0
~CS_KBD
Wire Wire Line
	5400 6150 5800 6150
Wire Wire Line
	5800 6050 5400 6050
Wire Wire Line
	5300 5450 5800 5450
$Comp
L power:GND #PWR0100
U 1 1 614D6384
P 5700 6500
F 0 "#PWR0100" H 5700 6250 50  0001 C CNN
F 1 "GND" H 5705 6327 50  0000 C CNN
F 2 "" H 5700 6500 50  0001 C CNN
F 3 "" H 5700 6500 50  0001 C CNN
	1    5700 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6500 5700 5650
Wire Wire Line
	5700 5650 5800 5650
$Comp
L power:+5V #PWR099
U 1 1 614E077C
P 5600 5100
F 0 "#PWR099" H 5600 4950 50  0001 C CNN
F 1 "+5V" H 5615 5273 50  0000 C CNN
F 2 "" H 5600 5100 50  0001 C CNN
F 3 "" H 5600 5100 50  0001 C CNN
	1    5600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5100 5600 5950
Wire Wire Line
	5600 5950 5800 5950
Text Label 1650 3300 0    50   ~ 0
~ROW0
Text Label 1650 3200 0    50   ~ 0
~ROW1
Text Label 1650 3100 0    50   ~ 0
~ROW2
Text Label 1650 3000 0    50   ~ 0
~ROW3
Text Label 1650 2900 0    50   ~ 0
~ROW4
Text Label 1650 2800 0    50   ~ 0
~ROW5
Text Label 1650 2700 0    50   ~ 0
~ROW6
Text Label 1650 2600 0    50   ~ 0
~ROW7
Text Label 3900 2700 2    50   ~ 0
~COL0
Text Label 3900 2800 2    50   ~ 0
~COL1
Text Label 3900 2900 2    50   ~ 0
~COL2
Text Label 3900 3000 2    50   ~ 0
~COL3
Text Label 3900 3100 2    50   ~ 0
~COL4
Text Label 3900 3200 2    50   ~ 0
~COL5
Text Label 3900 3300 2    50   ~ 0
~COL6
Text Label 3900 3400 2    50   ~ 0
~COL7
Text Label 1650 2200 0    50   ~ 0
~COL8
Text Label 1650 2400 0    50   ~ 0
~ROW8
NoConn ~ 1400 2500
Wire Wire Line
	1650 2200 1400 2200
Wire Wire Line
	1400 2400 1650 2400
Text Label 9500 4650 0    50   ~ 0
D0
Text Label 9500 4750 0    50   ~ 0
D1
Text Label 9500 4850 0    50   ~ 0
D2
Text Label 9500 4950 0    50   ~ 0
D3
Text Label 9500 5050 0    50   ~ 0
D4
Text Label 9500 5150 0    50   ~ 0
D5
Text Label 9500 5250 0    50   ~ 0
D6
Text Label 9500 5350 0    50   ~ 0
D7
Entry Wire Line
	5200 5350 5300 5450
Wire Bus Line
	5000 5300 5200 5300
Wire Bus Line
	5200 5300 5200 5350
Text Label 5400 5450 0    50   ~ 0
A0
Text Label 7050 5450 0    50   ~ 0
~FIFO_RD
Text Label 7050 5550 0    50   ~ 0
~KBD_STATUS
Wire Wire Line
	5700 5650 5700 5550
Wire Wire Line
	5700 5550 5800 5550
Connection ~ 5700 5650
NoConn ~ 5400 2700
NoConn ~ 5400 2800
NoConn ~ 5400 2900
NoConn ~ 5400 3000
Wire Wire Line
	2000 2600 2000 2500
Wire Wire Line
	2000 2500 3900 2500
Connection ~ 3900 2500
Wire Wire Line
	3800 2400 2100 2400
Wire Wire Line
	2100 2400 2100 2700
Wire Wire Line
	2100 2700 1400 2700
Connection ~ 3800 2400
Wire Wire Line
	1400 2600 2000 2600
Wire Wire Line
	1400 2800 2200 2800
Wire Wire Line
	2200 2800 2200 2300
Wire Wire Line
	2200 2300 3700 2300
Wire Wire Line
	1400 2900 2300 2900
Wire Wire Line
	2300 2900 2300 2200
Wire Wire Line
	2300 2200 3600 2200
Wire Wire Line
	1400 3000 2400 3000
Wire Wire Line
	2400 3000 2400 2100
Wire Wire Line
	2400 2100 3500 2100
Wire Wire Line
	1400 3100 2500 3100
Wire Wire Line
	2500 3100 2500 2000
Wire Wire Line
	2500 2000 3400 2000
Wire Wire Line
	1400 3200 2600 3200
Wire Wire Line
	2600 3200 2600 1900
Wire Wire Line
	2600 1900 3300 1900
Wire Wire Line
	2700 3300 2700 1800
Wire Wire Line
	1400 3300 2700 3300
Wire Wire Line
	2700 1800 3200 1800
Wire Wire Line
	1400 3400 4100 3400
Wire Wire Line
	1400 4100 2800 4100
Wire Wire Line
	2800 4100 2800 2700
Wire Wire Line
	2800 2700 4100 2700
Wire Wire Line
	1400 4000 2900 4000
Wire Wire Line
	2900 4000 2900 2800
Wire Wire Line
	2900 2800 4100 2800
Wire Wire Line
	1400 3900 3000 3900
Wire Wire Line
	3000 3900 3000 2900
Wire Wire Line
	3000 2900 4100 2900
Wire Wire Line
	3100 3800 3100 3000
Wire Wire Line
	3100 3000 4100 3000
Wire Wire Line
	1400 3800 3100 3800
Wire Wire Line
	1400 3700 3200 3700
Wire Wire Line
	3200 3700 3200 3100
Wire Wire Line
	3200 3100 4100 3100
Wire Wire Line
	1400 3600 3300 3600
Wire Wire Line
	3300 3600 3300 3200
Wire Wire Line
	3300 3200 4100 3200
Wire Wire Line
	3400 3500 3400 3300
Wire Wire Line
	3400 3300 4100 3300
Wire Wire Line
	1400 3500 3400 3500
Text Notes 1400 4350 0    50   ~ 0
C64 keyboard connector\n      (P2 removed)
Text HLabel 10150 4000 2    50   Output ~ 0
~IRQ_KBD
Wire Wire Line
	9750 4000 10150 4000
Connection ~ 9750 4000
$Comp
L Device:C C48
U 1 1 616DD797
P 2400 6200
F 0 "C48" H 2515 6246 50  0000 L CNN
F 1 "100nF" H 2515 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2438 6050 50  0001 C CNN
F 3 "~" H 2400 6200 50  0001 C CNN
	1    2400 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C49
U 1 1 616DD79D
P 2900 6200
F 0 "C49" H 3015 6246 50  0000 L CNN
F 1 "100nF" H 3015 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2938 6050 50  0001 C CNN
F 3 "~" H 2900 6200 50  0001 C CNN
	1    2900 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C51
U 1 1 616DD7A3
P 3400 6200
F 0 "C51" H 3515 6246 50  0000 L CNN
F 1 "100nF" H 3515 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3438 6050 50  0001 C CNN
F 3 "~" H 3400 6200 50  0001 C CNN
	1    3400 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C53
U 1 1 616DD7A9
P 3900 6200
F 0 "C53" H 4015 6246 50  0000 L CNN
F 1 "100nF" H 4015 6155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3938 6050 50  0001 C CNN
F 3 "~" H 3900 6200 50  0001 C CNN
	1    3900 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR091
U 1 1 616DD7AF
P 3150 5900
F 0 "#PWR091" H 3150 5750 50  0001 C CNN
F 1 "+5V" H 3165 6073 50  0000 C CNN
F 2 "" H 3150 5900 50  0001 C CNN
F 3 "" H 3150 5900 50  0001 C CNN
	1    3150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR092
U 1 1 616DD7B5
P 3150 6500
F 0 "#PWR092" H 3150 6250 50  0001 C CNN
F 1 "GND" H 3155 6327 50  0000 C CNN
F 2 "" H 3150 6500 50  0001 C CNN
F 3 "" H 3150 6500 50  0001 C CNN
	1    3150 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6050 2400 5950
Wire Wire Line
	2400 5950 2900 5950
Wire Wire Line
	3900 5950 3900 6050
Connection ~ 3150 5950
Wire Wire Line
	3150 5950 3400 5950
Wire Wire Line
	3150 5900 3150 5950
Wire Wire Line
	2400 6350 2400 6450
Wire Wire Line
	2400 6450 2900 6450
Wire Wire Line
	3900 6450 3900 6350
Wire Wire Line
	3150 6500 3150 6450
Connection ~ 3150 6450
Wire Wire Line
	3150 6450 3400 6450
Wire Wire Line
	2900 6350 2900 6450
Connection ~ 2900 6450
Wire Wire Line
	2900 6450 3150 6450
Wire Wire Line
	2900 6050 2900 5950
Connection ~ 2900 5950
Wire Wire Line
	2900 5950 3150 5950
Wire Wire Line
	3400 6050 3400 5950
Connection ~ 3400 5950
Wire Wire Line
	3400 5950 3900 5950
Wire Wire Line
	3400 6350 3400 6450
Connection ~ 3400 6450
Wire Wire Line
	3400 6450 3900 6450
Text Label 9600 1800 0    50   ~ 0
D0
Text Label 9600 1900 0    50   ~ 0
D1
Text Label 9600 2000 0    50   ~ 0
D2
Text Label 9600 2100 0    50   ~ 0
D3
Text Label 9600 2200 0    50   ~ 0
D4
Text Label 9600 2300 0    50   ~ 0
D5
Text Label 9600 2400 0    50   ~ 0
D6
Text Label 9600 2500 0    50   ~ 0
D7
NoConn ~ 6800 5650
NoConn ~ 6800 5750
NoConn ~ 6800 5850
NoConn ~ 6800 5950
NoConn ~ 6800 6050
NoConn ~ 6800 6150
Wire Bus Line
	9950 1900 9950 6000
$EndSCHEMATC
