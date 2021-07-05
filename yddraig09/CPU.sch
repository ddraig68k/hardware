EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CPU_NXP_6800:MC68B09E U?
U 1 1 60AC6A3B
P 2750 2900
F 0 "U?" H 2400 4250 50  0000 C CNN
F 1 "MC68B09E" H 3050 1550 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 2750 1400 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/motorola/MC68B09S.pdf" H 2650 4325 50  0001 C CNN
	1    2750 2900
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:AS6C4008-55PCN U?
U 1 1 60ACA24E
P 9500 2600
F 0 "U?" H 9150 3650 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 9950 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 9500 2700 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 9500 2700 50  0001 C CNN
	1    9500 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS73 U?
U 2 1 60ACF281
P 3550 6350
F 0 "U?" H 3550 6717 50  0000 C CNN
F 1 "74LS73" H 3550 6626 50  0000 C CNN
F 2 "" H 3550 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS73" H 3550 6350 50  0001 C CNN
	2    3550 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS73 U?
U 1 1 60ACF6E6
P 2550 6350
F 0 "U?" H 2550 6717 50  0000 C CNN
F 1 "74LS73" H 2550 6626 50  0000 C CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS73" H 2550 6350 50  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS73 U?
U 3 1 60ACFC20
P 5700 6400
F 0 "U?" H 5930 6446 50  0000 L CNN
F 1 "74LS73" H 5930 6355 50  0000 L CNN
F 2 "" H 5700 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS73" H 5700 6400 50  0001 C CNN
	3    5700 6400
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 60AD0352
P 1400 6500
F 0 "X?" H 1500 6750 50  0000 L CNN
F 1 "8Mhz" H 1450 6250 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 1850 6150 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 1300 6500 50  0001 C CNN
	1    1400 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6450 2850 6450
Wire Wire Line
	2850 6250 3050 6250
Wire Wire Line
	1700 6500 1800 6500
Wire Wire Line
	1800 6500 1800 6350
Wire Wire Line
	2250 6350 1800 6350
Wire Wire Line
	3850 6450 3900 6450
Wire Wire Line
	3900 6450 3900 6750
Wire Wire Line
	3900 6750 2150 6750
Wire Wire Line
	2150 6250 2250 6250
Wire Wire Line
	2150 6250 2150 6750
Wire Wire Line
	3850 6250 4000 6250
Wire Wire Line
	4000 6250 4000 6850
Wire Wire Line
	4000 6850 2050 6850
Wire Wire Line
	2050 6850 2050 6450
Wire Wire Line
	2050 6450 2250 6450
Wire Wire Line
	1800 6500 1800 6950
Wire Wire Line
	1800 6950 3150 6950
Wire Wire Line
	3150 6950 3150 6350
Wire Wire Line
	3150 6350 3250 6350
Connection ~ 1800 6500
Wire Wire Line
	3050 5850 4150 5850
Wire Wire Line
	3050 5850 3050 6250
Connection ~ 3050 6250
Wire Wire Line
	3050 6250 3250 6250
Wire Wire Line
	4000 6250 4150 6250
Connection ~ 4000 6250
Text Label 4150 5850 0    50   ~ 0
CLOCK_Q
Text Label 4150 6250 0    50   ~ 0
CLOCK_E
Text Label 2050 4000 2    50   ~ 0
CLOCK_Q
Text Label 2050 3900 2    50   ~ 0
CLOCK_E
Wire Wire Line
	2250 4000 2050 4000
Wire Wire Line
	2050 3900 2250 3900
Entry Wire Line
	8600 1600 8700 1700
Entry Wire Line
	8600 1700 8700 1800
Entry Wire Line
	8600 1800 8700 1900
Entry Wire Line
	8600 1900 8700 2000
Entry Wire Line
	8600 2000 8700 2100
Entry Wire Line
	8600 2100 8700 2200
Entry Wire Line
	8600 2200 8700 2300
Entry Wire Line
	8600 2300 8700 2400
Entry Wire Line
	8600 2400 8700 2500
Entry Wire Line
	8600 2500 8700 2600
Entry Wire Line
	8600 2600 8700 2700
