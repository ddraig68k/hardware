EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 13
Title "Y Ddraig Fechan"
Date ""
Rev ""
Comp "Stephen Moody"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1550 1550 0    50   BiDi ~ 0
D[0..7]
Entry Wire Line
	1650 1650 1750 1750
Entry Wire Line
	1650 1750 1750 1850
Entry Wire Line
	1650 1850 1750 1950
Entry Wire Line
	1650 1950 1750 2050
Entry Wire Line
	1650 2050 1750 2150
Entry Wire Line
	1650 2150 1750 2250
Entry Wire Line
	1650 2250 1750 2350
Entry Wire Line
	1650 2350 1750 2450
Wire Wire Line
	2200 1750 1750 1750
Wire Wire Line
	1750 1850 2200 1850
Wire Wire Line
	2200 1950 1750 1950
Wire Wire Line
	1750 2050 2200 2050
Wire Wire Line
	2200 2150 1750 2150
Wire Wire Line
	1750 2250 2200 2250
Wire Wire Line
	2200 2350 1750 2350
Wire Wire Line
	1750 2450 2200 2450
Text Label 1900 2450 0    50   ~ 0
D7
Text Label 1900 2350 0    50   ~ 0
D6
Text Label 1900 2250 0    50   ~ 0
D5
Text Label 1900 2150 0    50   ~ 0
D4
Text Label 1900 2050 0    50   ~ 0
D3
Text Label 1900 1950 0    50   ~ 0
D2
Text Label 1900 1850 0    50   ~ 0
D1
Text Label 1900 1750 0    50   ~ 0
D0
Wire Bus Line
	1650 1550 1550 1550
$Comp
L Ddraig:YM3014B U402
U 1 1 612BEC77
P 6550 1500
F 0 "U402" H 6300 1900 50  0000 C CNN
F 1 "YM3014B" H 6800 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-8-16_W7.62mm_Socket" H 6550 1500 50  0001 C CNN
F 3 "" H 6550 1500 50  0001 C CNN
	1    6550 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0405
U 1 1 612C0E63
P 2800 1400
F 0 "#PWR0405" H 2800 1250 50  0001 C CNN
F 1 "+5V" H 2815 1573 50  0000 C CNN
F 2 "" H 2800 1400 50  0001 C CNN
F 3 "" H 2800 1400 50  0001 C CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0408
U 1 1 612C11C6
P 6550 950
F 0 "#PWR0408" H 6550 800 50  0001 C CNN
F 1 "+5V" H 6565 1123 50  0000 C CNN
F 2 "" H 6550 950 50  0001 C CNN
F 3 "" H 6550 950 50  0001 C CNN
	1    6550 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0409
U 1 1 612C1700
P 6550 2050
F 0 "#PWR0409" H 6550 1800 50  0001 C CNN
F 1 "GND" H 6555 1877 50  0000 C CNN
F 2 "" H 6550 2050 50  0001 C CNN
F 3 "" H 6550 2050 50  0001 C CNN
	1    6550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2050 6550 2000
Wire Wire Line
	6550 1000 6550 950 
Wire Wire Line
	2800 1450 2800 1400
$Comp
L power:GND #PWR0406
U 1 1 612C1E44
P 2800 4600
F 0 "#PWR0406" H 2800 4350 50  0001 C CNN
F 1 "GND" H 2805 4427 50  0000 C CNN
F 2 "" H 2800 4600 50  0001 C CNN
F 3 "" H 2800 4600 50  0001 C CNN
	1    2800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4500 2750 4550
Wire Wire Line
	2750 4550 2800 4550
Wire Wire Line
	2850 4550 2850 4500
Wire Wire Line
	2800 4600 2800 4550
Connection ~ 2800 4550
Wire Wire Line
	2800 4550 2850 4550
Text HLabel 1500 2550 0    50   Input ~ 0
A[0..15]
Wire Bus Line
	1500 2550 1600 2550
Entry Wire Line
	1600 2550 1700 2650
Text HLabel 1850 2850 0    50   Input ~ 0
~CS_SND
Text HLabel 1850 2950 0    50   Input ~ 0
~WR
Text HLabel 1850 3050 0    50   Input ~ 0
~RD
Text HLabel 1850 3250 0    50   Input ~ 0
~RESET
Text HLabel 1850 3450 0    50   Output ~ 0
~IRQ_SND
Text HLabel 1850 3900 0    50   Input ~ 0
SND_CLK
Wire Wire Line
	2200 3900 1850 3900
