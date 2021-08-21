EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:C C?
U 1 1 61004647
P 10250 6450
AR Path="/61004647" Ref="C?"  Part="1" 
AR Path="/60FA5BB4/61004647" Ref="C20"  Part="1" 
F 0 "C20" H 10365 6496 50  0000 L CNN
F 1 "100nF" H 10365 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 10288 6300 50  0001 C CNN
F 3 "~" H 10250 6450 50  0001 C CNN
	1    10250 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6100464D
P 10750 6450
AR Path="/6100464D" Ref="C?"  Part="1" 
AR Path="/60FA5BB4/6100464D" Ref="C22"  Part="1" 
F 0 "C22" H 10865 6496 50  0000 L CNN
F 1 "100nF" H 10865 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 10788 6300 50  0001 C CNN
F 3 "~" H 10750 6450 50  0001 C CNN
	1    10750 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61004653
P 9750 6450
AR Path="/61004653" Ref="C?"  Part="1" 
AR Path="/60FA5BB4/61004653" Ref="C18"  Part="1" 
F 0 "C18" H 9865 6496 50  0000 L CNN
F 1 "100nF" H 9865 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9788 6300 50  0001 C CNN
F 3 "~" H 9750 6450 50  0001 C CNN
	1    9750 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61004659
P 10250 6750
AR Path="/61004659" Ref="#PWR?"  Part="1" 
AR Path="/60FA5BB4/61004659" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 10250 6500 50  0001 C CNN
F 1 "GND" H 10255 6577 50  0000 C CNN
F 2 "" H 10250 6750 50  0001 C CNN
F 3 "" H 10250 6750 50  0001 C CNN
	1    10250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6100465F
P 10250 6150
AR Path="/6100465F" Ref="#PWR?"  Part="1" 
AR Path="/60FA5BB4/6100465F" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 10250 6000 50  0001 C CNN
F 1 "+5V" H 10265 6323 50  0000 C CNN
F 2 "" H 10250 6150 50  0001 C CNN
F 3 "" H 10250 6150 50  0001 C CNN
	1    10250 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 6300 9750 6200
Wire Wire Line
	9750 6200 10250 6200
Wire Wire Line
	10750 6200 10750 6300
Wire Wire Line
	10250 6300 10250 6200
Connection ~ 10250 6200
Wire Wire Line
	10250 6200 10750 6200
Wire Wire Line
	10250 6200 10250 6150
Wire Wire Line
	9750 6600 9750 6700
Wire Wire Line
	9750 6700 10250 6700
Wire Wire Line
	10750 6700 10750 6600
Wire Wire Line
	10250 6600 10250 6700
Connection ~ 10250 6700
Wire Wire Line
	10250 6700 10750 6700
Wire Wire Line
	10250 6700 10250 6750
$Comp
L Ddraig:TMS9918A U4
U 1 1 612328E4
P 2950 2750
F 0 "U4" H 2550 4450 50  0000 C CNN
F 1 "TMS9918A" H 3250 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 2950 2750 50  0001 C CNN
F 3 "" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 612328EA
P 9100 4300
F 0 "Q1" H 9290 4346 50  0000 L CNN
F 1 "2N3904" H 9290 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9300 4225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 9100 4300 50  0001 L CNN
	1    9100 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 612328F0
P 10450 4600
F 0 "J3" H 10550 4575 50  0000 L CNN
F 1 "Conn_Coaxial" H 10550 4484 50  0000 L CNN
F 2 "Ddraig:KLPX0848A2RG" H 10450 4600 50  0001 C CNN
F 3 " ~" H 10450 4600 50  0001 C CNN
	1    10450 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 612328F6
P 8800 4850
F 0 "R2" H 8870 4896 50  0000 L CNN
F 1 "470R" H 8870 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8730 4850 50  0001 C CNN
F 3 "~" H 8800 4850 50  0001 C CNN
	1    8800 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 612328FC
P 9200 4850
F 0 "R3" H 9270 4896 50  0000 L CNN
F 1 "75R" H 9270 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9130 4850 50  0001 C CNN
F 3 "~" H 9200 4850 50  0001 C CNN
	1    9200 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61232902
P 9600 4600
F 0 "R4" V 9700 4600 50  0000 C CNN
F 1 "75R" V 9484 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9530 4600 50  0001 C CNN
F 3 "~" H 9600 4600 50  0001 C CNN
	1    9600 4600
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 61232908
P 9500 3900
F 0 "C9" V 9650 3900 50  0000 C CNN
F 1 "0.1uF" V 9339 3900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9538 3750 50  0001 C CNN
F 3 "~" H 9500 3900 50  0001 C CNN
	1    9500 3900
	0    1    1    0   
$EndComp
$Comp
L Device:CP C10
U 1 1 6123290E
P 10000 4600
F 0 "C10" V 10255 4600 50  0000 C CNN
F 1 "220uF" V 10164 4600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10038 4450 50  0001 C CNN
F 3 "~" H 10000 4600 50  0001 C CNN
	1    10000 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead FB1
U 1 1 61232914
P 9200 3600
F 0 "FB1" H 9337 3646 50  0000 L CNN
F 1 "Ferrite_Bead" H 9337 3555 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 9130 3600 50  0001 C CNN
F 3 "~" H 9200 3600 50  0001 C CNN
	1    9200 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 6123291A