Entry Wire Line
	8600 2700 8700 2800
Entry Wire Line
	8600 2800 8700 2900
Entry Wire Line
	8350 2900 8450 3000
Entry Wire Line
	8350 3000 8450 3100
Entry Wire Line
	8350 3100 8450 3200
Entry Wire Line
	8350 3200 8450 3300
Entry Wire Line
	8350 3300 8450 3400
Entry Wire Line
	8350 3400 8450 3500
Entry Wire Line
	10400 1600 10300 1700
Entry Wire Line
	10400 1700 10300 1800
Entry Wire Line
	10400 1800 10300 1900
Entry Wire Line
	10400 1900 10300 2000
Entry Wire Line
	10400 2000 10300 2100
Entry Wire Line
	10400 2100 10300 2200
Entry Wire Line
	10400 2200 10300 2300
Entry Wire Line
	10400 2300 10300 2400
Wire Wire Line
	10000 1700 10300 1700
Wire Wire Line
	10300 1800 10000 1800
Wire Wire Line
	10000 1900 10300 1900
Wire Wire Line
	10300 2000 10000 2000
Wire Wire Line
	10000 2100 10300 2100
Wire Wire Line
	10300 2200 10000 2200
Wire Wire Line
	10000 2300 10300 2300
Wire Wire Line
	10000 2400 10300 2400
Wire Wire Line
	9000 1700 8700 1700
Wire Wire Line
	9000 1800 8700 1800
Wire Wire Line
	8700 1900 9000 1900
Wire Wire Line
	9000 2000 8700 2000
Wire Wire Line
	8700 2100 9000 2100
Wire Wire Line
	9000 2200 8700 2200
Wire Wire Line
	8700 2300 9000 2300
Wire Wire Line
	8700 2400 9000 2400
Wire Wire Line
	8700 2500 9000 2500
Wire Wire Line
	9000 2600 8700 2600
Wire Wire Line
	8700 2700 9000 2700
Wire Wire Line
	9000 2800 8700 2800
Text Label 8800 2900 0    50   ~ 0
A12
Text Label 8800 2800 0    50   ~ 0
A11
Text Label 8800 2700 0    50   ~ 0
A10
Text Label 8800 2600 0    50   ~ 0
A9
Text Label 8800 2500 0    50   ~ 0
A8
Text Label 8800 2400 0    50   ~ 0
A7
Text Label 8800 2300 0    50   ~ 0
A6
Text Label 8800 2200 0    50   ~ 0
A5
Text Label 8800 2100 0    50   ~ 0
A4
Text Label 8800 2000 0    50   ~ 0
A3
Text Label 8800 1900 0    50   ~ 0
A2
Text Label 8800 1800 0    50   ~ 0
A1
Text Label 8800 1700 0    50   ~ 0
A0
Text Label 10100 1700 0    50   ~ 0
D0
Text Label 10100 1800 0    50   ~ 0
D1
Text Label 10100 1900 0    50   ~ 0
D2
Text Label 10100 2000 0    50   ~ 0
D3
Text Label 10100 2100 0    50   ~ 0
D4
Text Label 10100 2200 0    50   ~ 0
D5
Text Label 10100 2300 0    50   ~ 0
D6
Text Label 10100 2400 0    50   ~ 0
D7
Wire Bus Line
	10400 1500 10650 1500
Text Label 10400 1500 0    50   ~ 0
D[0..7]
Text Label 8300 1500 0    50   ~ 0
A[0..15]
Wire Bus Line
	8300 1500 8600 1500
Entry Wire Line
	5650 1600 5750 1700
Entry Wire Line
	5650 1700 5750 1800
Entry Wire Line
	5650 1800 5750 1900
Entry Wire Line
	5650 1900 5750 2000
Entry Wire Line
	5650 2000 5750 2100
Entry Wire Line
	5650 2100 5750 2200
Entry Wire Line
	5650 2200 5750 2300
Entry Wire Line
	5650 2300 5750 2400
Entry Wire Line
	5650 2400 5750 2500
Entry Wire Line
	5650 2500 5750 2600
Entry Wire Line
	5650 2600 5750 2700