Wire Wire Line
	1850 3450 2200 3450
Wire Wire Line
	2200 3250 1850 3250
Wire Wire Line
	1850 3050 2200 3050
Wire Wire Line
	2200 2950 1850 2950
Wire Wire Line
	1850 2850 2200 2850
Wire Wire Line
	3400 1700 4700 1700
Wire Wire Line
	4700 1400 6050 1400
Wire Wire Line
	3400 1800 4800 1800
Wire Wire Line
	4800 1500 6050 1500
Wire Wire Line
	4900 1600 6050 1600
Wire Wire Line
	3400 1900 4900 1900
$Comp
L Amplifier_Operational:NE5532 U403
U 2 1 612CC328
P 8350 3150
F 0 "U403" H 8500 3450 50  0000 C CNN
F 1 "NE5532" H 8500 3350 50  0000 C CNN
F 2 "Package_DIP:DIP-8-16_W7.62mm_Socket" H 8350 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 8350 3150 50  0001 C CNN
	2    8350 3150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U403
U 3 1 612CD326
P 10100 2150
F 0 "U403" H 10058 2196 50  0000 L CNN
F 1 "NE5532" H 10058 2105 50  0000 L CNN
F 2 "Package_DIP:DIP-8-16_W7.62mm_Socket" H 10100 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 10100 2150 50  0001 C CNN
	3    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U403
U 1 1 612CB4F9
P 8600 1300
F 0 "U403" H 8800 1550 50  0000 C CNN
F 1 "NE5532" H 8800 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-8-16_W7.62mm_Socket" H 8600 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 8600 1300 50  0001 C CNN
	1    8600 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	8900 1300 9050 1300
Wire Wire Line
	9050 1300 9050 950 
Wire Wire Line
	9050 950  8150 950 
Wire Wire Line
	8150 950  8150 1200
Wire Wire Line
	8150 1200 8300 1200
Wire Wire Line
	7300 1400 7300 1200
Connection ~ 8150 1200
Wire Wire Line
	7050 1400 7300 1400
Wire Wire Line
	7050 1500 7400 1500
Wire Wire Line
	7400 1500 7400 1400
Wire Wire Line
	7400 1400 8150 1400
$Comp
L Device:C C402
U 1 1 612D90E4
P 7650 1600
F 0 "C402" H 7765 1646 50  0000 L CNN
F 1 "100nf" H 7765 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7688 1450 50  0001 C CNN
F 3 "~" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C407
U 1 1 612D93E5
P 8150 1600
F 0 "C407" H 8268 1646 50  0000 L CNN
F 1 "10uF" H 8268 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8188 1450 50  0001 C CNN
F 3 "~" H 8150 1600 50  0001 C CNN
	1    8150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0412
U 1 1 612DA298
P 7900 1850
F 0 "#PWR0412" H 7900 1600 50  0001 C CNN
F 1 "GND" H 7905 1677 50  0000 C CNN
F 2 "" H 7900 1850 50  0001 C CNN
F 3 "" H 7900 1850 50  0001 C CNN
	1    7900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1800 8150 1750
Wire Wire Line
	8150 1450 8150 1400
Connection ~ 8150 1400
Wire Wire Line
	8150 1400 8300 1400
$Comp
L power:+5V #PWR0416
U 1 1 612DDC97
P 10000 1750
F 0 "#PWR0416" H 10000 1600 50  0001 C CNN
F 1 "+5V" H 10015 1923 50  0000 C CNN
F 2 "" H 10000 1750 50  0001 C CNN
F 3 "" H 10000 1750 50  0001 C CNN
	1    10000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0417
U 1 1 612DE0EF
P 10000 2550
F 0 "#PWR0417" H 10000 2300 50  0001 C CNN
F 1 "GND" H 10005 2377 50  0000 C CNN
F 2 "" H 10000 2550 50  0001 C CNN
F 3 "" H 10000 2550 50  0001 C CNN
	1    10000 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C412
U 1 1 612DE4E3
P 10550 2150
F 0 "C412" H 10668 2196 50  0000 L CNN
F 1 "220uF" H 10668 2105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10588 2000 50  0001 C CNN
F 3 "~" H 10550 2150 50  0001 C CNN
	1    10550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1850 10000 1800
Wire Wire Line
	10550 2000 10550 1800
Wire Wire Line
	10550 1800 10000 1800
Connection ~ 10000 1800
Wire Wire Line
	10000 1800 10000 1750
Wire Wire Line
	10550 2300 10550 2500