P 9200 3400
F 0 "#PWR035" H 9200 3250 50  0001 C CNN
F 1 "+5V" H 9215 3573 50  0000 C CNN
F 2 "" H 9200 3400 50  0001 C CNN
F 3 "" H 9200 3400 50  0001 C CNN
	1    9200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4500 9200 4600
Wire Wire Line
	9450 4600 9200 4600
Connection ~ 9200 4600
Wire Wire Line
	9200 4600 9200 4700
Wire Wire Line
	9200 4100 9200 3900
Wire Wire Line
	9350 3900 9200 3900
Connection ~ 9200 3900
Wire Wire Line
	9200 3900 9200 3750
Wire Wire Line
	9200 3450 9200 3400
$Comp
L power:GND #PWR036
U 1 1 61232929
P 9200 5200
F 0 "#PWR036" H 9200 4950 50  0001 C CNN
F 1 "GND" H 9205 5027 50  0000 C CNN
F 2 "" H 9200 5200 50  0001 C CNN
F 3 "" H 9200 5200 50  0001 C CNN
	1    9200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5000 8800 5100
Wire Wire Line
	8800 5100 9200 5100
Wire Wire Line
	9200 5100 9200 5200
Wire Wire Line
	9200 5000 9200 5100
Connection ~ 9200 5100
Wire Wire Line
	9750 4600 9850 4600
Wire Wire Line
	10150 4600 10250 4600
$Comp
L power:GND #PWR040
U 1 1 61232936
P 10450 4900
F 0 "#PWR040" H 10450 4650 50  0001 C CNN
F 1 "GND" H 10455 4727 50  0000 C CNN
F 2 "" H 10450 4900 50  0001 C CNN
F 3 "" H 10450 4900 50  0001 C CNN
	1    10450 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 6123293C
P 9750 4000
F 0 "#PWR039" H 9750 3750 50  0001 C CNN
F 1 "GND" H 9755 3827 50  0000 C CNN
F 2 "" H 9750 4000 50  0001 C CNN
F 3 "" H 9750 4000 50  0001 C CNN
	1    9750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3900 9750 3900
Wire Wire Line
	9750 3900 9750 4000
Wire Wire Line
	10450 4900 10450 4800
Wire Wire Line
	8800 4300 8800 4700
$Comp
L Memory_RAM:CY62256-70PC U8
U 1 1 61232946
P 9500 1850
F 0 "U8" H 9250 2700 50  0000 C CNN
F 1 "CY62256-70PC" H 9850 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 9500 1750 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 9500 1750 50  0001 C CNN
	1    9500 1850
	1    0    0    -1  
$EndComp
Text Label 3800 3700 0    50   ~ 0
COMPOSITE
Wire Wire Line
	3600 3700 3800 3700
$Comp
L Device:Crystal Y1
U 1 1 61232962
P 1850 3950
F 0 "Y1" H 1850 4218 50  0000 C CNN
F 1 "10.7Mhz" H 1850 4127 50  0000 C CNN
F 2 "Crystal:Crystal_HC50_Vertical" H 1850 3950 50  0001 C CNN
F 3 "~" H 1850 3950 50  0001 C CNN
	1    1850 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61232968
P 1550 4200
F 0 "C4" H 1665 4246 50  0000 L CNN
F 1 "100nF" H 1665 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1588 4050 50  0001 C CNN
F 3 "~" H 1550 4200 50  0001 C CNN
	1    1550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6123296E
P 2150 4200
F 0 "C5" H 2265 4246 50  0000 L CNN
F 1 "100nF" H 2265 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2188 4050 50  0001 C CNN
F 3 "~" H 2150 4200 50  0001 C CNN
	1    2150 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 61232974
P 1550 4450
F 0 "#PWR017" H 1550 4200 50  0001 C CNN
F 1 "GND" H 1555 4277 50  0000 C CNN
F 2 "" H 1550 4450 50  0001 C CNN
F 3 "" H 1550 4450 50  0001 C CNN
	1    1550 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 6123297A
P 2150 4450
F 0 "#PWR018" H 2150 4200 50  0001 C CNN
F 1 "GND" H 2155 4277 50  0000 C CNN
F 2 "" H 2150 4450 50  0001 C CNN
F 3 "" H 2150 4450 50  0001 C CNN
	1    2150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4450 2150 4350
Wire Wire Line
	1550 4450 1550 4350
Wire Wire Line
	1550 4050 1550 3950
Wire Wire Line
	1550 3400 2300 3400
Wire Wire Line
	2150 3600 2300 3600
Wire Wire Line
	2000 3950 2150 3950
Connection ~ 2150 3950
Wire Wire Line
	2150 3950 2150 3600
Wire Wire Line
	2150 3950 2150 4050
Wire Wire Line
	1700 3950 1550 3950
Connection ~ 1550 3950
Wire Wire Line
	1550 3950 1550 3400
Wire Wire Line
	1800 2400 2300 2400
Wire Wire Line
	1800 2300 2300 2300
Text Label 3850 2200 0    50   ~ 0
~CAS
Text Label 3850 2300 0    50   ~ 0
~RAS
Text Label 3850 2400 0    50   ~ 0
VR~W
Wire Wire Line
	3850 2400 3600 2400
Wire Wire Line
	3600 2300 3850 2300
Wire Wire Line
	3850 2200 3600 2200
Entry Wire Line
	10450 1050 10350 1150
Entry Wire Line
	10450 1150 10350 1250
