EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L Ddraig:V9958 U?
U 1 1 60BFF286
P 3500 3600
F 0 "U?" H 3475 5931 50  0000 C CNN
F 1 "V9958" H 3475 5840 50  0000 C CNN
F 2 "" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0001 C CNN
	1    3500 3600
	1    0    0    -1  
$EndComp
Entry Wire Line
	2500 2700 2600 2800
Entry Wire Line
	2500 2700 2600 2800
Entry Wire Line
	2500 2600 2600 2700
Entry Wire Line
	2500 2500 2600 2600
Entry Wire Line
	2500 2400 2600 2500
Entry Wire Line
	2500 2300 2600 2400
Entry Wire Line
	2500 2200 2600 2300
Entry Wire Line
	2500 2100 2600 2200
Entry Wire Line
	2500 2000 2600 2100
Entry Wire Line
	2600 1700 2700 1800
Entry Wire Line
	2600 1800 2700 1900
Wire Wire Line
	2700 1800 2900 1800
Wire Wire Line
	2900 1900 2700 1900
Text Label 2750 1800 0    50   ~ 0
A0
Text Label 2750 1900 0    50   ~ 0
A1
Text Label 2700 2100 0    50   ~ 0
D0
Text Label 2700 2200 0    50   ~ 0
D1
Text Label 2700 2300 0    50   ~ 0
D2
Text Label 2700 2400 0    50   ~ 0
D3
Text Label 2700 2500 0    50   ~ 0
D4
Text Label 2700 2600 0    50   ~ 0
D5
Text Label 2700 2700 0    50   ~ 0
D6
Text Label 2700 2800 0    50   ~ 0
D7
Wire Wire Line
	2600 2800 2900 2800
Wire Wire Line
	2900 2700 2600 2700
Wire Wire Line
	2600 2600 2900 2600
Wire Wire Line
	2900 2500 2600 2500
Text HLabel 2250 1900 0    50   BiDi ~ 0
D[0..7]
Wire Wire Line
	2600 2400 2900 2400
Wire Wire Line
	2900 2300 2600 2300
Wire Wire Line
	2600 2200 2900 2200
Wire Wire Line
	2900 2100 2600 2100
Text HLabel 2250 1600 0    50   BiDi ~ 0
A[0..15]
Wire Bus Line
	2600 1600 2250 1600
Wire Bus Line
	2500 1900 2250 1900
Wire Bus Line
	2600 1600 2600 1800
Wire Bus Line
	2500 1900 2500 2700
$EndSCHEMATC
