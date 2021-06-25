EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Ddraig:MSM6258 U9
U 1 1 60D5500F
P 3500 3550
F 0 "U9" H 3050 5250 50  0000 C CNN
F 1 "MSM6258" H 3850 5250 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 3800 2550 50  0001 C CNN
F 3 "" H 3800 2550 50  0001 C CNN
	1    3500 3550
	1    0    0    -1  
$EndComp
Entry Wire Line
	2350 2100 2450 2200
Entry Wire Line
	2350 2200 2450 2300
Entry Wire Line
	2350 2300 2450 2400
Entry Wire Line
	2350 2400 2450 2500
Entry Wire Line
	2350 2500 2450 2600
Entry Wire Line
	2350 2600 2450 2700
Entry Wire Line
	2350 2700 2450 2800
Entry Wire Line
	2350 2800 2450 2900
Wire Wire Line
	2850 2200 2450 2200
Wire Wire Line
	2450 2300 2850 2300
Wire Wire Line
	2850 2400 2450 2400
Wire Wire Line
	2450 2500 2850 2500
Wire Wire Line
	2850 2600 2450 2600
Wire Wire Line
	2450 2700 2850 2700
Wire Wire Line
	2850 2800 2450 2800
Wire Wire Line
	2450 2900 2850 2900
Text Label 2600 2200 0    50   ~ 0
D8
Text Label 2600 2300 0    50   ~ 0
D9
Text Label 2600 2400 0    50   ~ 0
D10
Text Label 2600 2500 0    50   ~ 0
D11
Text Label 2600 2600 0    50   ~ 0
D12
Text Label 2600 2700 0    50   ~ 0
D13
Text Label 2600 2800 0    50   ~ 0
D14
Text Label 2600 2900 0    50   ~ 0
D15
Text HLabel 2100 1950 0    50   BiDi ~ 0
D[0..15]
Wire Bus Line
	2350 1950 2100 1950
Text HLabel 2450 3200 0    50   Input ~ 0
~MSM_WR
Text HLabel 2450 3100 0    50   Input ~ 0
~MSM_CS
Text HLabel 2450 3300 0    50   Input ~ 0
~MSM_RD
Text HLabel 2450 3400 0    50   Input ~ 0
~MSM_CMD
Wire Wire Line
	2850 3100 2450 3100
Wire Wire Line
	2450 3200 2850 3200
Wire Wire Line
	2850 3300 2450 3300
Wire Wire Line
	2450 3400 2850 3400
Text HLabel 2450 3600 0    50   Input ~ 0
RESET
Wire Wire Line
	2450 3600 2850 3600
$Comp
L Amplifier_Operational:TL064 U7
U 1 1 60D16409
P 7550 1700
F 0 "U7" H 7550 2067 50  0000 C CNN
F 1 "TL064" H 7550 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7500 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 7600 1900 50  0001 C CNN
	1    7550 1700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL064 U7
U 2 1 60D173B0
P 8350 3700
F 0 "U7" H 8350 4050 50  0000 C CNN
F 1 "TL064" H 8350 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8300 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 8400 3900 50  0001 C CNN
	2    8350 3700
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL064 U7
U 5 1 60D19D8C
P 10050 5550
F 0 "U7" H 10008 5596 50  0000 L CNN
F 1 "TL064" H 10008 5505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10000 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl061.pdf" H 10100 5750 50  0001 C CNN
	5    10050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0147
U 1 1 60D1C358
P 3500 1650
F 0 "#PWR0147" H 3500 1500 50  0001 C CNN
F 1 "+5V" H 3515 1823 50  0000 C CNN
F 2 "" H 3500 1650 50  0001 C CNN
F 3 "" H 3500 1650 50  0001 C CNN
	1    3500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 60D1C866
P 3500 5150
F 0 "#PWR0148" H 3500 4900 50  0001 C CNN
F 1 "GND" H 3505 4977 50  0000 C CNN
F 2 "" H 3500 5150 50  0001 C CNN
F 3 "" H 3500 5150 50  0001 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5000 3450 5100
Wire Wire Line
	3450 5100 3500 5100
