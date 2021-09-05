EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
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
L power:GND #PWR?
U 1 1 61A0B607
P 7750 6200
F 0 "#PWR?" H 7750 5950 50  0001 C CNN
F 1 "GND" H 7755 6027 50  0000 C CNN
F 2 "" H 7750 6200 50  0001 C CNN
F 3 "" H 7750 6200 50  0001 C CNN
	1    7750 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61A0BE69
P 5750 1450
F 0 "J?" H 5830 1442 50  0000 L CNN
F 1 "JTAG" H 5830 1351 50  0000 L CNN
F 2 "" H 5750 1450 50  0001 C CNN
F 3 "~" H 5750 1450 50  0001 C CNN
	1    5750 1450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A0F2B9
P 6050 1850
F 0 "#PWR?" H 6050 1600 50  0001 C CNN
F 1 "GND" H 6055 1677 50  0000 C CNN
F 2 "" H 6050 1850 50  0001 C CNN
F 3 "" H 6050 1850 50  0001 C CNN
	1    6050 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 1850 6050 1750
Wire Wire Line
	6050 1750 5950 1750
Wire Wire Line
	5950 1250 6050 1250
Wire Wire Line
	6050 1250 6050 1150
Text HLabel 9350 2500 2    50   Output ~ 0
RAMBANK[0..5]
Text HLabel 9350 2100 2    50   Output ~ 0
ROMBANK[0..3]
Entry Wire Line
	9200 2100 9100 2200
Entry Wire Line
	9200 2200 9100 2300
Entry Wire Line
	9200 2300 9100 2400
Entry Wire Line
	9200 2400 9100 2500
Entry Wire Line
	9200 2500 9100 2600
Entry Wire Line
	9200 2600 9100 2700
Entry Wire Line
	9200 2700 9100 2800
Entry Wire Line
	9200 2800 9100 2900
Entry Wire Line
	9200 2900 9100 3000
Entry Wire Line
	9200 3000 9100 3100
Wire Wire Line
	8600 2200 9100 2200
Wire Wire Line
	8600 2300 9100 2300
Wire Wire Line
	8600 2400 9100 2400
Wire Wire Line
	8600 2500 9100 2500
Wire Wire Line
	8600 2600 9100 2600
Wire Wire Line
	8600 2700 9100 2700
Wire Wire Line
	8600 2800 9100 2800
Wire Wire Line
	8600 2900 9100 2900
Wire Wire Line
	8600 3000 9100 3000
Wire Wire Line
	8600 3100 9100 3100
Text Label 8650 2200 0    50   ~ 0
ROMBANK0
Text Label 8650 2300 0    50   ~ 0
ROMBANK1
Text Label 8650 2400 0    50   ~ 0
ROMBANK2
Text Label 8650 2500 0    50   ~ 0
ROMBANK3
Text Label 8650 2600 0    50   ~ 0
RAMBANK0
Text Label 8650 2700 0    50   ~ 0
RAMBANK1
Text Label 8650 2800 0    50   ~ 0
RAMBANK2
Text Label 8650 2900 0    50   ~ 0
RAMBANK3
Text Label 8650 3000 0    50   ~ 0
RAMBANK4
Text Label 8650 3100 0    50   ~ 0
RAMBANK5
Wire Bus Line
	9200 2500 9350 2500
Wire Bus Line
	9200 2100 9350 2100
Entry Wire Line
	9750 3400 9650 3500
Entry Wire Line
	9750 3500 9650 3600
Entry Wire Line
	9750 3600 9650 3700
Entry Wire Line
	9750 3700 9650 3800
Entry Wire Line
	9750 3800 9650 3900
Entry Wire Line
	9750 3900 9650 4000
Entry Wire Line
	9750 4000 9650 4100
Entry Wire Line
	9750 4100 9650 4200
Entry Wire Line
	6250 3500 6350 3600
Entry Wire Line
	6250 3600 6350 3700
Entry Wire Line
	6250 3700 6350 3800
Entry Wire Line
	6250 3800 6350 3900
Entry Wire Line
	6250 3900 6350 4000
Entry Wire Line
	6250 4000 6350 4100
Entry Wire Line
	6250 4100 6350 4200
Entry Wire Line
	6250 4200 6350 4300
Entry Wire Line
	6250 4300 6350 4400
Entry Wire Line
	6250 4400 6350 4500
Entry Wire Line
	6250 4500 6350 4600
Entry Wire Line
	6250 4600 6350 4700
Entry Wire Line
	6250 4800 6350 4900