Wire Wire Line
	10550 2500 10000 2500
Wire Wire Line
	10000 2500 10000 2450
Wire Wire Line
	10000 2550 10000 2500
Connection ~ 10000 2500
Wire Wire Line
	7050 1600 7400 1600
Wire Wire Line
	7400 3050 8050 3050
$Comp
L Device:R R404
U 1 1 612E7EB2
P 8300 3550
F 0 "R404" V 8200 3650 50  0000 C CNN
F 1 "4K7" V 8200 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8230 3550 50  0001 C CNN
F 3 "~" H 8300 3550 50  0001 C CNN
	1    8300 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3150 8750 3150
Wire Wire Line
	8750 3150 8750 3550
Wire Wire Line
	8750 3550 8450 3550
Wire Wire Line
	8150 3550 7850 3550
Wire Wire Line
	7850 3550 7850 3250
Wire Wire Line
	7850 3250 8050 3250
$Comp
L Device:C C409
U 1 1 612EAFEA
P 8300 3750
F 0 "C409" V 8450 3850 50  0000 C CNN
F 1 "1.5nF" V 8450 3600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8338 3600 50  0001 C CNN
F 3 "~" H 8300 3750 50  0001 C CNN
	1    8300 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 3750 8750 3750
Wire Wire Line
	8750 3750 8750 3550
Connection ~ 8750 3550
Wire Wire Line
	8150 3750 7850 3750
Wire Wire Line
	7850 3750 7850 3550
Connection ~ 7850 3550
Wire Wire Line
	7300 1200 7650 1200
Wire Wire Line
	7650 1450 7650 1200
Connection ~ 7650 1200
Wire Wire Line
	7650 1200 8150 1200
Wire Wire Line
	7650 1750 7650 1800
Wire Wire Line
	7650 1800 7900 1800
Wire Wire Line
	7900 1850 7900 1800
Connection ~ 7900 1800
Wire Wire Line
	7900 1800 8150 1800
$Comp
L Device:C C401
U 1 1 612F7CC7
P 7400 3350
F 0 "C401" H 7515 3396 50  0000 L CNN
F 1 "100nf" H 7515 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7438 3200 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0411
U 1 1 612F8193
P 7400 3550
F 0 "#PWR0411" H 7400 3300 50  0001 C CNN
F 1 "GND" H 7405 3377 50  0000 C CNN
F 2 "" H 7400 3550 50  0001 C CNN
F 3 "" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3550 7400 3500
$Comp
L Device:CP C404
U 1 1 612FBF22
P 7900 4600
F 0 "C404" V 7750 4700 50  0000 C CNN
F 1 "10uF" V 7750 4500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7938 4450 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
	1    7900 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R401
U 1 1 612FC950
P 7100 4600
F 0 "R401" V 7000 4650 50  0000 C CNN
F 1 "1K" V 7000 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7030 4600 50  0001 C CNN
F 3 "~" H 7100 4600 50  0001 C CNN
	1    7100 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R405
U 1 1 612FD140
P 8350 4600
F 0 "R405" V 8250 4650 50  0000 C CNN
F 1 "4K7" V 8250 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 4600 50  0001 C CNN
F 3 "~" H 8350 4600 50  0001 C CNN
	1    8350 4600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C405
U 1 1 612FDC3D
P 7900 4900
F 0 "C405" V 7750 5000 50  0000 C CNN
F 1 "10uF" V 7750 4800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7938 4750 50  0001 C CNN
F 3 "~" H 7900 4900 50  0001 C CNN
	1    7900 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R402
U 1 1 612FDC43
P 7100 4900
F 0 "R402" V 7000 4950 50  0000 C CNN
F 1 "1K" V 7000 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7030 4900 50  0001 C CNN
F 3 "~" H 7100 4900 50  0001 C CNN
	1    7100 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R406
U 1 1 612FDC49
P 8350 4900
F 0 "R406" V 8250 4950 50  0000 C CNN
F 1 "4K7" V 8250 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 4900 50  0001 C CNN
F 3 "~" H 8350 4900 50  0001 C CNN
	1    8350 4900
	0    1    1    0   
$EndComp
$Comp
L Device:CP C406
U 1 1 612FF425
P 7900 5200
F 0 "C406" V 7750 5300 50  0000 C CNN
F 1 "10uF" V 7750 5100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7938 5050 50  0001 C CNN
F 3 "~" H 7900 5200 50  0001 C CNN
	1    7900 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R403