Wire Wire Line
	3550 5100 3550 5000
Wire Wire Line
	3500 5150 3500 5100
Connection ~ 3500 5100
Wire Wire Line
	3500 5100 3550 5100
Wire Wire Line
	3500 1750 3500 1650
$Comp
L Device:CP C37
U 1 1 60D1E3C1
P 5050 1600
F 0 "C37" V 5305 1600 50  0000 C CNN
F 1 "4.7uF" V 5214 1600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5088 1450 50  0001 C CNN
F 3 "~" H 5050 1600 50  0001 C CNN
	1    5050 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 60D1EDDA
P 5450 1600
F 0 "R12" V 5243 1600 50  0000 C CNN
F 1 "68K" V 5334 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 1600 50  0001 C CNN
F 3 "~" H 5450 1600 50  0001 C CNN
	1    5450 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C39
U 1 1 60D1F5A7
P 5700 1900
F 0 "C39" H 5815 1946 50  0000 L CNN
F 1 "560pF" H 5815 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5738 1750 50  0001 C CNN
F 3 "~" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60D1FABE
P 5950 1600
F 0 "R13" V 5743 1600 50  0000 C CNN
F 1 "68K" V 5834 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 1600 50  0001 C CNN
F 3 "~" H 5950 1600 50  0001 C CNN
	1    5950 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 60D1FC85
P 6500 1600
F 0 "R14" V 6293 1600 50  0000 C CNN
F 1 "68K" V 6384 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 1600 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6500 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C41
U 1 1 60D20179
P 6750 1900
F 0 "C41" H 6865 1946 50  0000 L CNN
F 1 "180pF" H 6865 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6788 1750 50  0001 C CNN
F 3 "~" H 6750 1900 50  0001 C CNN
	1    6750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 60D20CAF
P 6500 1200
F 0 "C40" V 6248 1200 50  0000 C CNN
F 1 "1.2nF" V 6339 1200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6538 1050 50  0001 C CNN
F 3 "~" H 6500 1200 50  0001 C CNN
	1    6500 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1600 5300 1600
Wire Wire Line
	5600 1600 5700 1600
Wire Wire Line
	5700 1750 5700 1600
Connection ~ 5700 1600
Wire Wire Line
	5700 1600 5800 1600
Wire Wire Line
	6100 1600 6200 1600
Wire Wire Line
	6350 1200 6200 1200
Wire Wire Line
	6200 1200 6200 1600
Connection ~ 6200 1600
Wire Wire Line
	6200 1600 6350 1600
Wire Wire Line
	6650 1600 6750 1600
Wire Wire Line
	6750 1750 6750 1600
Connection ~ 6750 1600
Wire Wire Line
	6750 1600 7250 1600
Wire Wire Line
	7250 1800 7150 1800
Wire Wire Line
	7150 1800 7150 2050
Wire Wire Line
	7150 2050 8000 2050
Wire Wire Line
	8000 2050 8000 1700
Wire Wire Line
	8000 1700 7850 1700
Wire Wire Line
	8000 1700 8000 1200
Wire Wire Line
	8000 1200 6650 1200
Connection ~ 8000 1700
Wire Wire Line
	4150 2200 4750 2200
Wire Wire Line
	4750 2200 4750 1600
Wire Wire Line
	4750 1600 4900 1600
Wire Wire Line
	6750 2050 6750 2150
Wire Wire Line
	5700 2050 5700 2150
$Comp
L Ddraig:35RAPC2BHN2 J3
U 1 1 60D8050B
P 10500 3500
F 0 "J3" H 10222 3596 50  0000 R CNN
F 1 "35RAPC2BHN2" H 10650 3300 50  0000 R CNN
F 2 "Ddraig:SWITCHCRAFT_35RAPC2BHN2" H 10500 3500 50  0001 L BNN
F 3 "" H 10500 3500 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 10500 3500 50  0001 L BNN "STANDARD"
F 5 "6.1214mm" H 10500 3500 50  0001 L BNN "MAXIMUM_PACKAGE_HIEGHT"
F 6 "Switchcraft Inc." H 10500 3500 50  0001 L BNN "MANUFACTURER"
F 7 "L" H 10500 3500 50  0001 L BNN "PARTREV"
	1    10500 3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 60D82B53
