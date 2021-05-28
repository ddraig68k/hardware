EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
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
L CPLD_Xilinx:XC95144XL-TQ100 U?
U 1 1 60B018A5
P 8900 4200
F 0 "U?" H 8900 7081 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 8900 6990 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 8900 4200 50  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/data_sheets/ds056.pdf" H 8900 4200 50  0001 C CNN
	1    8900 4200
	1    0    0    -1  
$EndComp
$Comp
L Ddraig:D68K_64PIN_BOARD J?
U 1 1 60B07460
P 2950 4000
F 0 "J?" H 2925 6065 50  0000 C CNN
F 1 "D68K_64PIN_BOARD" H 2925 5974 50  0000 C CNN
F 2 "Ddraig:DIN41612_C_2x32_Male_Horizontal_THT" H 2800 2750 50  0001 C CNN
F 3 "" H 2800 2750 50  0001 C CNN
	1    2950 4000
	1    0    0    -1  
$EndComp
$Sheet
S 11900 3250 1850 2000
U 60B0BE0A
F0 "Audio" 50
F1 "Audio.sch" 50
$EndSheet
$Comp
L Logic_LevelTranslator:SN74AVC8T245PW U?
U 1 1 60B052FD
P 6350 3950
F 0 "U?" H 6350 3161 50  0000 C CNN
F 1 "SN74AVC8T245PW" H 6350 3070 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 7250 3300 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74avc8t245.pdf" H 6300 3700 50  0001 C CNN
	1    6350 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