Entry Wire Line
	10450 1250 10350 1350
Entry Wire Line
	10450 1350 10350 1450
Entry Wire Line
	10450 1450 10350 1550
Entry Wire Line
	10450 1550 10350 1650
Entry Wire Line
	10450 1650 10350 1750
Entry Wire Line
	10450 1750 10350 1850
Wire Wire Line
	10350 1150 10000 1150
Wire Wire Line
	10000 1250 10350 1250
Wire Wire Line
	10350 1350 10000 1350
Wire Wire Line
	10350 1450 10000 1450
Wire Wire Line
	10350 1550 10000 1550
Wire Wire Line
	10350 1650 10000 1650
Wire Wire Line
	10350 1750 10000 1750
Wire Wire Line
	10350 1850 10000 1850
Text Label 10100 1150 0    50   ~ 0
VD0
Text Label 10100 1250 0    50   ~ 0
VD1
Text Label 10100 1350 0    50   ~ 0
VD2
Text Label 10100 1450 0    50   ~ 0
VD3
Text Label 10100 1550 0    50   ~ 0
VD4
Text Label 10100 1650 0    50   ~ 0
VD5
Text Label 10100 1750 0    50   ~ 0
VD6
Text Label 10100 1850 0    50   ~ 0
VD7
Wire Bus Line
	10450 950  10600 950 
Text Label 10600 950  0    50   ~ 0
VD[0..7]
Entry Wire Line
	8500 1050 8600 1150
Entry Wire Line
	8500 1150 8600 1250
Entry Wire Line
	8500 1250 8600 1350
Entry Wire Line
	8500 1350 8600 1450
Entry Wire Line
	8500 1450 8600 1550
Entry Wire Line
	8500 1550 8600 1650
Entry Wire Line
	8500 1650 8600 1750
Entry Wire Line
	8500 1750 8600 1850
Entry Wire Line
	8500 1850 8600 1950
Entry Wire Line
	8500 1950 8600 2050
Entry Wire Line
	8500 2050 8600 2150
Entry Wire Line
	8500 2150 8600 2250
Entry Wire Line
	8500 2250 8600 2350
Entry Wire Line
	8500 2350 8600 2450
Wire Wire Line
	9000 1150 8600 1150
Wire Wire Line
	9000 1250 8600 1250
Wire Wire Line
	9000 1350 8600 1350
Wire Wire Line
	9000 1450 8600 1450
Wire Wire Line
	9000 1550 8600 1550
Wire Wire Line
	9000 1650 8600 1650
Wire Wire Line
	9000 1750 8600 1750
Wire Wire Line
	9000 1850 8600 1850
Wire Wire Line
	9000 1950 8600 1950
Wire Wire Line
	9000 2050 8600 2050
Wire Wire Line
	9000 2150 8600 2150
Wire Wire Line
	9000 2250 8600 2250
Wire Wire Line
	9000 2350 8600 2350
Wire Wire Line
	9000 2450 8600 2450
Wire Bus Line
	8500 900  8250 900 
Text Label 8250 900  2    50   ~ 0
VA[0..13]
Text Label 8850 1150 2    50   ~ 0
VA0
Text Label 8850 1250 2    50   ~ 0
VA1
Text Label 8850 1350 2    50   ~ 0
VA2
Text Label 8850 1450 2    50   ~ 0
VA3
Text Label 8850 2150 2    50   ~ 0
VA4
Text Label 8850 1550 2    50   ~ 0
VA5
Text Label 8850 1650 2    50   ~ 0
VA6
Text Label 8850 2250 2    50   ~ 0
VA7
Text Label 8850 1750 2    50   ~ 0
VA8
Text Label 8850 1850 2    50   ~ 0
VA9
Text Label 8850 2050 2    50   ~ 0
VA10
Text Label 8850 2350 2    50   ~ 0
VA11
Text Label 8850 1950 2    50   ~ 0
VA12
Text Label 8850 2450 2    50   ~ 0
VA13
$Comp
L power:GND #PWR034
U 1 1 612329DC
P 8900 2650
F 0 "#PWR034" H 8900 2400 50  0001 C CNN
F 1 "GND" H 8905 2477 50  0000 C CNN
F 2 "" H 8900 2650 50  0001 C CNN
F 3 "" H 8900 2650 50  0001 C CNN
	1    8900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 612329E2
P 9500 2850
F 0 "#PWR038" H 9500 2600 50  0001 C CNN
F 1 "GND" H 9505 2677 50  0000 C CNN
F 2 "" H 9500 2850 50  0001 C CNN
F 3 "" H 9500 2850 50  0001 C CNN
	1    9500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2850 9500 2750
Wire Wire Line
	8900 2550 9000 2550
Wire Wire Line
	8900 2550 8900 2650
$Comp
L power:+5V #PWR037
U 1 1 612329EB
P 9500 850
F 0 "#PWR037" H 9500 700 50  0001 C CNN
F 1 "+5V" H 9515 1023 50  0000 C CNN
F 2 "" H 9500 850 50  0001 C CNN
F 3 "" H 9500 850 50  0001 C CNN
	1    9500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 950  9500 850 
$Comp
L 74xx:74LS574 U5
U 1 1 612329F2
P 6100 1600
F 0 "U5" H 5850 2250 50  0000 C CNN
F 1 "74LS574" H 6300 2250 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6100 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 6100 1600 50  0001 C CNN
	1    6100 1600
	1    0    0    -1  