U 1 1 612FF42B
P 7100 5200
F 0 "R403" V 7000 5250 50  0000 C CNN
F 1 "1K" V 7000 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7030 5200 50  0001 C CNN
F 3 "~" H 7100 5200 50  0001 C CNN
	1    7100 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R407
U 1 1 612FF431
P 8350 5200
F 0 "R407" V 8250 5250 50  0000 C CNN
F 1 "4K7" V 8250 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 5200 50  0001 C CNN
F 3 "~" H 8350 5200 50  0001 C CNN
	1    8350 5200
	0    1    1    0   
$EndComp
Text Label 9000 3150 0    50   ~ 0
AUDIO_OUT
Connection ~ 8750 3150
Wire Wire Line
	8500 5200 8750 5200
Wire Wire Line
	8750 5200 8750 4900
Connection ~ 8750 3750
Wire Wire Line
	8500 4600 8750 4600
Connection ~ 8750 4600
Wire Wire Line
	8750 4600 8750 3750
Wire Wire Line
	8500 4900 8750 4900
Connection ~ 8750 4900
Wire Wire Line
	8750 4900 8750 4600
Wire Wire Line
	8200 5200 8050 5200
Wire Wire Line
	8200 4900 8050 4900
Wire Wire Line
	8200 4600 8050 4600
$Comp
L power:GND #PWR0410
U 1 1 61311A12
P 6850 5300
F 0 "#PWR0410" H 6850 5050 50  0001 C CNN
F 1 "GND" H 6855 5127 50  0000 C CNN
F 2 "" H 6850 5300 50  0001 C CNN
F 3 "" H 6850 5300 50  0001 C CNN
	1    6850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5300 6850 5200
Wire Wire Line
	6950 5200 6850 5200
Wire Wire Line
	6850 5200 6850 4900
Wire Wire Line
	6850 4900 6950 4900
Connection ~ 6850 5200
Wire Wire Line
	6850 4900 6850 4600
Wire Wire Line
	6850 4600 6950 4600
Connection ~ 6850 4900
Wire Wire Line
	7250 4600 7600 4600
Wire Wire Line
	7250 4900 7500 4900
Wire Wire Line
	7750 5200 7400 5200
Wire Wire Line
	3400 2100 6100 2100
Wire Wire Line
	7600 4150 7600 4600
Connection ~ 7600 4600
Wire Wire Line
	7600 4600 7750 4600
Wire Wire Line
	3400 2200 6000 2200
Wire Wire Line
	7500 4250 7500 4900
Connection ~ 7500 4900
Wire Wire Line
	7500 4900 7750 4900
Wire Wire Line
	7400 4350 7400 5200
Connection ~ 7400 5200
Wire Wire Line
	7400 5200 7250 5200
Wire Wire Line
	3400 2300 5900 2300
Text Label 1900 2650 0    50   ~ 0
A0
Wire Wire Line
	10000 4750 10000 4850
Wire Wire Line
	10100 4750 10000 4750
$Comp
L power:GND #PWR0418
U 1 1 613808B2
P 10000 4850
F 0 "#PWR0418" H 10000 4600 50  0001 C CNN
F 1 "GND" H 10005 4677 50  0000 C CNN
F 2 "" H 10000 4850 50  0001 C CNN
F 3 "" H 10000 4850 50  0001 C CNN
	1    10000 4850
	1    0    0    -1  
$EndComp
$Comp
L Ddraig:35RAPC2BHN2 J403
U 1 1 613808BC
P 10400 4650
F 0 "J403" H 10122 4746 50  0000 R CNN
F 1 "Audio Out" H 10122 4655 50  0000 R CNN
F 2 "Ddraig:SWITCHCRAFT_35RAPC2BHN2" H 10400 4650 50  0001 L BNN
F 3 "" H 10400 4650 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 10400 4650 50  0001 L BNN "STANDARD"
F 5 "6.1214mm" H 10400 4650 50  0001 L BNN "MAXIMUM_PACKAGE_HIEGHT"
F 6 "Switchcraft Inc." H 10400 4650 50  0001 L BNN "MANUFACTURER"
F 7 "L" H 10400 4650 50  0001 L BNN "PARTREV"
	1    10400 4650
	-1   0    0    -1  
$EndComp
Text HLabel 9750 4550 0    50   Output ~ 0
AUDIO_R
Text HLabel 9750 4450 0    50   Output ~ 0
AUDIO_L
Wire Wire Line
	10100 4550 9950 4550
Wire Wire Line
	9750 4450 9950 4450