Entry Wire Line
	5650 2700 5750 2800
Entry Wire Line
	5650 2800 5750 2900
Entry Wire Line
	5650 2900 5750 3000
Wire Wire Line
	6050 1700 5750 1700
Wire Wire Line
	6050 1800 5750 1800
Wire Wire Line
	5750 1900 6050 1900
Wire Wire Line
	6050 2000 5750 2000
Wire Wire Line
	5750 2100 6050 2100
Wire Wire Line
	6050 2200 5750 2200
Wire Wire Line
	5750 2300 6050 2300
Wire Wire Line
	5750 2400 6050 2400
Wire Wire Line
	5750 2500 6050 2500
Wire Wire Line
	6050 2600 5750 2600
Wire Wire Line
	5750 2700 6050 2700
Wire Wire Line
	6050 2800 5750 2800
Wire Wire Line
	5750 2900 6050 2900
Wire Wire Line
	6050 3000 5750 3000
Text Label 5850 3000 0    50   ~ 0
A13
Text Label 5850 2900 0    50   ~ 0
A12
Text Label 5850 2800 0    50   ~ 0
A11
Text Label 5850 2700 0    50   ~ 0
A10
Text Label 5850 2600 0    50   ~ 0
A9
Text Label 5850 2500 0    50   ~ 0
A8
Text Label 5850 2400 0    50   ~ 0
A7
Text Label 5850 2300 0    50   ~ 0
A6
Text Label 5850 2200 0    50   ~ 0
A5
Text Label 5850 2100 0    50   ~ 0
A4
Text Label 5850 2000 0    50   ~ 0
A3
Text Label 5850 1900 0    50   ~ 0
A2
Text Label 5850 1800 0    50   ~ 0
A1
Text Label 5850 1700 0    50   ~ 0
A0
Text Label 5350 1500 0    50   ~ 0
A[0..15]
Wire Bus Line
	5350 1500 5650 1500
Entry Wire Line
	7650 1600 7550 1700
Entry Wire Line
	7650 1700 7550 1800
Entry Wire Line
	7650 1800 7550 1900
Entry Wire Line
	7650 1900 7550 2000
Entry Wire Line
	7650 2000 7550 2100
Entry Wire Line
	7650 2100 7550 2200
Entry Wire Line
	7650 2200 7550 2300
Entry Wire Line
	7650 2300 7550 2400
Wire Wire Line
	7250 1700 7550 1700
Wire Wire Line
	7550 1800 7250 1800
Wire Wire Line
	7250 1900 7550 1900
Wire Wire Line
	7550 2000 7250 2000
Wire Wire Line
	7250 2100 7550 2100
Wire Wire Line
	7550 2200 7250 2200
Wire Wire Line
	7250 2300 7550 2300
Wire Wire Line
	7250 2400 7550 2400
Text Label 7350 1700 0    50   ~ 0
D0
Text Label 7350 1800 0    50   ~ 0
D1
Text Label 7350 1900 0    50   ~ 0
D2
Text Label 7350 2000 0    50   ~ 0
D3
Text Label 7350 2100 0    50   ~ 0
D4
Text Label 7350 2200 0    50   ~ 0
D5
Text Label 7350 2300 0    50   ~ 0
D6
Text Label 7350 2400 0    50   ~ 0
D7
Wire Bus Line
	7650 1500 7900 1500
Text Label 7650 1500 0    50   ~ 0
D[0..7]
Entry Wire Line
	3650 1600 3550 1700
Entry Wire Line
	3650 1700 3550 1800
Entry Wire Line
	3650 1800 3550 1900
Entry Wire Line
	3650 1900 3550 2000
Entry Wire Line
	3650 2000 3550 2100
Entry Wire Line
	3650 2100 3550 2200
Entry Wire Line
	3650 2200 3550 2300
Entry Wire Line
	3650 2300 3550 2400
Entry Wire Line
	3650 2400 3550 2500
Entry Wire Line
	3650 2500 3550 2600
Entry Wire Line
	3650 2600 3550 2700
Entry Wire Line
	3650 2700 3550 2800
Entry Wire Line
	3650 2800 3550 2900