$EndComp
Entry Wire Line
	4000 1200 3900 1300
Entry Wire Line
	4000 1300 3900 1400
Entry Wire Line
	4000 1400 3900 1500
Entry Wire Line
	4000 1500 3900 1600
Entry Wire Line
	4000 1600 3900 1700
Entry Wire Line
	4000 1700 3900 1800
Entry Wire Line
	4000 1800 3900 1900
Entry Wire Line
	4000 1900 3900 2000
Wire Wire Line
	3900 1300 3600 1300
Wire Wire Line
	3900 1400 3600 1400
Wire Wire Line
	3900 1500 3600 1500
Wire Wire Line
	3900 1600 3600 1600
Wire Wire Line
	3900 1700 3600 1700
Wire Wire Line
	3900 1800 3600 1800
Wire Wire Line
	3900 1900 3600 1900
Wire Wire Line
	3900 2000 3600 2000
Text Label 3700 1300 0    50   ~ 0
AD0
Text Label 3700 1400 0    50   ~ 0
AD1
Text Label 3700 1500 0    50   ~ 0
AD2
Text Label 3700 1600 0    50   ~ 0
AD3
Text Label 3700 1700 0    50   ~ 0
AD4
Text Label 3700 1800 0    50   ~ 0
AD5
Text Label 3700 1900 0    50   ~ 0
AD6
Text Label 3700 2000 0    50   ~ 0
AD7
Wire Bus Line
	4000 1100 4100 1100
Text Label 4100 1100 0    50   ~ 0
AD[0..7]
Entry Wire Line
	5200 1000 5300 1100
Entry Wire Line
	5200 1100 5300 1200
Entry Wire Line
	5200 1200 5300 1300
Entry Wire Line
	5200 1300 5300 1400
Entry Wire Line
	5200 1400 5300 1500
Entry Wire Line
	5200 1500 5300 1600
Entry Wire Line
	5200 1600 5300 1700
Entry Wire Line
	5200 1700 5300 1800
Wire Wire Line
	5300 1100 5600 1100
Wire Wire Line
	5300 1200 5600 1200
Wire Wire Line
	5300 1300 5600 1300
Wire Wire Line
	5300 1400 5600 1400
Wire Wire Line
	5300 1500 5600 1500
Wire Wire Line
	5300 1600 5600 1600
Wire Wire Line
	5300 1700 5600 1700
Wire Wire Line
	5300 1800 5600 1800
Text Label 5500 1100 2    50   ~ 0
AD0
Text Label 5500 1200 2    50   ~ 0
AD1
Text Label 5500 1300 2    50   ~ 0
AD2
Text Label 5500 1400 2    50   ~ 0
AD3
Text Label 5500 1500 2    50   ~ 0
AD4
Text Label 5500 1600 2    50   ~ 0
AD5
Text Label 5500 1700 2    50   ~ 0
AD6
Text Label 5500 1800 2    50   ~ 0
AD7
Wire Bus Line
	5200 900  5100 900 
Text Label 5100 900  2    50   ~ 0
AD[0..7]
Entry Wire Line
	7000 1100 6900 1200
Entry Wire Line
	7000 1200 6900 1300
Entry Wire Line
	7000 1300 6900 1400
Entry Wire Line
	7000 1400 6900 1500
Entry Wire Line
	7000 1500 6900 1600
Entry Wire Line
	7000 1600 6900 1700
Entry Wire Line
	7000 1700 6900 1800
Wire Wire Line
	6900 1200 6600 1200
Wire Wire Line
	6900 1300 6600 1300
Wire Wire Line
	6900 1400 6600 1400
Wire Wire Line
	6900 1500 6600 1500
Wire Wire Line
	6900 1600 6600 1600
Wire Wire Line
	6900 1700 6600 1700
Wire Wire Line
	6900 1800 6600 1800
Wire Bus Line
	7000 900  7100 900 
Text Label 7100 900  0    50   ~ 0
VA[0..13]
Text Label 6650 1200 0    50   ~ 0
VA0
Text Label 6650 1300 0    50   ~ 0
VA1
Text Label 6650 1400 0    50   ~ 0
VA2
Text Label 6650 1500 0    50   ~ 0
VA3
Text Label 6650 1600 0    50   ~ 0
VA4
Text Label 6650 1700 0    50   ~ 0
VA5
Text Label 6650 1800 0    50   ~ 0
VA6
$Comp
L power:GND #PWR027
U 1 1 61232A43
P 6100 2450
F 0 "#PWR027" H 6100 2200 50  0001 C CNN
F 1 "GND" H 6105 2277 50  0000 C CNN
F 2 "" H 6100 2450 50  0001 C CNN
F 3 "" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2450 6100 2400
$Comp
L power:+5V #PWR026
U 1 1 61232A4A
P 6100 750
F 0 "#PWR026" H 6100 600 50  0001 C CNN
F 1 "+5V" H 6115 923 50  0000 C CNN
F 2 "" H 6100 750 50  0001 C CNN
F 3 "" H 6100 750 50  0001 C CNN
	1    6100 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 750  6100 800 
$Comp
L 74xx:74LS574 U6
U 1 1 61232A51
P 6100 3800
F 0 "U6" H 5850 4450 50  0000 C CNN
F 1 "74LS574" H 6300 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6100 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 6100 3800 50  0001 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
Entry Wire Line
	5200 3200 5300 3300