Wire Wire Line
	8750 3150 9600 3150
Connection ~ 9950 4450
Wire Wire Line
	9950 4450 10100 4450
Wire Wire Line
	9950 4450 9950 4550
Connection ~ 9950 4550
Wire Wire Line
	9950 4550 9750 4550
$Comp
L Device:R_POT RV401
U 1 1 6171BA42
P 9600 3500
F 0 "RV401" H 9531 3546 50  0000 R CNN
F 1 "100K" H 9531 3455 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9600 3500 50  0001 C CNN
F 3 "~" H 9600 3500 50  0001 C CNN
	1    9600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3350 9600 3150
$Comp
L power:GND #PWR0415
U 1 1 61728BD2
P 9600 3700
F 0 "#PWR0415" H 9600 3450 50  0001 C CNN
F 1 "GND" H 9605 3527 50  0000 C CNN
F 2 "" H 9600 3700 50  0001 C CNN
F 3 "" H 9600 3700 50  0001 C CNN
	1    9600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3700 9600 3650
Wire Wire Line
	9750 3500 9950 3500
Wire Wire Line
	9950 3500 9950 4450
Wire Wire Line
	1700 2650 2200 2650
$Comp
L Connector:DB9_Male_MountingHoles J?
U 1 1 6179EC48
P 1800 5750
AR Path="/60BDD923/6179EC48" Ref="J?"  Part="1" 
AR Path="/60BDDC0E/6179EC48" Ref="J401"  Part="1" 
F 0 "J401" H 1980 5659 50  0000 L CNN
F 1 "Joystick 2" H 1980 5750 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 1800 5750 50  0001 C CNN
F 3 " ~" H 1800 5750 50  0001 C CNN
	1    1800 5750
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB9_Male_MountingHoles J?
U 1 1 6179EC4E
P 1800 7050
AR Path="/60BDD923/6179EC4E" Ref="J?"  Part="1" 
AR Path="/60BDDC0E/6179EC4E" Ref="J402"  Part="1" 
F 0 "J402" H 1980 6959 50  0000 L CNN
F 1 "Joystick 1" H 1980 7050 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 1800 7050 50  0001 C CNN
F 3 " ~" H 1800 7050 50  0001 C CNN
	1    1800 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0403
U 1 1 6179EC58
P 2450 7500
F 0 "#PWR0403" H 2450 7250 50  0001 C CNN
F 1 "GND" H 2455 7327 50  0000 C CNN
F 2 "" H 2450 7500 50  0001 C CNN
F 3 "" H 2450 7500 50  0001 C CNN
	1    2450 7500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0402
U 1 1 6179EC64
P 1400 6400
F 0 "#PWR0402" H 1400 6150 50  0001 C CNN
F 1 "GND" H 1405 6227 50  0000 C CNN
F 2 "" H 1400 6400 50  0001 C CNN
F 3 "" H 1400 6400 50  0001 C CNN
	1    1400 6400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0401
U 1 1 6179EC6A
P 1400 5100
F 0 "#PWR0401" H 1400 4850 50  0001 C CNN
F 1 "GND" H 1405 4927 50  0000 C CNN
F 2 "" H 1400 5100 50  0001 C CNN
F 3 "" H 1400 5100 50  0001 C CNN
	1    1400 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 6350 1400 6350
Wire Wire Line
	1400 6350 1400 6400
Wire Wire Line
	1800 6350 1800 6450
Wire Wire Line
	1800 5150 1800 5000
Wire Wire Line
	1800 5000 1400 5000
Wire Wire Line
	1400 5000 1400 5100
$Comp
L Device:Ferrite_Bead_Small FB407
U 1 1 61556B80
P 2750 5350
F 0 "FB407" V 2605 5350 50  0001 C CNN
F 1 "1mH" V 2604 5350 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 5350 50  0001 C CNN
F 3 "~" H 2750 5350 50  0001 C CNN
	1    2750 5350
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB408
U 1 1 6155D957
P 2750 5550
F 0 "FB408" V 2605 5550 50  0001 C CNN
F 1 "1mH" V 2604 5550 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 5550 50  0001 C CNN
F 3 "~" H 2750 5550 50  0001 C CNN
	1    2750 5550
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB409
U 1 1 6155DB49
P 2750 5750
F 0 "FB409" V 2605 5750 50  0001 C CNN
F 1 "1mH" V 2604 5750 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB410
U 1 1 6155DEEF
P 2750 5950
F 0 "FB410" V 2605 5950 50  0001 C CNN
F 1 "1mH" V 2604 5950 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 5950 50  0001 C CNN
F 3 "~" H 2750 5950 50  0001 C CNN
	1    2750 5950
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB401
U 1 1 6155E15C
P 2300 5450
F 0 "FB401" V 2155 5450 50  0001 C CNN
F 1 "1mH" V 2154 5450 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2230 5450 50  0001 C CNN
F 3 "~" H 2300 5450 50  0001 C CNN
	1    2300 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5350 2100 5350