P 9750 3850
F 0 "R20" H 9820 3896 50  0000 L CNN
F 1 "47K" H 9820 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9680 3850 50  0001 C CNN
F 3 "~" H 9750 3850 50  0001 C CNN
	1    9750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C44
U 1 1 60D83776
P 9450 3600
F 0 "C44" V 9195 3600 50  0000 C CNN
F 1 "1uF" V 9286 3600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9488 3450 50  0001 C CNN
F 3 "~" H 9450 3600 50  0001 C CNN
	1    9450 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 60D84037
P 9050 3600
F 0 "R19" V 8843 3600 50  0000 C CNN
F 1 "10K" V 8934 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8980 3600 50  0001 C CNN
F 3 "~" H 9050 3600 50  0001 C CNN
	1    9050 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3600 8800 3600
Wire Wire Line
	9200 3600 9300 3600
Wire Wire Line
	9600 3600 9750 3600
Wire Wire Line
	9750 3700 9750 3600
Connection ~ 9750 3600
Wire Wire Line
	9750 3600 10200 3600
Wire Wire Line
	9750 4000 9750 4100
$Comp
L Device:R R18
U 1 1 60D8C1CD
P 8750 4050
F 0 "R18" H 8820 4096 50  0000 L CNN
F 1 "12K" H 8820 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 4050 50  0001 C CNN
F 3 "~" H 8750 4050 50  0001 C CNN
	1    8750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4200 8750 4300
Wire Wire Line
	8750 3900 8750 3800
Wire Wire Line
	8750 3800 8650 3800
$Comp
L Device:R R17
U 1 1 60D8D76F
P 8350 3300
F 0 "R17" V 8143 3300 50  0000 C CNN
F 1 "15K" V 8234 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 3300 50  0001 C CNN
F 3 "~" H 8350 3300 50  0001 C CNN
	1    8350 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C43
U 1 1 60D8E239
P 8350 2950
F 0 "C43" V 8098 2950 50  0000 C CNN
F 1 "1.8nF" V 8189 2950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8388 2800 50  0001 C CNN
F 3 "~" H 8350 2950 50  0001 C CNN
	1    8350 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3700 7950 3700
Wire Wire Line
	7950 2950 8200 2950
Wire Wire Line
	8500 2950 8800 2950
Wire Wire Line
	8800 2950 8800 3300
Connection ~ 8800 3600
Wire Wire Line
	8800 3600 8900 3600
Wire Wire Line
	8500 3300 8800 3300
Connection ~ 8800 3300
Wire Wire Line
	8800 3300 8800 3600
Wire Wire Line
	8200 3300 7950 3300
Wire Wire Line
	7950 2950 7950 3300
Connection ~ 7950 3300
Wire Wire Line
	7950 3300 7950 3700
Wire Wire Line
	10100 4100 10100 3300
Wire Wire Line
	10100 3300 10200 3300
$Comp
L Device:CP C42
U 1 1 60D97D14
P 7650 3700
F 0 "C42" V 7395 3700 50  0000 C CNN
F 1 "1uF" V 7486 3700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7688 3550 50  0001 C CNN
F 3 "~" H 7650 3700 50  0001 C CNN
	1    7650 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 60D98ABC
P 7250 3450
F 0 "R15" H 7320 3496 50  0000 L CNN
F 1 "1K" H 7320 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7180 3450 50  0001 C CNN
F 3 "~" H 7250 3450 50  0001 C CNN
	1    7250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 60D9914F
P 7250 3950
F 0 "R16" H 7320 3996 50  0000 L CNN
F 1 "1K" H 7320 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7180 3950 50  0001 C CNN
F 3 "~" H 7250 3950 50  0001 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Connection ~ 7950 3700
$Comp
L power:GND #PWR0149
U 1 1 60D9C542
P 7250 4200
F 0 "#PWR0149" H 7250 3950 50  0001 C CNN
F 1 "GND" H 7255 4027 50  0000 C CNN
F 2 "" H 7250 4200 50  0001 C CNN
F 3 "" H 7250 4200 50  0001 C CNN
	1    7250 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0150
