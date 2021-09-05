EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
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
L Ddraig:W65C22S U?
U 1 1 6144FBBF
P 3200 2500
F 0 "U?" H 2850 3200 50  0000 C CNN
F 1 "W65C22S" H 3450 3200 50  0000 C CNN
F 2 "" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
Text HLabel 2000 2700 0    50   Input ~ 0
A[0..15]
Text HLabel 2100 1800 0    50   BiDi ~ 0
D[0..7]
Entry Wire Line
	2100 2800 2200 2900
Entry Wire Line
	2100 2900 2200 3000
Entry Wire Line
	2100 3000 2200 3100
Entry Wire Line
	2100 3100 2200 3200
Wire Wire Line
	2200 2900 2650 2900
Wire Wire Line
	2200 3000 2650 3000
Wire Wire Line
	2200 3100 2650 3100
Wire Wire Line
	2200 3200 2650 3200
Text Label 2350 2900 0    50   ~ 0
A0
Text Label 2350 3000 0    50   ~ 0
A1
Text Label 2350 3100 0    50   ~ 0
A2
Text Label 2350 3200 0    50   ~ 0
A3
Wire Bus Line
	2100 2700 2000 2700
Entry Wire Line
	2200 1900 2300 2000
Entry Wire Line
	2200 2000 2300 2100
Entry Wire Line
	2200 2100 2300 2200
Entry Wire Line
	2200 2200 2300 2300
Entry Wire Line
	2200 2300 2300 2400
Entry Wire Line
	2200 2400 2300 2500
Entry Wire Line
	2200 2500 2300 2600
Entry Wire Line
	2200 2600 2300 2700
Wire Wire Line
	2650 2000 2300 2000
Wire Wire Line
	2650 2100 2300 2100
Wire Wire Line
	2650 2200 2300 2200
Wire Wire Line
	2650 2300 2300 2300
Wire Wire Line
	2650 2400 2300 2400
Wire Wire Line
	2650 2500 2300 2500
Wire Wire Line
	2650 2600 2300 2600
Wire Wire Line
	2650 2700 2300 2700
Text Label 2450 2000 0    50   ~ 0
D0
Text Label 2450 2100 0    50   ~ 0
D1
Text Label 2450 2200 0    50   ~ 0
D2
Text Label 2450 2300 0    50   ~ 0
D3
Text Label 2450 2400 0    50   ~ 0
D4
Text Label 2450 2500 0    50   ~ 0
D5
Text Label 2450 2600 0    50   ~ 0
D6
Text Label 2450 2700 0    50   ~ 0
D7
Wire Bus Line
	2200 1800 2100 1800
$Comp
L power:+5V #PWR?
U 1 1 61454436
P 3200 1650
F 0 "#PWR?" H 3200 1500 50  0001 C CNN
F 1 "+5V" H 3215 1823 50  0000 C CNN
F 2 "" H 3200 1650 50  0001 C CNN
F 3 "" H 3200 1650 50  0001 C CNN
	1    3200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1700 3200 1650
$Comp
L power:GND #PWR?
U 1 1 61454BEC
P 3200 4550
F 0 "#PWR?" H 3200 4300 50  0001 C CNN
F 1 "GND" H 3205 4377 50  0000 C CNN
F 2 "" H 3200 4550 50  0001 C CNN
F 3 "" H 3200 4550 50  0001 C CNN
	1    3200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4500 3200 4550
Wire Bus Line
	2100 2700 2100 3100
Wire Bus Line
	2200 1800 2200 2600
$EndSCHEMATC
