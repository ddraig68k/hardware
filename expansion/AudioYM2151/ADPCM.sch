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
L Ddraig:MSM6258 U?
U 1 1 60D5500F
P 4500 3750
F 0 "U?" H 4500 5731 50  0000 C CNN
F 1 "MSM6258" H 4500 5640 50  0000 C CNN
F 2 "" H 4800 2750 50  0001 C CNN
F 3 "" H 4800 2750 50  0001 C CNN
	1    4500 3750
	1    0    0    -1  
$EndComp
Entry Wire Line
	3350 2300 3450 2400
Entry Wire Line
	3350 2400 3450 2500
Entry Wire Line
	3350 2500 3450 2600
Entry Wire Line
	3350 2600 3450 2700
Entry Wire Line
	3350 2700 3450 2800
Entry Wire Line
	3350 2800 3450 2900
Entry Wire Line
	3350 2900 3450 3000
Entry Wire Line
	3350 3000 3450 3100
Wire Wire Line
	3850 2400 3450 2400
Wire Wire Line
	3450 2500 3850 2500
Wire Wire Line
	3850 2600 3450 2600
Wire Wire Line
	3450 2700 3850 2700
Wire Wire Line
	3850 2800 3450 2800
Wire Wire Line
	3450 2900 3850 2900
Wire Wire Line
	3850 3000 3450 3000
Wire Wire Line
	3450 3100 3850 3100
Text Label 3600 2400 0    50   ~ 0
D8
Text Label 3600 2500 0    50   ~ 0
D9
Text Label 3600 2600 0    50   ~ 0
D10
Text Label 3600 2700 0    50   ~ 0
D11
Text Label 3600 2800 0    50   ~ 0
D12
Text Label 3600 2900 0    50   ~ 0
D13
Text Label 3600 3000 0    50   ~ 0
D14
Text Label 3600 3100 0    50   ~ 0
D15
Text HLabel 3100 2150 0    50   BiDi ~ 0
D[0..15]
Wire Bus Line
	3350 2150 3100 2150
Text HLabel 3450 3400 0    50   Input ~ 0
~MSM_WR
Text HLabel 3450 3300 0    50   Input ~ 0
~MSM_CS
Text HLabel 3450 3500 0    50   Input ~ 0
~MSM_RD
Text HLabel 3450 3600 0    50   Input ~ 0
~MSM_CMD
Wire Wire Line
	3850 3300 3450 3300
Wire Wire Line
	3450 3400 3850 3400
Wire Wire Line
	3850 3500 3450 3500
Wire Wire Line
	3450 3600 3850 3600
Text HLabel 3450 3800 0    50   Input ~ 0
RESET
Wire Wire Line
	3450 3800 3850 3800
Wire Bus Line
	3350 2150 3350 3000
$EndSCHEMATC