Entry Wire Line
	6250 4900 6350 5000
Entry Wire Line
	6250 5000 6350 5100
Entry Wire Line
	6250 5100 6350 5200
Wire Wire Line
	9650 3500 8600 3500
Wire Wire Line
	9650 3600 8600 3600
Wire Wire Line
	9650 3700 8600 3700
Wire Wire Line
	9650 3800 8600 3800
Wire Wire Line
	9650 3900 8600 3900
Wire Wire Line
	9650 4000 8600 4000
Wire Wire Line
	9650 4100 8600 4100
Wire Wire Line
	9650 4200 8600 4200
Text Label 8900 3500 2    50   ~ 0
D0
Text Label 8900 3600 2    50   ~ 0
D1
Text Label 8900 3700 2    50   ~ 0
D2
Text Label 8900 3800 2    50   ~ 0
D3
Text Label 8900 3900 2    50   ~ 0
D4
Text Label 8900 4000 2    50   ~ 0
D5
Text Label 8900 4100 2    50   ~ 0
D6
Text Label 8900 4200 2    50   ~ 0
D7
Wire Wire Line
	6350 3600 6800 3600
Wire Wire Line
	6350 3700 6800 3700
Wire Wire Line
	6350 3800 6800 3800
Wire Wire Line
	6350 3900 6800 3900
Wire Wire Line
	6350 4000 6800 4000
Wire Wire Line
	6350 4100 6800 4100
Wire Wire Line
	6350 4200 6800 4200
Wire Wire Line
	6350 4300 6800 4300
Wire Wire Line
	6350 4400 6800 4400
Wire Wire Line
	6350 4500 6800 4500
Wire Wire Line
	6350 4600 6800 4600
Wire Wire Line
	6350 4700 6800 4700
Wire Wire Line
	6350 4900 6800 4900
Wire Wire Line
	6350 5000 6800 5000
Wire Wire Line
	6350 5100 6800 5100
Wire Wire Line
	6350 5200 6800 5200
Text Label 6500 3600 0    50   ~ 0
A0
Text Label 6500 3700 0    50   ~ 0
A1
Text Label 6500 3800 0    50   ~ 0
A2
Text Label 6500 3900 0    50   ~ 0
A3
Text Label 6500 4000 0    50   ~ 0
A4
Text Label 6500 4100 0    50   ~ 0
A5
Text Label 6500 4200 0    50   ~ 0
A6
Text Label 6500 4300 0    50   ~ 0
A7
Text Label 6500 4400 0    50   ~ 0
A8
Text Label 6500 4500 0    50   ~ 0
A9
Text Label 6500 4600 0    50   ~ 0
A10
Text Label 6500 4700 0    50   ~ 0
A11
Text Label 6500 4900 0    50   ~ 0
A12
Text Label 6500 5000 0    50   ~ 0
A13
Text Label 6500 5100 0    50   ~ 0
A14
Text Label 6500 5200 0    50   ~ 0
A15
Text HLabel 6050 3400 0    50   Input ~ 0
A[0..15]
Text HLabel 9950 3300 2    50   BiDi ~ 0
D[0..7]
Wire Bus Line
	9750 3300 9950 3300
Wire Bus Line
	6250 3400 6050 3400
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 61A9B82E
P 5100 3000
F 0 "X?" H 5250 3250 50  0000 L CNN
F 1 "16Mhz" H 5200 2750 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 5550 2650 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 5000 3000 50  0001 C CNN
	1    5100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A9C9E4
P 5100 3400
F 0 "#PWR?" H 5100 3150 50  0001 C CNN
F 1 "GND" H 5105 3227 50  0000 C CNN
F 2 "" H 5100 3400 50  0001 C CNN
F 3 "" H 5100 3400 50  0001 C CNN
	1    5100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3300 5100 3400
Wire Wire Line
	5100 2700 5100 2600
Wire Wire Line
	4800 3000 4750 3000
Wire Wire Line
	4750 3000 4750 2600
Wire Wire Line
	4750 2600 5100 2600
Connection ~ 5100 2600
Wire Wire Line
	5100 2600 5100 2550
Text HLabel 6600 2300 0    50   Output ~ 0
CLK8M
Wire Wire Line
	6800 2300 6600 2300
$Comp
L power:+5V #PWR?
U 1 1 612B0BD2
P 5100 2550
F 0 "#PWR?" H 5100 2400 50  0001 C CNN
F 1 "+5V" H 5115 2723 50  0000 C CNN
F 2 "" H 5100 2550 50  0001 C CNN
F 3 "" H 5100 2550 50  0001 C CNN
	1    5100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 612B124B
