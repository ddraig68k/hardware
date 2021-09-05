EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 14
Title "Y Ddraig Fawr"
Date ""
Rev ""
Comp "Stephen Moody"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CPLD_Xilinx:XC95108PQ100 U?
U 1 1 617369BA
P 4450 4000
F 0 "U?" H 3750 6350 50  0000 C CNN
F 1 "XC95108PQ100" H 5100 6350 50  0000 C CNN
F 2 "" H 4450 4000 50  0001 C CNN
F 3 "xilinx/xc95108.pdf" H 4450 4000 50  0001 C CNN
	1    4450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61738A8A
P 4450 1400
F 0 "#PWR?" H 4450 1250 50  0001 C CNN
F 1 "+5V" H 4465 1573 50  0000 C CNN
F 2 "" H 4450 1400 50  0001 C CNN
F 3 "" H 4450 1400 50  0001 C CNN
	1    4450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1500 4150 1450
Wire Wire Line
	4150 1450 4250 1450
Wire Wire Line
	4750 1450 4750 1500
Wire Wire Line
	4650 1500 4650 1450
Connection ~ 4650 1450
Wire Wire Line
	4650 1450 4750 1450
Wire Wire Line
	4250 1500 4250 1450
Connection ~ 4250 1450
Wire Wire Line
	4250 1450 4350 1450
Wire Wire Line
	4350 1500 4350 1450
Connection ~ 4350 1450
Wire Wire Line
	4350 1450 4450 1450
Wire Wire Line
	4550 1500 4550 1450
Connection ~ 4550 1450
Wire Wire Line
	4550 1450 4650 1450
Wire Wire Line
	4450 1500 4450 1450
Connection ~ 4450 1450
Wire Wire Line
	4450 1450 4550 1450
Wire Wire Line
	4450 1400 4450 1450
Wire Wire Line
	4150 6600 4150 6650
Wire Wire Line
	4150 6650 4250 6650
Wire Wire Line
	4850 6650 4850 6600
Wire Wire Line
	4750 6600 4750 6650
Connection ~ 4750 6650
Wire Wire Line
	4750 6650 4850 6650
Wire Wire Line
	4250 6600 4250 6650
Connection ~ 4250 6650
Wire Wire Line
	4250 6650 4350 6650
Wire Wire Line
	4350 6600 4350 6650
Connection ~ 4350 6650
Wire Wire Line
	4350 6650 4450 6650
Wire Wire Line
	4650 6600 4650 6650
Connection ~ 4650 6650
Wire Wire Line
	4650 6650 4750 6650
Wire Wire Line
	4450 6600 4450 6650
Connection ~ 4450 6650
Wire Wire Line
	4450 6650 4500 6650
Wire Wire Line
	4550 6600 4550 6650
Connection ~ 4550 6650
Wire Wire Line
	4550 6650 4650 6650
$Comp
L power:GND #PWR?
U 1 1 6173BF38
P 4500 6700
F 0 "#PWR?" H 4500 6450 50  0001 C CNN
F 1 "GND" H 4505 6527 50  0000 C CNN
F 2 "" H 4500 6700 50  0001 C CNN
F 3 "" H 4500 6700 50  0001 C CNN
	1    4500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6700 4500 6650
Connection ~ 4500 6650
Wire Wire Line
	4500 6650 4550 6650
Text Label 3200 4700 2    50   ~ 0
A0
Text Label 3200 4600 2    50   ~ 0
A1
Text Label 3200 4500 2    50   ~ 0
A2
Text Label 3200 4400 2    50   ~ 0
A3
Text Label 3200 4300 2    50   ~ 0
A8
Text Label 3200 4200 2    50   ~ 0
A9
Text Label 3200 4000 2    50   ~ 0
A10
Text Label 3200 3900 2    50   ~ 0
A11
Text Label 3200 3800 2    50   ~ 0
A12
Text Label 3200 3700 2    50   ~ 0
A13
Text Label 3200 3600 2    50   ~ 0
A14
Text Label 3200 3500 2    50   ~ 0
A15
Text Label 3200 3400 2    50   ~ 0
A16
Text Label 3200 3300 2    50   ~ 0
A17
Text Label 3200 3200 2    50   ~ 0
A18
Text Label 3200 3100 2    50   ~ 0
A19
Text Label 3200 3000 2    50   ~ 0
A20
Text Label 3200 2800 2    50   ~ 0
A21
Text Label 3200 2700 2    50   ~ 0
A22
Text Label 3200 2600 2    50   ~ 0
A23
Text Label 3200 2500 2    50   ~ 0
A24
Text Label 3200 2400 2    50   ~ 0
A25
Text Label 3200 2300 2    50   ~ 0
A26
Text Label 3200 2200 2    50   ~ 0
A27
Text Label 3200 2100 2    50   ~ 0
A28
Text Label 3200 2000 2    50   ~ 0
A29
Text Label 3200 1900 2    50   ~ 0
A30
Text Label 3200 1800 2    50   ~ 0
A31
Text Label 3200 4800 2    50   ~ 0
D24
Text Label 3200 4900 2    50   ~ 0
D25
Text Label 3200 5000 2    50   ~ 0
D26
Text Label 3200 5100 2    50   ~ 0
D27
Text Label 3200 5200 2    50   ~ 0
D28
Text Label 3200 5300 2    50   ~ 0
D29
Text Label 3200 5400 2    50   ~ 0
D30
Text Label 3200 5500 2    50   ~ 0
D31
$EndSCHEMATC