Entry Wire Line
	5200 3300 5300 3400
Entry Wire Line
	5200 3400 5300 3500
Entry Wire Line
	5200 3500 5300 3600
Entry Wire Line
	5200 3600 5300 3700
Entry Wire Line
	5200 3700 5300 3800
Entry Wire Line
	5200 3800 5300 3900
Entry Wire Line
	5200 3900 5300 4000
Wire Wire Line
	5300 3300 5600 3300
Wire Wire Line
	5300 3400 5600 3400
Wire Wire Line
	5300 3500 5600 3500
Wire Wire Line
	5300 3600 5600 3600
Wire Wire Line
	5300 3700 5600 3700
Wire Wire Line
	5300 3800 5600 3800
Wire Wire Line
	5300 3900 5600 3900
Wire Wire Line
	5300 4000 5600 4000
Text Label 5500 3300 2    50   ~ 0
AD0
Text Label 5500 3400 2    50   ~ 0
AD1
Text Label 5500 3500 2    50   ~ 0
AD2
Text Label 5500 3600 2    50   ~ 0
AD3
Text Label 5500 3700 2    50   ~ 0
AD4
Text Label 5500 3800 2    50   ~ 0
AD5
Text Label 5500 3900 2    50   ~ 0
AD6
Text Label 5500 4000 2    50   ~ 0
AD7
Wire Bus Line
	5200 3100 5100 3100
Text Label 5100 3100 2    50   ~ 0
AD[0..7]
Entry Wire Line
	7000 3300 6900 3400
Entry Wire Line
	7000 3400 6900 3500
Entry Wire Line
	7000 3500 6900 3600
Entry Wire Line
	7000 3600 6900 3700
Entry Wire Line
	7000 3700 6900 3800
Entry Wire Line
	7000 3800 6900 3900
Entry Wire Line
	7000 3900 6900 4000
Wire Wire Line
	6900 3400 6600 3400
Wire Wire Line
	6900 3500 6600 3500
Wire Wire Line
	6900 3600 6600 3600
Wire Wire Line
	6900 3700 6600 3700
Wire Wire Line
	6900 3800 6600 3800
Wire Wire Line
	6900 3900 6600 3900
Wire Wire Line
	6900 4000 6600 4000
Wire Bus Line
	7000 3100 7100 3100
Text Label 7100 3100 0    50   ~ 0
VA[0..13]
$Comp
L power:GND #PWR029
U 1 1 61232A81
P 6100 4650
F 0 "#PWR029" H 6100 4400 50  0001 C CNN
F 1 "GND" H 6105 4477 50  0000 C CNN
F 2 "" H 6100 4650 50  0001 C CNN
F 3 "" H 6100 4650 50  0001 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4650 6100 4600
$Comp
L power:+5V #PWR028
U 1 1 61232A88
P 6100 2950
F 0 "#PWR028" H 6100 2800 50  0001 C CNN
F 1 "+5V" H 6115 3123 50  0000 C CNN
F 2 "" H 6100 2950 50  0001 C CNN
F 3 "" H 6100 2950 50  0001 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2950 6100 3000
$Comp
L 74xx:74LS574 U7
U 1 1 61232A8F
P 6100 6000
F 0 "U7" H 5850 6650 50  0000 C CNN
F 1 "74LS574" H 6300 6650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6100 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 6100 6000 50  0001 C CNN
	1    6100 6000
	1    0    0    -1  
$EndComp
Entry Wire Line
	5200 5400 5300 5500
Entry Wire Line
	5200 5500 5300 5600
Entry Wire Line
	5200 5600 5300 5700
Entry Wire Line
	5200 5700 5300 5800
Entry Wire Line
	5200 5800 5300 5900
Entry Wire Line
	5200 5900 5300 6000
Entry Wire Line
	5200 6000 5300 6100
Entry Wire Line
	5200 6100 5300 6200
Wire Wire Line
	5300 5500 5600 5500
Wire Wire Line
	5300 5600 5600 5600
Wire Wire Line
	5300 5700 5600 5700
Wire Wire Line
	5300 5800 5600 5800
Wire Wire Line
	5300 5900 5600 5900
Wire Wire Line
	5300 6000 5600 6000
Wire Wire Line
	5300 6100 5600 6100
Wire Wire Line
	5300 6200 5600 6200
Text Label 5500 5500 2    50   ~ 0
AD0
Text Label 5500 5600 2    50   ~ 0
AD1
Text Label 5500 5700 2    50   ~ 0
AD2
Text Label 5500 5800 2    50   ~ 0
AD3
Text Label 5500 5900 2    50   ~ 0
AD4
Text Label 5500 6000 2    50   ~ 0
AD5
Text Label 5500 6100 2    50   ~ 0
AD6
Text Label 5500 6200 2    50   ~ 0
AD7
Wire Bus Line
	5200 5300 5100 5300
Text Label 5100 5300 2    50   ~ 0
AD[0..7]
Entry Wire Line
	7000 5400 6900 5500
Entry Wire Line
	7000 5500 6900 5600
Entry Wire Line
	7000 5600 6900 5700
Entry Wire Line
	7000 5700 6900 5800
Entry Wire Line
	7000 5800 6900 5900
Entry Wire Line
	7000 5900 6900 6000
Entry Wire Line
	7000 6000 6900 6100
Entry Wire Line
	7000 6100 6900 6200
Wire Wire Line
	6900 5500 6600 5500