Wire Wire Line
	2100 5450 2200 5450
Wire Wire Line
	2650 5550 2100 5550
Wire Wire Line
	2100 5750 2650 5750
Wire Wire Line
	2100 5950 2650 5950
$Comp
L Device:Ferrite_Bead_Small FB402
U 1 1 615858BD
P 2300 5650
F 0 "FB402" V 2155 5650 50  0001 C CNN
F 1 "1mH" V 2154 5650 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2230 5650 50  0001 C CNN
F 3 "~" H 2300 5650 50  0001 C CNN
	1    2300 5650
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB403
U 1 1 61585B9A
P 2300 5850
F 0 "FB403" V 2155 5850 50  0001 C CNN
F 1 "1mH" V 2154 5850 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2230 5850 50  0001 C CNN
F 3 "~" H 2300 5850 50  0001 C CNN
	1    2300 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 5850 2100 5850
Wire Wire Line
	2100 5650 2200 5650
NoConn ~ 2100 6150
NoConn ~ 2100 6050
Wire Wire Line
	2400 5850 2450 5850
$Comp
L power:+5V #PWR0404
U 1 1 615BD971
P 2550 5200
F 0 "#PWR0404" H 2550 5050 50  0001 C CNN
F 1 "+5V" H 2565 5373 50  0000 C CNN
F 2 "" H 2550 5200 50  0001 C CNN
F 3 "" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5350 4500 3400
Wire Wire Line
	4500 3400 3400 3400
Wire Wire Line
	4600 5450 4600 3800
Wire Wire Line
	4600 3800 3400 3800
Wire Wire Line
	4700 5550 4700 3500
Wire Wire Line
	4700 3500 3400 3500
Wire Wire Line
	4800 5750 4800 3600
Wire Wire Line
	4800 3600 3400 3600
Wire Wire Line
	4900 5950 4900 3700
Wire Wire Line
	4900 3700 3400 3700
$Comp
L Device:Ferrite_Bead_Small FB411
U 1 1 616035C1
P 2750 6650
F 0 "FB411" V 2605 6650 50  0001 C CNN
F 1 "1mH" V 2604 6650 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 6650 50  0001 C CNN
F 3 "~" H 2750 6650 50  0001 C CNN
	1    2750 6650
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB412
U 1 1 616035C7
P 2750 6850
F 0 "FB412" V 2605 6850 50  0001 C CNN
F 1 "1mH" V 2604 6850 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 6850 50  0001 C CNN
F 3 "~" H 2750 6850 50  0001 C CNN
	1    2750 6850
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB413
U 1 1 616035CD
P 2750 7050
F 0 "FB413" V 2605 7050 50  0001 C CNN
F 1 "1mH" V 2604 7050 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 7050 50  0001 C CNN
F 3 "~" H 2750 7050 50  0001 C CNN
	1    2750 7050
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB414
U 1 1 616035D3
P 2750 7250
F 0 "FB414" V 2605 7250 50  0001 C CNN
F 1 "1mH" V 2604 7250 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2680 7250 50  0001 C CNN
F 3 "~" H 2750 7250 50  0001 C CNN
	1    2750 7250
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB404
U 1 1 616035D9
P 2300 6750
F 0 "FB404" V 2155 6750 50  0001 C CNN
F 1 "1mH" V 2154 6750 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2230 6750 50  0001 C CNN
F 3 "~" H 2300 6750 50  0001 C CNN
	1    2300 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 6650 2100 6650
Wire Wire Line
	2100 6750 2200 6750
Wire Wire Line
	2650 6850 2100 6850
Wire Wire Line
	2100 7050 2650 7050
Wire Wire Line
	2100 7250 2650 7250