Entry Wire Line
	3650 2900 3550 3000
Entry Wire Line
	3650 3000 3550 3100
Entry Wire Line
	3650 3100 3550 3200
Wire Wire Line
	3250 1700 3550 1700
Wire Wire Line
	3250 1800 3550 1800
Wire Wire Line
	3550 1900 3250 1900
Wire Wire Line
	3250 2000 3550 2000
Wire Wire Line
	3550 2100 3250 2100
Wire Wire Line
	3250 2200 3550 2200
Wire Wire Line
	3550 2300 3250 2300
Wire Wire Line
	3550 2400 3250 2400
Wire Wire Line
	3550 2500 3250 2500
Wire Wire Line
	3250 2600 3550 2600
Wire Wire Line
	3550 2700 3250 2700
Wire Wire Line
	3250 2800 3550 2800
Wire Wire Line
	3550 2900 3250 2900
Wire Wire Line
	3250 3000 3550 3000
Wire Wire Line
	3550 3100 3250 3100
Wire Wire Line
	3550 3200 3250 3200
Text Label 3950 1500 2    50   ~ 0
A[0..15]
Wire Bus Line
	3950 1500 3650 1500
Wire Wire Line
	8450 3500 9000 3500
Wire Wire Line
	8450 3400 9000 3400
Wire Wire Line
	8450 3300 9000 3300
Wire Wire Line
	8450 3200 9000 3200
Wire Wire Line
	8450 3100 9000 3100
Wire Wire Line
	8450 3000 9000 3000
Text Label 8750 3000 0    50   ~ 0
B0
Text Label 8750 3100 0    50   ~ 0
B1
Text Label 8750 3200 0    50   ~ 0
B2
Text Label 8750 3300 0    50   ~ 0
B3
Text Label 8750 3400 0    50   ~ 0
B4
Text Label 8750 3500 0    50   ~ 0
B5
Wire Wire Line
	8700 2900 9000 2900
Wire Bus Line
	8350 2800 8050 2800
Text Label 8050 2800 0    50   ~ 0
B[0..5]
$Comp
L Memory_Flash:SST39SF020 U?
U 1 1 60B67A28
P 6650 2900
F 0 "U?" H 6300 4200 50  0000 C CNN
F 1 "SST39SF020" H 7050 1650 50  0000 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 6650 3200 50  0001 C CNN
	1    6650 2900
	1    0    0    -1  
$EndComp
Entry Wire Line
	1850 1600 1950 1700
Entry Wire Line
	1850 1700 1950 1800
Entry Wire Line
	1850 1800 1950 1900
Entry Wire Line
	1850 1900 1950 2000
Entry Wire Line
	1850 2000 1950 2100
Entry Wire Line
	1850 2100 1950 2200
Entry Wire Line
	1850 2200 1950 2300
Entry Wire Line
	1850 2300 1950 2400
Wire Wire Line
	2250 1700 1950 1700
Wire Wire Line
	1950 1800 2250 1800
Wire Wire Line
	2250 1900 1950 1900
Wire Wire Line
	1950 2000 2250 2000
Wire Wire Line
	2250 2100 1950 2100
Wire Wire Line
	1950 2200 2250 2200
Wire Wire Line
	2250 2300 1950 2300
Wire Wire Line
	2250 2400 1950 2400
Text Label 2150 1700 2    50   ~ 0
D0
Text Label 2150 1800 2    50   ~ 0
D1
Text Label 2150 1900 2    50   ~ 0
D2
Text Label 2150 2000 2    50   ~ 0
D3
Text Label 2150 2100 2    50   ~ 0
D4
Text Label 2150 2200 2    50   ~ 0
D5
Text Label 2150 2300 2    50   ~ 0
D6
Text Label 2150 2400 2    50   ~ 0
D7
Wire Bus Line
	1850 1500 1600 1500
Text Label 1850 1500 2    50   ~ 0
D[0..7]
Entry Wire Line
	5400 3000 5500 3100
Entry Wire Line
	5400 3100 5500 3200
Entry Wire Line
	5400 3200 5500 3300
Entry Wire Line
	5400 3300 5500 3400