U 1 1 60D9C9B8
P 7250 3200
F 0 "#PWR0150" H 7250 3050 50  0001 C CNN
F 1 "+5V" H 7265 3373 50  0000 C CNN
F 2 "" H 7250 3200 50  0001 C CNN
F 3 "" H 7250 3200 50  0001 C CNN
	1    7250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3300 7250 3200
Wire Wire Line
	7250 3600 7250 3700
Connection ~ 7250 3700
Wire Wire Line
	7250 3700 7500 3700
Wire Wire Line
	7250 3700 7250 3800
Wire Wire Line
	7250 4200 7250 4100
Wire Wire Line
	7800 3700 7950 3700
Wire Wire Line
	4150 3700 7250 3700
$Comp
L power:+5V #PWR0151
U 1 1 60DEABC0
P 4450 3500
F 0 "#PWR0151" H 4450 3350 50  0001 C CNN
F 1 "+5V" H 4465 3673 50  0000 C CNN
F 2 "" H 4450 3500 50  0001 C CNN
F 3 "" H 4450 3500 50  0001 C CNN
	1    4450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 4450 3800
Wire Wire Line
	4450 3800 4450 3600
Wire Wire Line
	4150 3600 4450 3600
Connection ~ 4450 3600
Wire Wire Line
	4450 3600 4450 3500
$Comp
L power:+5V #PWR0152
U 1 1 60DF2A38
P 1700 3600
F 0 "#PWR0152" H 1700 3450 50  0001 C CNN
F 1 "+5V" H 1715 3773 50  0000 C CNN
F 2 "" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3800 1700 3800
Wire Wire Line
	1700 3800 1700 3600
Text HLabel 2450 3900 0    50   Input ~ 0
ADPCM_SIZE
Wire Wire Line
	2450 3900 2850 3900
Text HLabel 2450 4100 0    50   Input ~ 0
SAM1
Text HLabel 2450 4200 0    50   Input ~ 0
SAM2
Text HLabel 2450 4300 0    50   Input ~ 0
RECP
Wire Wire Line
	2850 4200 2450 4200
Wire Wire Line
	2850 4300 2450 4300
Wire Wire Line
	2450 4100 2850 4100
$Comp
L power:GND #PWR0153
U 1 1 60DFE390
P 2750 4700
F 0 "#PWR0153" H 2750 4450 50  0001 C CNN
F 1 "GND" H 2755 4527 50  0000 C CNN
F 2 "" H 2750 4700 50  0001 C CNN
F 3 "" H 2750 4700 50  0001 C CNN
	1    2750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4600 2750 4600
Wire Wire Line
	2750 4600 2750 4700
$Comp
L power:GND #PWR0154
U 1 1 60E02CE1
P 4250 4700
F 0 "#PWR0154" H 4250 4450 50  0001 C CNN
F 1 "GND" H 4255 4527 50  0000 C CNN
F 2 "" H 4250 4700 50  0001 C CNN
F 3 "" H 4250 4700 50  0001 C CNN
	1    4250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4300 4150 4300
Wire Wire Line
	4250 4300 4250 4400
Wire Wire Line
	4150 4400 4250 4400
Connection ~ 4250 4400
Wire Wire Line
	4250 4400 4250 4500
Wire Wire Line
	4150 4500 4250 4500
Connection ~ 4250 4500
Wire Wire Line
	4250 4500 4250 4600
Wire Wire Line
	4150 4600 4250 4600
Connection ~ 4250 4600
Wire Wire Line
	4250 4600 4250 4700
$Comp
L power:GND #PWR0155
U 1 1 60E0CB6E
P 6750 2150
F 0 "#PWR0155" H 6750 1900 50  0001 C CNN
F 1 "GND" H 6755 1977 50  0000 C CNN
F 2 "" H 6750 2150 50  0001 C CNN
F 3 "" H 6750 2150 50  0001 C CNN
	1    6750 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 60E0D07F
