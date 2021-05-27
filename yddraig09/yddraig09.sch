EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
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
L Connector:DIN-5_180degree J?
U 1 1 60ABB88F
P 1750 6900
F 0 "J?" H 1750 6625 50  0000 C CNN
F 1 "57PC5F" H 1750 6534 50  0000 C CNN
F 2 "" H 1750 6900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 1750 6900 50  0001 C CNN
	1    1750 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 60ABC508
P 3000 6750
F 0 "L?" V 3190 6750 50  0000 C CNN
F 1 "L" V 3099 6750 50  0000 C CNN
F 2 "" H 3000 6750 50  0001 C CNN
F 3 "~" H 3000 6750 50  0001 C CNN
	1    3000 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L?
U 1 1 60ABCE1A
P 3000 7150
F 0 "L?" V 3190 7150 50  0000 C CNN
F 1 "L" V 3099 7150 50  0000 C CNN
F 2 "" H 3000 7150 50  0001 C CNN
F 3 "~" H 3000 7150 50  0001 C CNN
	1    3000 7150
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push_DPDT SW?
U 1 1 60ABF09F
P 2500 6850
F 0 "SW?" H 2500 7335 50  0000 C CNN
F 1 "SW_Push_DPDT" H 2500 7244 50  0000 C CNN
F 2 "" H 2500 7050 50  0001 C CNN
F 3 "~" H 2500 7050 50  0001 C CNN
	1    2500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6800 2150 6800
Wire Wire Line
	2150 6800 2150 6650
Wire Wire Line
	2150 6650 2300 6650
Wire Wire Line
	2050 6900 2150 6900
Wire Wire Line
	2150 6900 2150 7050
Wire Wire Line
	2150 7050 2300 7050
Wire Wire Line
	2700 6750 2850 6750
Wire Wire Line
	2700 7150 2850 7150
$Comp
L power:+5V #PWR?
U 1 1 60AC1DE5
P 3450 6650
F 0 "#PWR?" H 3450 6500 50  0001 C CNN
F 1 "+5V" H 3465 6823 50  0000 C CNN
F 2 "" H 3450 6650 50  0001 C CNN
F 3 "" H 3450 6650 50  0001 C CNN
	1    3450 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60AC2336
P 3450 7050
F 0 "#PWR?" H 3450 6900 50  0001 C CNN
F 1 "+12V" H 3465 7223 50  0000 C CNN
F 2 "" H 3450 7050 50  0001 C CNN
F 3 "" H 3450 7050 50  0001 C CNN
	1    3450 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60AC274B
P 1300 7000
F 0 "#PWR?" H 1300 6750 50  0001 C CNN
F 1 "GND" H 1305 6827 50  0000 C CNN
F 2 "" H 1300 7000 50  0001 C CNN
F 3 "" H 1300 7000 50  0001 C CNN
	1    1300 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6900 1300 6900
Wire Wire Line
	1300 6900 1300 7000
Wire Wire Line
	1750 6600 1750 6500
Wire Wire Line
	1750 6500 1300 6500
Wire Wire Line
	1300 6500 1300 6900
Connection ~ 1300 6900
Wire Wire Line
	3150 7150 3450 7150
Wire Wire Line
	3450 7150 3450 7050
Wire Wire Line
	3150 6750 3450 6750
Wire Wire Line
	3450 6750 3450 6650
NoConn ~ 2700 6950
NoConn ~ 2700 6550
NoConn ~ 1450 6800
$Sheet
S 1450 1300 1400 2250
U 60AC674F
F0 "CPU, RAM and ROM" 50
F1 "CPU.sch" 50
F2 "~CS_RAM" O R 2850 2300 50 
F3 "~CS_ROM" O R 2850 2200 50 
F4 "CLOCK_E" O R 2850 2100 50 
F5 "A[0..15]" O R 2850 1400 50 
F6 "D[0..7]" O R 2850 1500 50 
$EndSheet
$Sheet
S 4800 2300 1150 2150
U 60BDD808
F0 "Decode Logic" 50
F1 "Decode.sch" 50
$EndSheet
$Sheet
S 8700 950  850  1550
U 60BDD923
F0 "Inputs and Outputs" 50
F1 "IO.sch" 50
F2 "A[0..15]" I L 8700 1100 50 
F3 "D[0..7]" I L 8700 1200 50 
$EndSheet
$Sheet
S 8700 2800 850  1700
U 60BDDAC0
F0 "Video" 50
F1 "Video.sch" 50
F2 "D[0..7]" B L 8700 3050 50 
F3 "A[0..15]" B L 8700 2950 50 
F4 "~VDP_RD" I L 8700 3600 50 
F5 "~VDP_WR" I L 8700 3700 50 
F6 "~VDP_INT" O L 8700 3800 50 
$EndSheet
$Sheet
S 8700 4850 850  1450
U 60BDDC0E
F0 "Audio" 50
F1 "Audio.sch" 50
F2 "D[0..7]" B L 8700 5100 50 
$EndSheet
Wire Bus Line
	2850 1400 3250 1400
Wire Bus Line
	3350 1500 2850 1500
Wire Bus Line
	8700 1100 8450 1100
Wire Bus Line
	8700 1200 8300 1200
Wire Bus Line
	8700 2950 8450 2950
Wire Bus Line
	8450 2950 8450 1100
Connection ~ 8450 1100
Wire Bus Line
	8300 3050 8300 1200
Connection ~ 8300 1200
Wire Bus Line
	8300 3050 8700 3050
Wire Bus Line
	8700 5100 8300 5100
Wire Bus Line
	8300 5100 8300 3050
Connection ~ 8300 3050
Wire Bus Line
	3350 1200 3350 1500
Wire Bus Line
	3350 1200 8300 1200
Wire Bus Line
	3250 1100 3250 1400
Wire Bus Line
	3250 1100 8450 1100
$EndSCHEMATC