Wire Wire Line
	6900 5600 6600 5600
Wire Wire Line
	6900 5700 6600 5700
Wire Wire Line
	6900 5800 6600 5800
Wire Wire Line
	6900 5900 6600 5900
Wire Wire Line
	6900 6000 6600 6000
Wire Wire Line
	6900 6100 6600 6100
Wire Wire Line
	6900 6200 6600 6200
Wire Bus Line
	7000 5300 7100 5300
$Comp
L power:GND #PWR031
U 1 1 61232AC0
P 6100 6850
F 0 "#PWR031" H 6100 6600 50  0001 C CNN
F 1 "GND" H 6105 6677 50  0000 C CNN
F 2 "" H 6100 6850 50  0001 C CNN
F 3 "" H 6100 6850 50  0001 C CNN
	1    6100 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6850 6100 6800
$Comp
L power:+5V #PWR030
U 1 1 61232AC7
P 6100 5150
F 0 "#PWR030" H 6100 5000 50  0001 C CNN
F 1 "+5V" H 6115 5323 50  0000 C CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5150 6100 5200
Text Label 8600 4300 2    50   ~ 0
COMPOSITE
Wire Wire Line
	8600 4300 8800 4300
Connection ~ 8800 4300
Wire Wire Line
	8800 4300 8900 4300
$Comp
L 74xx:74LS04 U3
U 1 1 61232AD2
P 1950 5500
F 0 "U3" H 1950 5817 50  0000 C CNN
F 1 "74LS04" H 1950 5726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1950 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1950 5500 50  0001 C CNN
	1    1950 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 2 1 61232AD8
P 1950 6050
F 0 "U3" H 1950 6367 50  0000 C CNN
F 1 "74LS04" H 1950 6276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1950 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1950 6050 50  0001 C CNN
	2    1950 6050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 3 1 61232ADE
P 1950 6650
F 0 "U3" H 1950 6967 50  0000 C CNN
F 1 "74LS04" H 1950 6876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1950 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1950 6650 50  0001 C CNN
	3    1950 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 4 1 61232AE4
P 1950 7300
F 0 "U3" H 1950 7617 50  0000 C CNN
F 1 "74LS04" H 1950 7526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 1950 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1950 7300 50  0001 C CNN
	4    1950 7300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 5 1 61232AEA
P 3400 5500
F 0 "U3" H 3400 5817 50  0000 C CNN
F 1 "74LS04" H 3400 5726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3400 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3400 5500 50  0001 C CNN
	5    3400 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 6 1 61232AF0
P 3250 7250
F 0 "U3" H 3250 7567 50  0000 C CNN
F 1 "74LS04" H 3250 7476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3250 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3250 7250 50  0001 C CNN
	6    3250 7250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 7 1 61232AF6
P 4000 7000
F 0 "U3" H 4230 7046 50  0000 L CNN
F 1 "74LS04" H 4230 6955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4000 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4000 7000 50  0001 C CNN
	7    4000 7000
	1    0    0    -1  
$EndComp
Text Label 1550 5500 2    50   ~ 0
~RAS
Text Label 2350 5500 0    50   ~ 0
ROW
Wire Wire Line
	1550 5500 1650 5500
Wire Wire Line
	2250 5500 2350 5500
Text Label 1550 6050 2    50   ~ 0
~CAS
Wire Wire Line
	1550 6050 1650 6050
Wire Wire Line
	2250 6050 2300 6050
Wire Wire Line
	2300 6050 2300 6250
Wire Wire Line
	2300 6250 1550 6250
Wire Wire Line
	1550 6250 1550 6650
Wire Wire Line
	1550 6650 1650 6650
Wire Wire Line
	2250 6650 2350 6650
Wire Wire Line
	2350 6650 2350 6850
Wire Wire Line
	2350 6850 1550 6850
Wire Wire Line
	1550 6850 1550 7300
Wire Wire Line
	1550 7300 1650 7300
Wire Wire Line
	2250 7300 2350 7300
Text Label 2350 7300 0    50   ~ 0
COL
$Comp
L power:GND #PWR025
U 1 1 61232B0E
P 5500 4400
F 0 "#PWR025" H 5500 4150 50  0001 C CNN
F 1 "GND" H 5505 4227 50  0000 C CNN
F 2 "" H 5500 4400 50  0001 C CNN
F 3 "" H 5500 4400 50  0001 C CNN
	1    5500 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 61232B14
P 5500 2200
F 0 "#PWR024" H 5500 1950 50  0001 C CNN
F 1 "GND" H 5505 2027 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2100 5500 2100
Wire Wire Line
	5500 2100 5500 2200
Wire Wire Line
	5600 4300 5500 4300
Wire Wire Line
	5500 4300 5500 4400
Wire Wire Line
	3100 5500 3000 5500
Text Label 5500 6400 2    50   ~ 0
V~R~W
Wire Wire Line
	3800 5500 3700 5500
Text Label 3000 5500 2    50   ~ 0
VR~W
$Comp
L power:GND #PWR023
U 1 1 61232B22
P 4000 7550
F 0 "#PWR023" H 4000 7300 50  0001 C CNN
F 1 "GND" H 4005 7377 50  0000 C CNN
F 2 "" H 4000 7550 50  0001 C CNN
F 3 "" H 4000 7550 50  0001 C CNN
	1    4000 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 61232B28