P 7700 1450
F 0 "#PWR?" H 7700 1300 50  0001 C CNN
F 1 "+5V" H 7715 1623 50  0000 C CNN
F 2 "" H 7700 1450 50  0001 C CNN
F 3 "" H 7700 1450 50  0001 C CNN
	1    7700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1600 7900 1550
Wire Wire Line
	7900 1550 7800 1550
Wire Wire Line
	7500 1550 7500 1600
Wire Wire Line
	7600 1600 7600 1550
Connection ~ 7600 1550
Wire Wire Line
	7600 1550 7500 1550
Wire Wire Line
	7700 1600 7700 1550
Connection ~ 7700 1550
Wire Wire Line
	7700 1550 7600 1550
Wire Wire Line
	7800 1600 7800 1550
Connection ~ 7800 1550
Wire Wire Line
	7800 1550 7700 1550
Wire Wire Line
	7700 1450 7700 1550
$Comp
L CPLD_Xilinx:XC95108PC84 U?
U 1 1 612E508D
P 7700 3800
F 0 "U?" H 7050 5900 50  0000 C CNN
F 1 "XC95108PC84" H 8250 5900 50  0000 C CNN
F 2 "" H 7700 3800 50  0001 C CNN
F 3 "xilinx/xc95108.pdf" H 7700 3800 50  0001 C CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6130926C
P 6050 1150
F 0 "#PWR?" H 6050 1000 50  0001 C CNN
F 1 "+5V" H 6065 1323 50  0000 C CNN
F 2 "" H 6050 1150 50  0001 C CNN
F 3 "" H 6050 1150 50  0001 C CNN
	1    6050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6100 7500 6150
Wire Wire Line
	7500 6150 7600 6150
Wire Wire Line
	8000 6150 8000 6100
Wire Wire Line
	7900 6100 7900 6150
Connection ~ 7900 6150
Wire Wire Line
	7900 6150 8000 6150
Wire Wire Line
	7800 6100 7800 6150
Connection ~ 7800 6150
Wire Wire Line
	7800 6150 7900 6150
Wire Wire Line
	7700 6100 7700 6150
Connection ~ 7700 6150
Wire Wire Line
	7700 6150 7750 6150
Wire Wire Line
	7600 6100 7600 6150
Connection ~ 7600 6150
Wire Wire Line
	7600 6150 7700 6150
Wire Wire Line
	7750 6200 7750 6150
Connection ~ 7750 6150
Wire Wire Line
	7750 6150 7800 6150
Wire Wire Line
	5400 3000 6800 3000
Text HLabel 9000 5500 2    50   Output ~ 0
RESET
Text HLabel 9000 5400 2    50   Output ~ 0
~UART_RD
Text HLabel 9000 5300 2    50   Output ~ 0
~UART_WR
Text HLabel 9000 5200 2    50   Output ~ 0
~UART_CS
Text HLabel 9000 5100 2    50   Input ~ 0
~UART_INT
Text HLabel 9000 4900 2    50   Output ~ 0
~VDP_RD
Text HLabel 9000 4800 2    50   Output ~ 0
~VDP_WR
Text HLabel 9000 5000 2    50   Input ~ 0
~VDP_INT
Wire Wire Line
	5950 1450 6650 1450
Wire Wire Line
	6650 1450 6650 1800
Wire Wire Line
	6650 1800 6800 1800
Wire Wire Line
	6800 1900 6250 1900
Wire Wire Line
	6250 1900 6250 1650
Wire Wire Line
	6250 1650 5950 1650
Wire Wire Line
	6800 2000 6550 2000
Wire Wire Line
	6550 2000 6550 1350
Wire Wire Line
	6550 1350 5950 1350
Wire Wire Line
	6800 2100 6450 2100
Wire Wire Line
	6450 2100 6450 1550
Wire Wire Line
	6450 1550 5950 1550
Text HLabel 6650 5600 0    50   Output ~ 0
~YM_CS
Text HLabel 6650 5700 0    50   Output ~ 0
~YM_WR
Text HLabel 6650 5800 0    50   Output ~ 0
~YM_RD
Text HLabel 6650 5900 0    50   Input ~ 0
~YM_IRQ
Wire Bus Line
	9200 2100 9200 2400
Wire Bus Line
	9200 2500 9200 3000
Wire Bus Line
	9750 3300 9750 4100
Wire Bus Line
	6250 3400 6250 5100
$EndSCHEMATC
