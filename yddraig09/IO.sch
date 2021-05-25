EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L Ddraig:PC16552D U?
U 1 1 60BE9763
P 3200 3200
F 0 "U?" H 2650 4800 50  0000 C CNN
F 1 "PC16552D" H 3600 4800 50  0000 C CNN
F 2 "" H 3200 3200 50  0001 C CIN
F 3 "" H 3200 3200 50  0001 C CNN
	1    3200 3200
	1    0    0    -1  
$EndComp
Text HLabel 1650 2500 0    50   Input ~ 0
A[0..15]
Text HLabel 1750 1550 0    50   Input ~ 0
D[0..7]
Entry Wire Line
	2000 1700 2100 1800
Entry Wire Line
	2000 1800 2100 1900
Entry Wire Line
	2000 1900 2100 2000
Entry Wire Line
	2000 2000 2100 2100
Entry Wire Line
	2000 2100 2100 2200
Entry Wire Line
	2000 2200 2100 2300
Entry Wire Line
	2000 2300 2100 2400
Entry Wire Line
	2000 2400 2100 2500
Text Label 2200 1800 0    50   ~ 0
D0
Text Label 2200 1900 0    50   ~ 0
D1
Text Label 2200 2000 0    50   ~ 0
D2
Text Label 2200 2100 0    50   ~ 0
D3
Text Label 2200 2200 0    50   ~ 0
D4
Text Label 2200 2300 0    50   ~ 0
D5
Text Label 2200 2400 0    50   ~ 0
D6
Text Label 2200 2500 0    50   ~ 0
D7
Wire Bus Line
	2000 1550 1750 1550
Entry Wire Line
	1900 2600 2000 2700
Entry Wire Line
	1900 2700 2000 2800
Entry Wire Line
	1900 2800 2000 2900
Wire Wire Line
	2450 2900 2000 2900
Wire Wire Line
	2450 2800 2000 2800
Wire Wire Line
	2450 2700 2000 2700
Wire Bus Line
	1900 2500 1650 2500
Text Label 2200 2700 0    50   ~ 0
A0
Text Label 2200 2800 0    50   ~ 0
A1
Text Label 2200 2900 0    50   ~ 0
A2
Wire Wire Line
	2100 2500 2450 2500
Wire Wire Line
	2450 2400 2100 2400
Wire Wire Line
	2100 2300 2450 2300
Wire Wire Line
	2100 2100 2450 2100
Wire Wire Line
	2450 2000 2100 2000
Wire Wire Line
	2100 1900 2450 1900
Wire Wire Line
	2450 1800 2100 1800
Wire Wire Line
	2100 2200 2450 2200
Wire Bus Line
	1900 2500 1900 2800
Wire Bus Line
	2000 1550 2000 2400
$EndSCHEMATC