P 5700 2150
F 0 "#PWR0156" H 5700 1900 50  0001 C CNN
F 1 "GND" H 5705 1977 50  0000 C CNN
F 2 "" H 5700 2150 50  0001 C CNN
F 3 "" H 5700 2150 50  0001 C CNN
	1    5700 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 60E0D6D4
P 8750 4300
F 0 "#PWR0157" H 8750 4050 50  0001 C CNN
F 1 "GND" H 8755 4127 50  0000 C CNN
F 2 "" H 8750 4300 50  0001 C CNN
F 3 "" H 8750 4300 50  0001 C CNN
	1    8750 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 60E0DBEF
P 9750 4100
F 0 "#PWR0158" H 9750 3850 50  0001 C CNN
F 1 "GND" H 9755 3927 50  0000 C CNN
F 2 "" H 9750 4100 50  0001 C CNN
F 3 "" H 9750 4100 50  0001 C CNN
	1    9750 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 60E0E0E5
P 10100 4100
F 0 "#PWR0159" H 10100 3850 50  0001 C CNN
F 1 "GND" H 10105 3927 50  0000 C CNN
F 2 "" H 10100 4100 50  0001 C CNN
F 3 "" H 10100 4100 50  0001 C CNN
	1    10100 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 60E0E388
P 9950 5950
F 0 "#PWR0160" H 9950 5700 50  0001 C CNN
F 1 "GND" H 9955 5777 50  0000 C CNN
F 2 "" H 9950 5950 50  0001 C CNN
F 3 "" H 9950 5950 50  0001 C CNN
	1    9950 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0161
U 1 1 60E0E9EC
P 9950 5150
F 0 "#PWR0161" H 9950 5000 50  0001 C CNN
F 1 "+5V" H 9965 5323 50  0000 C CNN
F 2 "" H 9950 5150 50  0001 C CNN
F 3 "" H 9950 5150 50  0001 C CNN
	1    9950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5150 9950 5200
Wire Wire Line
	9950 5850 9950 5900
Text HLabel 8300 1700 2    50   Output ~ 0
MSM_OUT
Wire Wire Line
	8300 1700 8000 1700
$Comp
L Device:Crystal Y1
U 1 1 60E19FDF
P 5100 4500
F 0 "Y1" H 5100 4768 50  0000 C CNN
F 1 "4.096Mhz" H 5100 4677 50  0000 C CNN
F 2 "Crystal:Crystal_HC50_Vertical" H 5100 4500 50  0001 C CNN
F 3 "~" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 60E1AA54
P 4850 4750
F 0 "C36" H 4965 4796 50  0000 L CNN
F 1 "22pF" H 4965 4705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4888 4600 50  0001 C CNN
F 3 "~" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 60E1B2D6
P 5350 4750
F 0 "C38" H 5465 4796 50  0000 L CNN
F 1 "22pF" H 5465 4705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5388 4600 50  0001 C CNN
F 3 "~" H 5350 4750 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 60E1C33C
P 4850 5000
F 0 "#PWR0162" H 4850 4750 50  0001 C CNN
F 1 "GND" H 4855 4827 50  0000 C CNN
F 2 "" H 4850 5000 50  0001 C CNN
F 3 "" H 4850 5000 50  0001 C CNN
	1    4850 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 60E1C757
P 5350 5000
F 0 "#PWR0163" H 5350 4750 50  0001 C CNN
F 1 "GND" H 5355 4827 50  0000 C CNN
F 2 "" H 5350 5000 50  0001 C CNN
F 3 "" H 5350 5000 50  0001 C CNN
	1    5350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5000 5350 4900
Wire Wire Line
	4850 4900 4850 5000
Wire Wire Line
	4850 4600 4850 4500
Wire Wire Line
	4850 4500 4950 4500
Wire Wire Line
	5350 4500 5350 4600
Wire Wire Line
	5250 4500 5350 4500
Connection ~ 4850 4500
Wire Wire Line
	4150 4100 4850 4100