Wire Wire Line
	5500 3400 6050 3400
Wire Wire Line
	5500 3300 6050 3300
Wire Wire Line
	5500 3200 6050 3200
Wire Wire Line
	5500 3100 6050 3100
Text Label 5100 2900 0    50   ~ 0
RB[0..3]
Wire Bus Line
	5400 2900 5100 2900
Text Label 5800 3100 0    50   ~ 0
RB0
Text Label 5800 3200 0    50   ~ 0
RB1
Text Label 5800 3300 0    50   ~ 0
RB2
Text Label 5800 3400 0    50   ~ 0
RB3
NoConn ~ 6050 3500
Text Label 10350 2800 0    50   ~ 0
~RD
Text Label 10350 2900 0    50   ~ 0
~WR
Text Label 5800 4000 2    50   ~ 0
~RD
Text Label 5800 3700 2    50   ~ 0
~WR
Wire Wire Line
	10000 2800 10350 2800
Wire Wire Line
	10350 2900 10000 2900
Wire Wire Line
	5800 4000 6050 4000
Text HLabel 10500 5100 2    50   Input ~ 0
~CS_RAM
Wire Wire Line
	5800 3700 6050 3700
Text HLabel 10500 5200 2    50   Input ~ 0
~CS_ROM
Text Label 10350 2700 0    50   ~ 0
~CS_RAM
Text Label 5800 3900 2    50   ~ 0
~CS_ROM
Wire Wire Line
	5800 3900 6050 3900
Text HLabel 10500 5300 2    50   Output ~ 0
CLOCK_E
Text HLabel 10500 5000 2    50   Output ~ 0
A[0..15]
Text HLabel 10500 4900 2    50   BiDi ~ 0
D[0..7]
Text Label 10050 5300 2    50   ~ 0
CLOCK_E
Wire Wire Line
	10500 5300 10050 5300
Text Label 10050 5200 2    50   ~ 0
~CS_RAM
Text Label 10050 5100 2    50   ~ 0
~CS_ROM
Text Label 10050 4900 2    50   ~ 0
D[0..7]
Text Label 10050 5000 2    50   ~ 0
A[0..15]
Text Label 10050 5400 2    50   ~ 0
~WR
Text Label 10050 5500 2    50   ~ 0
~RD
Text Label 10050 4800 2    50   ~ 0
RB[0..3]
Text Label 10050 4700 2    50   ~ 0
B[0..5]
Wire Wire Line
	10000 2700 10350 2700
Text Label 10050 5600 2    50   ~ 0
RD~WR
Text HLabel 10500 5400 2    50   Input ~ 0
~WR
Text HLabel 10500 5500 2    50   Input ~ 0
~RD
Text HLabel 10500 5600 2    50   Output ~ 0
RD~WR
Text HLabel 10500 4800 2    50   Input ~ 0
RB[0..3]
Text HLabel 10500 4700 2    50   Input ~ 0
B[0..5]
Wire Wire Line
	10500 4700 10050 4700
Wire Wire Line
	10050 4800 10500 4800
Wire Wire Line
	10500 4900 10050 4900
Wire Wire Line
	10050 5000 10500 5000
Wire Wire Line
	10050 5100 10500 5100
Wire Wire Line
	10500 5200 10050 5200
Wire Wire Line
	10050 5400 10500 5400
Wire Wire Line
	10500 5500 10050 5500
Wire Wire Line
	10050 5600 10500 5600
$Comp
L power:GND #PWR?
U 1 1 60B4CC09
P 5700 6850
F 0 "#PWR?" H 5700 6600 50  0001 C CNN
F 1 "GND" H 5705 6677 50  0000 C CNN
F 2 "" H 5700 6850 50  0001 C CNN
F 3 "" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B4D044
P 5700 5950
F 0 "#PWR?" H 5700 5800 50  0001 C CNN
F 1 "+5V" H 5715 6123 50  0000 C CNN
F 2 "" H 5700 5950 50  0001 C CNN
F 3 "" H 5700 5950 50  0001 C CNN
	1    5700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5950 5700 6000
Wire Wire Line
	5700 6800 5700 6850