$Comp
L Device:Ferrite_Bead_Small FB405
U 1 1 616035E4
P 2300 6950
F 0 "FB405" V 2155 6950 50  0001 C CNN
F 1 "1mH" V 2154 6950 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2230 6950 50  0001 C CNN
F 3 "~" H 2300 6950 50  0001 C CNN
	1    2300 6950
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB406
U 1 1 616035EA
P 2300 7150
F 0 "FB406" V 2155 7150 50  0001 C CNN
F 1 "1mH" V 2154 7150 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 2230 7150 50  0001 C CNN
F 3 "~" H 2300 7150 50  0001 C CNN
	1    2300 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 7150 2100 7150
Wire Wire Line
	2100 6950 2200 6950
Wire Wire Line
	2400 7150 2450 7150
Wire Wire Line
	2450 7150 2450 7500
NoConn ~ 2100 7450
NoConn ~ 2100 7350
Wire Wire Line
	2450 5850 2450 7150
Connection ~ 2450 7150
Wire Wire Line
	5100 6650 5100 2500
Wire Wire Line
	5100 2500 3400 2500
Wire Wire Line
	5200 6750 5200 2900
Wire Wire Line
	5200 2900 3400 2900
Wire Wire Line
	5300 6850 5300 2600
Wire Wire Line
	5300 2600 3400 2600
Wire Wire Line
	5400 7050 5400 2700
Wire Wire Line
	5400 2700 3400 2700
Wire Wire Line
	5500 7250 5500 2800
Wire Wire Line
	5500 2800 3400 2800
Wire Wire Line
	5900 2300 5900 4350
Wire Wire Line
	5900 4350 7400 4350
Wire Wire Line
	6000 2200 6000 4250
Wire Wire Line
	6000 4250 7500 4250
Wire Wire Line
	6100 2100 6100 4150
Wire Wire Line
	6100 4150 7600 4150
Wire Wire Line
	7400 1600 7400 3050
Wire Wire Line
	2850 7250 4250 7250
Wire Wire Line
	2850 7050 4150 7050
Wire Wire Line
	2850 6850 4050 6850
Wire Wire Line
	2400 6750 3950 6750
Wire Wire Line
	2850 6650 3850 6650
Wire Wire Line
	2850 5950 3650 5950
Wire Wire Line
	2850 5750 3550 5750
Wire Wire Line
	2850 5550 3450 5550
Wire Wire Line
	2400 5450 3350 5450
Wire Wire Line
	2850 5350 3250 5350
Wire Wire Line
	4250 5200 4250 7250
Wire Wire Line
	4150 5200 4150 7050
Wire Wire Line
	4050 5200 4050 6850
Wire Wire Line
	3950 5200 3950 6750
Wire Wire Line
	3850 5200 3850 6650
Wire Wire Line
	3650 5200 3650 5950
Wire Wire Line
	3550 5200 3550 5750
Wire Wire Line
	3450 5200 3450 5550
Wire Wire Line
	3350 5200 3350 5450
Wire Wire Line
	3250 5200 3250 5350
Wire Wire Line
	3850 4650 3850 4600
Connection ~ 3850 4650
Wire Wire Line
	3250 4650 3850 4650
Wire Wire Line
	3250 4800 3250 4650
Wire Wire Line
	3850 4800 3850 4650
$Comp
L power:+5V #PWR0407
U 1 1 615BE412
P 3850 4600
F 0 "#PWR0407" H 3850 4450 50  0001 C CNN
F 1 "+5V" H 3865 4773 50  0000 C CNN
F 2 "" H 3850 4600 50  0001 C CNN
F 3 "" H 3850 4600 50  0001 C CNN
	1    3850 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network05 RN401
U 1 1 614DB674
P 3450 5000
F 0 "RN401" H 3300 5200 50  0000 L CNN
F 1 "4K7" H 3600 5200 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP6" V 3825 5000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3450 5000 50  0001 C CNN
	1    3450 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network05 RN402
U 1 1 614DABCE
P 4050 5000
F 0 "RN402" H 3900 5200 50  0000 L CNN
F 1 "4K7" H 4200 5200 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP6" V 4425 5000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4050 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
$Comp
L Ddraig:YM2203 U401
U 1 1 612BD387
P 2800 2800
F 0 "U401" H 2450 4050 50  0000 C CNN
F 1 "YM2203" H 3100 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Connection ~ 3250 5350
Wire Wire Line
	3250 5350 4500 5350
Connection ~ 3350 5450
Wire Wire Line
	3350 5450 4600 5450
Connection ~ 3450 5550
Wire Wire Line
	3450 5550 4700 5550
Connection ~ 3550 5750
Wire Wire Line
	3550 5750 4800 5750
Connection ~ 3650 5950
Wire Wire Line
	3650 5950 4900 5950