Wire Wire Line
	4850 4100 4850 4500
Wire Wire Line
	4150 4000 5350 4000
Wire Wire Line
	5350 4000 5350 4500
Connection ~ 5350 4500
NoConn ~ 2850 4500
NoConn ~ 4150 2700
Text HLabel 4450 2800 2    50   Output ~ 0
RECM
Text HLabel 4450 2900 2    50   Output ~ 0
PLAYM
NoConn ~ 4150 2400
NoConn ~ 4150 2500
Text HLabel 4450 3100 2    50   Output ~ 0
OVF
Wire Wire Line
	4150 3100 4450 3100
Wire Wire Line
	4450 2900 4150 2900
Wire Wire Line
	4150 2800 4450 2800
Text HLabel 4450 3200 2    50   Output ~ 0
MCK
Wire Wire Line
	4150 3200 4450 3200
$Comp
L Device:C C35
U 1 1 60E59C3C
P 3500 6100
F 0 "C35" H 3615 6146 50  0000 L CNN
F 1 "100nF" H 3615 6055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3538 5950 50  0001 C CNN
F 3 "~" H 3500 6100 50  0001 C CNN
	1    3500 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 60E5A2C1
P 3000 6100
F 0 "C34" H 3115 6146 50  0000 L CNN
F 1 "100nF" H 3115 6055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3038 5950 50  0001 C CNN
F 3 "~" H 3000 6100 50  0001 C CNN
	1    3000 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C33
U 1 1 60E5A94F
P 2500 6100
F 0 "C33" H 2615 6146 50  0000 L CNN
F 1 "100nF" H 2615 6055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2538 5950 50  0001 C CNN
F 3 "~" H 2500 6100 50  0001 C CNN
	1    2500 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0164
U 1 1 60E5AC3B
P 3000 6450
F 0 "#PWR0164" H 3000 6200 50  0001 C CNN
F 1 "GND" H 3005 6277 50  0000 C CNN
F 2 "" H 3000 6450 50  0001 C CNN
F 3 "" H 3000 6450 50  0001 C CNN
	1    3000 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0165
U 1 1 60E5B233
P 3000 5750
F 0 "#PWR0165" H 3000 5600 50  0001 C CNN
F 1 "+5V" H 3015 5923 50  0000 C CNN
F 2 "" H 3000 5750 50  0001 C CNN
F 3 "" H 3000 5750 50  0001 C CNN
	1    3000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5750 3000 5850
Wire Wire Line
	3500 5950 3500 5850
Wire Wire Line
	3500 5850 3000 5850
Connection ~ 3000 5850
Wire Wire Line
	3000 5850 3000 5950
Wire Wire Line
	3000 5850 2500 5850
Wire Wire Line
	2500 5850 2500 5950
Wire Wire Line
	3500 6250 3500 6350
Wire Wire Line
	2500 6350 2500 6250
Wire Wire Line
	2500 6350 3000 6350
Wire Wire Line
	3000 6250 3000 6350
Connection ~ 3000 6350
Wire Wire Line
	3000 6350 3500 6350
Wire Wire Line
	3000 6350 3000 6450
$Comp
L Device:CP C?
U 1 1 60D5666E
P 10400 5550
AR Path="/60B0BE0A/60D5666E" Ref="C?"  Part="1" 
AR Path="/60D530A5/60D5666E" Ref="C45"  Part="1" 
F 0 "C45" H 10518 5596 50  0000 L CNN
F 1 "220uF" H 10518 5505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10438 5400 50  0001 C CNN
F 3 "~" H 10400 5550 50  0001 C CNN
	1    10400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5200 10400 5200
Wire Wire Line
	10400 5200 10400 5400
Wire Wire Line
	9950 5900 10400 5900
Wire Wire Line
	10400 5900 10400 5700
Connection ~ 9950 5200
Wire Wire Line
	9950 5200 9950 5250
Connection ~ 9950 5900
Wire Wire Line
	9950 5900 9950 5950
NoConn ~ 10200 3400
Wire Bus Line
	2350 1950 2350 2800
$EndSCHEMATC