$Comp
L power:GND #PWR?
U 1 1 60B5C0A0
P 1400 7050
F 0 "#PWR?" H 1400 6800 50  0001 C CNN
F 1 "GND" H 1405 6877 50  0000 C CNN
F 2 "" H 1400 7050 50  0001 C CNN
F 3 "" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B5C47C
P 1400 6000
F 0 "#PWR?" H 1400 5850 50  0001 C CNN
F 1 "+5V" H 1415 6173 50  0000 C CNN
F 2 "" H 1400 6000 50  0001 C CNN
F 3 "" H 1400 6000 50  0001 C CNN
	1    1400 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6000 1400 6100
Wire Wire Line
	1400 6800 1400 7050
Wire Wire Line
	1100 6500 1000 6500
Wire Wire Line
	1000 6500 1000 6100
Wire Wire Line
	1000 6100 1400 6100
Connection ~ 1400 6100
Wire Wire Line
	1400 6100 1400 6200
$Comp
L power:GND #PWR?
U 1 1 60B7A061
P 2750 4350
F 0 "#PWR?" H 2750 4100 50  0001 C CNN
F 1 "GND" H 2755 4177 50  0000 C CNN
F 2 "" H 2750 4350 50  0001 C CNN
F 3 "" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B7A402
P 6650 4150
F 0 "#PWR?" H 6650 3900 50  0001 C CNN
F 1 "GND" H 6655 3977 50  0000 C CNN
F 2 "" H 6650 4150 50  0001 C CNN
F 3 "" H 6650 4150 50  0001 C CNN
	1    6650 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B7A967
P 9500 3750
F 0 "#PWR?" H 9500 3500 50  0001 C CNN
F 1 "GND" H 9505 3577 50  0000 C CNN
F 2 "" H 9500 3750 50  0001 C CNN
F 3 "" H 9500 3750 50  0001 C CNN
	1    9500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3700 9500 3750
Wire Wire Line
	6650 4100 6650 4150
Wire Wire Line
	2750 4300 2750 4350
$Comp
L power:+5V #PWR?
U 1 1 60B918A8
P 2750 1450
F 0 "#PWR?" H 2750 1300 50  0001 C CNN
F 1 "+5V" H 2765 1623 50  0000 C CNN
F 2 "" H 2750 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B929C6
P 6650 1550
F 0 "#PWR?" H 6650 1400 50  0001 C CNN
F 1 "+5V" H 6665 1723 50  0000 C CNN
F 2 "" H 6650 1550 50  0001 C CNN
F 3 "" H 6650 1550 50  0001 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B92F09
P 9500 1450
F 0 "#PWR?" H 9500 1300 50  0001 C CNN
F 1 "+5V" H 9515 1623 50  0000 C CNN
F 2 "" H 9500 1450 50  0001 C CNN
F 3 "" H 9500 1450 50  0001 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1450 9500 1500
Wire Wire Line
	6650 1550 6650 1600
Wire Wire Line
	2750 1450 2750 1500
$Comp
L power:+5V #PWR?
U 1 1 60BAA252
P 4150 6800
F 0 "#PWR?" H 4150 6650 50  0001 C CNN
F 1 "+5V" H 4165 6973 50  0000 C CNN
F 2 "" H 4150 6800 50  0001 C CNN
F 3 "" H 4150 6800 50  0001 C CNN
	1    4150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6650 3550 7050
Wire Wire Line
	3550 7050 4150 7050
Wire Wire Line
	4150 7050 4150 6800
Wire Wire Line
	3550 7050 2550 7050
Wire Wire Line
	2550 7050 2550 6650
Connection ~ 3550 7050
Wire Bus Line
	5400 2900 5400 3300
Wire Bus Line
	8350 2800 8350 3400
Wire Bus Line
	1850 1500 1850 2300
Wire Bus Line
	7650 1500 7650 2300
Wire Bus Line
	10400 1500 10400 2300
Wire Bus Line
	8600 1500 8600 2800
Wire Bus Line
	5650 1500 5650 2900
Wire Bus Line
	3650 1500 3650 3100
$EndSCHEMATC