Connection ~ 3850 6650
Wire Wire Line
	3850 6650 5100 6650
Connection ~ 3950 6750
Wire Wire Line
	3950 6750 5200 6750
Connection ~ 4050 6850
Wire Wire Line
	4050 6850 5300 6850
Connection ~ 4150 7050
Wire Wire Line
	4150 7050 5400 7050
Connection ~ 4250 7250
Wire Wire Line
	4250 7250 5500 7250
Wire Wire Line
	2400 6950 2550 6950
Connection ~ 2550 5650
Wire Wire Line
	2550 5650 2550 5200
Wire Wire Line
	2400 5650 2550 5650
Wire Wire Line
	2550 5650 2550 6950
Wire Wire Line
	7400 3200 7400 3050
Connection ~ 7400 3050
Wire Wire Line
	4700 1400 4700 1700
Wire Wire Line
	4800 1500 4800 1800
Wire Wire Line
	4900 1600 4900 1900
$Comp
L Device:C C408
U 1 1 617B6857
P 8200 6400
F 0 "C408" H 8315 6446 50  0000 L CNN
F 1 "100nF" H 8315 6355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8238 6250 50  0001 C CNN
F 3 "~" H 8200 6400 50  0001 C CNN
	1    8200 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C410
U 1 1 617B685D
P 8700 6400
F 0 "C410" H 8815 6446 50  0000 L CNN
F 1 "100nF" H 8815 6355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8738 6250 50  0001 C CNN
F 3 "~" H 8700 6400 50  0001 C CNN
	1    8700 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0413
U 1 1 617B6869
P 8450 6100
F 0 "#PWR0413" H 8450 5950 50  0001 C CNN
F 1 "+5V" H 8465 6273 50  0000 C CNN
F 2 "" H 8450 6100 50  0001 C CNN
F 3 "" H 8450 6100 50  0001 C CNN
	1    8450 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0414
U 1 1 617B686F
P 8450 6700
F 0 "#PWR0414" H 8450 6450 50  0001 C CNN
F 1 "GND" H 8455 6527 50  0000 C CNN
F 2 "" H 8450 6700 50  0001 C CNN
F 3 "" H 8450 6700 50  0001 C CNN
	1    8450 6700
	1    0    0    -1  
$EndComp
Connection ~ 8450 6150
Wire Wire Line
	8450 6150 8700 6150
Wire Wire Line
	8450 6100 8450 6150
Wire Wire Line
	8450 6700 8450 6650
Connection ~ 8450 6650
Wire Wire Line
	8450 6650 8700 6650
Wire Wire Line
	8200 6550 8200 6650
Wire Wire Line
	8200 6650 8450 6650
Wire Wire Line
	8200 6250 8200 6150
Wire Wire Line
	8200 6150 8450 6150
Wire Wire Line
	8700 6250 8700 6150
Wire Wire Line
	8700 6550 8700 6650
Connection ~ 8200 6650
Wire Wire Line
	7700 6650 8200 6650
Wire Wire Line
	7700 6550 7700 6650
Connection ~ 8200 6150
Wire Wire Line
	7700 6150 8200 6150
Wire Wire Line
	7700 6250 7700 6150
$Comp
L Device:C C403
U 1 1 617B6851
P 7700 6400
F 0 "C403" H 7815 6446 50  0000 L CNN
F 1 "100nF" H 7815 6355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7738 6250 50  0001 C CNN
F 3 "~" H 7700 6400 50  0001 C CNN
	1    7700 6400
	1    0    0    -1  
$EndComp
Connection ~ 8700 6650
Wire Wire Line
	8700 6650 9200 6650
Connection ~ 8700 6150
Wire Wire Line
	8700 6150 9200 6150
Wire Wire Line
	9200 6650 9200 6550
Wire Wire Line
	9200 6150 9200 6250
$Comp
L Device:C C411
U 1 1 617B6863
P 9200 6400
F 0 "C411" H 9315 6446 50  0000 L CNN
F 1 "100nF" H 9315 6355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9238 6250 50  0001 C CNN
F 3 "~" H 9200 6400 50  0001 C CNN
	1    9200 6400
	1    0    0    -1  
$EndComp
NoConn ~ 3400 3000
NoConn ~ 3400 3100
NoConn ~ 3400 3200
NoConn ~ 3400 3900
NoConn ~ 3400 4000
NoConn ~ 3400 4100
Wire Bus Line
	1650 1550 1650 2350
$EndSCHEMATC