P 4000 6400
F 0 "#PWR022" H 4000 6250 50  0001 C CNN
F 1 "+5V" H 4015 6573 50  0000 C CNN
F 2 "" H 4000 6400 50  0001 C CNN
F 3 "" H 4000 6400 50  0001 C CNN
	1    4000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6500 4000 6400
Wire Wire Line
	4000 7500 4000 7550
$Comp
L power:GND #PWR019
U 1 1 61232B30
P 2900 7300
F 0 "#PWR019" H 2900 7050 50  0001 C CNN
F 1 "GND" H 2905 7127 50  0000 C CNN
F 2 "" H 2900 7300 50  0001 C CNN
F 3 "" H 2900 7300 50  0001 C CNN
	1    2900 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7300 2900 7250
Wire Wire Line
	2900 7250 2950 7250
NoConn ~ 3550 7250
NoConn ~ 6600 1100
NoConn ~ 6600 3300
Text Label 6700 3400 0    50   ~ 0
VA7
Text Label 6700 3500 0    50   ~ 0
VA8
Text Label 6700 3600 0    50   ~ 0
VA9
Text Label 6700 3700 0    50   ~ 0
VA10
Text Label 6700 3800 0    50   ~ 0
VA11
Text Label 6700 3900 0    50   ~ 0
VA12
Text Label 6700 4000 0    50   ~ 0
VA13
Text Label 5500 4200 2    50   ~ 0
COL
Wire Wire Line
	5500 4200 5600 4200
Text Label 5500 2000 2    50   ~ 0
ROW
Wire Wire Line
	5500 2000 5600 2000
Text Label 3800 5500 0    50   ~ 0
V~R~W
Text Label 5500 6500 2    50   ~ 0
VR~W
Wire Wire Line
	5500 6500 5600 6500
Wire Wire Line
	5600 6400 5500 6400
Text Label 6650 5500 0    50   ~ 0
VD0
Text Label 6650 5600 0    50   ~ 0
VD1
Text Label 6650 5700 0    50   ~ 0
VD2
Text Label 6650 5800 0    50   ~ 0
VD3
Text Label 6650 5900 0    50   ~ 0
VD4
Text Label 6650 6000 0    50   ~ 0
VD5
Text Label 6650 6100 0    50   ~ 0
VD6
Text Label 6650 6200 0    50   ~ 0
VD7
Text Label 7100 5300 0    50   ~ 0
VD[0..7]
NoConn ~ 2300 2900
NoConn ~ 2300 3000
NoConn ~ 3600 3500
Entry Wire Line
	4100 2500 4000 2600
Entry Wire Line
	4100 2600 4000 2700
Entry Wire Line
	4100 2700 4000 2800
Entry Wire Line
	4100 2800 4000 2900
Entry Wire Line
	4100 2900 4000 3000
Entry Wire Line
	4100 3000 4000 3100
Entry Wire Line
	4100 3100 4000 3200
Entry Wire Line
	4100 3200 4000 3300
Wire Bus Line
	4100 2400 4200 2400
Text Label 3750 2600 0    50   ~ 0
VD0
Text Label 3750 2700 0    50   ~ 0
VD1
Text Label 3750 2800 0    50   ~ 0
VD2
Text Label 3750 2900 0    50   ~ 0
VD3
Text Label 3750 3000 0    50   ~ 0
VD4
Text Label 3750 3100 0    50   ~ 0
VD5
Text Label 3750 3200 0    50   ~ 0
VD6
Text Label 3750 3300 0    50   ~ 0
VD7
Text Label 4200 2400 0    50   ~ 0
VD[0..7]
Wire Wire Line
	3600 2600 4000 2600
Wire Wire Line
	3600 2700 4000 2700
Wire Wire Line
	3600 2800 4000 2800
Wire Wire Line
	3600 2900 4000 2900
Wire Wire Line
	3600 3000 4000 3000
Wire Wire Line
	3600 3100 4000 3100
Wire Wire Line
	3600 3200 4000 3200
Wire Wire Line
	3600 3300 4000 3300
$Comp
L power:+5V #PWR020
U 1 1 612BE737
P 2950 850
F 0 "#PWR020" H 2950 700 50  0001 C CNN
F 1 "+5V" H 2965 1023 50  0000 C CNN
F 2 "" H 2950 850 50  0001 C CNN
F 3 "" H 2950 850 50  0001 C CNN
	1    2950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 850  2950 950 
$Comp
L power:GND #PWR021
U 1 1 612CBA26
P 2950 4150
F 0 "#PWR021" H 2950 3900 50  0001 C CNN
F 1 "GND" H 2955 3977 50  0000 C CNN
F 2 "" H 2950 4150 50  0001 C CNN
F 3 "" H 2950 4150 50  0001 C CNN
	1    2950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4150 2950 4050
Text Label 10250 2050 0    50   ~ 0
~CAS
Wire Wire Line
	10250 2050 10000 2050
Wire Wire Line
	10250 2350 10000 2350
Text Label 10250 2350 0    50   ~ 0
VR~W
Wire Wire Line
	10250 2250 10000 2250
Text Label 10250 2250 0    50   ~ 0
V~R~W
$Comp
L Device:C C?
U 1 1 61351F2D
P 8550 6450
AR Path="/61351F2D" Ref="C?"  Part="1" 
AR Path="/60FA5BB4/61351F2D" Ref="C7"  Part="1" 
F 0 "C7" H 8665 6496 50  0000 L CNN
F 1 "100nF" H 8665 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8588 6300 50  0001 C CNN
F 3 "~" H 8550 6450 50  0001 C CNN
	1    8550 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61351F33
