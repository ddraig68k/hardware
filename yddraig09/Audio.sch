EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Ddraig:YM2151 U?
U 1 1 60AEBB5E
P 4650 4100
F 0 "U?" H 4650 5231 50  0000 C CNN
F 1 "YM2151" H 4650 5140 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 4650 4100 50  0001 C CNN
F 3 "" H 4650 4100 50  0001 C CNN
	1    4650 4100
	1    0    0    -1  
$EndComp
$Comp
L Ddraig:YM3012 U?
U 1 1 60AEC562
P 6800 4100
F 0 "U?" H 6800 4981 50  0000 C CNN
F 1 "YM3012" H 6800 4890 50  0000 C CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "" H 6800 4100 50  0001 C CNN
	1    6800 4100
	1    0    0    -1  
$EndComp
Text HLabel 3350 3600 0    50   BiDi ~ 0
D[0..7]
Entry Wire Line
	3650 3700 3750 3800
Entry Wire Line
	3650 3800 3750 3900
Entry Wire Line
	3650 3900 3750 4000
Entry Wire Line
	3650 4000 3750 4100
Entry Wire Line
	3650 4100 3750 4200
Entry Wire Line
	3650 4200 3750 4300
Entry Wire Line
	3650 4300 3750 4400
Entry Wire Line
	3650 4400 3750 4500
Wire Wire Line
	4200 3800 3750 3800
Wire Wire Line
	3750 3900 4200 3900
Wire Wire Line
	4200 4000 3750 4000
Wire Wire Line
	3750 4100 4200 4100
Wire Wire Line
	4200 4200 3750 4200
Wire Wire Line
	3750 4300 4200 4300
Wire Wire Line
	4200 4400 3750 4400
Wire Wire Line
	3750 4500 4200 4500
Text Label 3900 4500 0    50   ~ 0
D7
Text Label 3900 4400 0    50   ~ 0
D6
Text Label 3900 4300 0    50   ~ 0
D5
Text Label 3900 4200 0    50   ~ 0
D4
Text Label 3900 4100 0    50   ~ 0
D3
Text Label 3900 4000 0    50   ~ 0
D2
Text Label 3900 3900 0    50   ~ 0
D1
Text Label 3900 3800 0    50   ~ 0
D0
Wire Bus Line
	3650 3600 3350 3600
Wire Bus Line
	3650 3600 3650 4400
$EndSCHEMATC