P 9050 6450
AR Path="/61351F33" Ref="C?"  Part="1" 
AR Path="/60FA5BB4/61351F33" Ref="C8"  Part="1" 
F 0 "C8" H 9165 6496 50  0000 L CNN
F 1 "100nF" H 9165 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9088 6300 50  0001 C CNN
F 3 "~" H 9050 6450 50  0001 C CNN
	1    9050 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61351F39
P 8050 6450
AR Path="/61351F39" Ref="C?"  Part="1" 
AR Path="/60FA5BB4/61351F39" Ref="C6"  Part="1" 
F 0 "C6" H 8165 6496 50  0000 L CNN
F 1 "100nF" H 8165 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8088 6300 50  0001 C CNN
F 3 "~" H 8050 6450 50  0001 C CNN
	1    8050 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61351F3F
P 8550 6750
AR Path="/61351F3F" Ref="#PWR?"  Part="1" 
AR Path="/60FA5BB4/61351F3F" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 8550 6500 50  0001 C CNN
F 1 "GND" H 8555 6577 50  0000 C CNN
F 2 "" H 8550 6750 50  0001 C CNN
F 3 "" H 8550 6750 50  0001 C CNN
	1    8550 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61351F45
P 8550 6150
AR Path="/61351F45" Ref="#PWR?"  Part="1" 
AR Path="/60FA5BB4/61351F45" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 8550 6000 50  0001 C CNN
F 1 "+5V" H 8565 6323 50  0000 C CNN
F 2 "" H 8550 6150 50  0001 C CNN
F 3 "" H 8550 6150 50  0001 C CNN
	1    8550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6300 8050 6200
Wire Wire Line
	8050 6200 8550 6200
Wire Wire Line
	9050 6200 9050 6300
Wire Wire Line
	8550 6300 8550 6200
Connection ~ 8550 6200
Wire Wire Line
	8550 6200 9050 6200
Wire Wire Line
	8550 6200 8550 6150
Wire Wire Line
	8050 6600 8050 6700
Wire Wire Line
	8050 6700 8550 6700
Wire Wire Line
	9050 6700 9050 6600
Wire Wire Line
	8550 6600 8550 6700
Connection ~ 8550 6700
Wire Wire Line
	8550 6700 9050 6700
Wire Wire Line
	8550 6700 8550 6750
Text HLabel 1650 1000 0    50   Input ~ 0
D[0..7]
Text HLabel 1500 2000 0    50   Input ~ 0
A[1..7]
Entry Wire Line
	1800 1200 1900 1300
Entry Wire Line
	1800 1300 1900 1400
Entry Wire Line
	1800 1400 1900 1500
Entry Wire Line
	1800 1500 1900 1600
Entry Wire Line
	1800 1600 1900 1700
Entry Wire Line
	1800 1700 1900 1800
Entry Wire Line
	1800 1800 1900 1900
Entry Wire Line
	1800 1900 1900 2000
Wire Wire Line
	2300 1300 1900 1300
Wire Wire Line
	2300 1400 1900 1400
Wire Wire Line
	2300 1500 1900 1500
Wire Wire Line
	2300 1600 1900 1600
Wire Wire Line
	2300 1700 1900 1700
Wire Wire Line
	2300 1800 1900 1800
Wire Wire Line
	2300 1900 1900 1900
Wire Wire Line
	2300 2000 1900 2000
Wire Bus Line
	1800 1000 1650 1000
Text Label 2050 2000 0    50   ~ 0
D0
Text Label 2050 1900 0    50   ~ 0
D1
Text Label 2050 1800 0    50   ~ 0
D2
Text Label 2050 1700 0    50   ~ 0
D3
Text Label 2050 1600 0    50   ~ 0
D4
Text Label 2050 1500 0    50   ~ 0
D5
Text Label 2050 1400 0    50   ~ 0
D6
Text Label 2050 1300 0    50   ~ 0
D7
Entry Wire Line
	1700 2100 1800 2200
Wire Wire Line
	2300 2200 1800 2200
Wire Bus Line
	1700 2100 1700 2000
Wire Bus Line
	1700 2000 1500 2000
Text Label 2050 2200 0    50   ~ 0
A1
Text HLabel 1800 2300 0    50   Input ~ 0
~VDPW
Text HLabel 1800 2400 0    50   Input ~ 0
~VDPR
Text HLabel 1800 2700 0    50   Input ~ 0
~RESET
Text HLabel 1800 2600 0    50   Output ~ 0
~INT
Wire Wire Line
	1800 2600 2300 2600
Wire Wire Line
	2300 2700 1800 2700
Wire Bus Line
	7000 900  7000 1700
Wire Bus Line
	7000 3100 7000 3900
Wire Bus Line
	4100 2400 4100 3200
Wire Bus Line
	7000 5300 7000 6100
Wire Bus Line
	5200 5300 5200 6100
Wire Bus Line
	5200 3100 5200 3900
Wire Bus Line
	5200 900  5200 1700
Wire Bus Line
	4000 1100 4000 1900
Wire Bus Line
	10450 950  10450 1750
Wire Bus Line
	1800 1000 1800 1900
Wire Bus Line
	8500 900  8500 2350
$EndSCHEMATC