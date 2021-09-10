EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 14
Title "Y Ddraig Fawr"
Date ""
Rev ""
Comp "Stephen Moody"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2400 1950 1050 1850
U 60EB395D
F0 "CPU and FPU" 50
F1 "CPU.sch" 50
$EndSheet
$Sheet
S 7850 2100 1150 2350
U 60EB3BEA
F0 "Expansion Slots" 50
F1 "Expansion.sch" 50
F2 "~EXT_PRD0[1..4]" O R 9000 3300 50 
F3 "~EXT_DTACK" O R 9000 2800 50 
F4 "~EXT_IRQ[1..4]" O R 9000 3100 50 
F5 "~DSACK1_EXT" O R 9000 2600 50 
F6 "~DSACK0_EXT" O R 9000 2500 50 
F7 "A[0..31]" I L 7850 2200 50 
F8 "D[0..31]" B L 7850 2300 50 
F9 "SIZ0" I L 7850 3000 50 
F10 "SIZ1" I L 7850 3100 50 
F11 "~AS" I L 7850 2600 50 
F12 "~DS" I L 7850 2700 50 
F13 "~RESET" I L 7850 2500 50 
F14 "RD~WR" I L 7850 3200 50 
F15 "~LDS" I L 7850 2800 50 
F16 "~UDS" I L 7850 2900 50 
F17 "~VMA" I L 7850 3400 50 
F18 "CPUCLK" I L 7850 3800 50 
F19 "CLK10" I L 7850 3700 50 
F20 "E" I L 7850 3600 50 
F21 "CS_EXTREG[1..4]" I L 7850 4000 50 
F22 "CS_EXTDATA[1..4]" I L 7850 4100 50 
F23 "~EXT_DBEN" I L 7850 4300 50 
F24 "~RD~WR" I L 7850 3300 50 
F25 "~EXT_PRD1[1..4" O R 9000 3400 50 
F26 "~EXT_BERR" O R 9000 2900 50 
$EndSheet
$Sheet
S 5700 6300 950  650 
U 6139A64F
F0 "Power" 50
F1 "Power.sch" 50
$EndSheet
$Sheet
S 5000 2000 1250 1450
U 6139A6BE
F0 "Decode and Logic" 50
F1 "Decode.sch" 50
$EndSheet
$Sheet
S 8700 6300 1000 650 
U 6139A713
F0 "Ethernet" 50
F1 "Ethernet.sch" 50
F2 "D[0..31]" B L 8700 6400 50 
F3 "A[0..31]" I L 8700 6500 50 
F4 "RESET" I R 9700 6450 50 
F5 "INT_ETH" O L 8700 6600 50 
F6 "~CS_ETH" I L 8700 6700 50 
F7 "RD~WR" I L 8700 6800 50 
F8 "~RD~WR" I L 8700 6900 50 
$EndSheet
$Sheet
S 7700 6300 950  650 
U 6139AAF1
F0 "Serial" 50
F1 "Serial and USB.sch" 50
F2 "~CS_DUART" I L 7700 6400 50 
F3 "~INT_DUART" O L 7700 6500 50 
F4 "A[0..31]" I L 7700 6600 50 
F5 "D[0..31]" B L 7700 6700 50 
F6 "~EXT_PD[1..4]" I L 7700 6800 50 
$EndSheet
$Sheet
S 6700 6300 950  650 
U 6139AB5E
F0 "Keyboard" 50
F1 "Keyboard.sch" 50
F2 "~INT_PS2" O L 6700 6400 50 
F3 "RD~WR" I L 6700 6500 50 
F4 "~RD~WR" I L 6700 6600 50 
F5 "~CS_KBD" I L 6700 6700 50 
F6 "~RESET" I L 6700 6800 50 
F7 "D[0..31]" B R 7650 6400 50 
F8 "A[0..31]" I R 7650 6500 50 
$EndSheet
$Sheet
S 2700 6300 950  650 
U 6139AB8F
F0 "IDE" 50
F1 "IDE Interface.sch" 50
F2 "D[0..31]" B L 2700 6400 50 
F3 "A[0..31]" I L 2700 6500 50 
F4 "~IDE_WR" I L 2700 6600 50 
F5 "~IDE_RD" I L 2700 6700 50 
F6 "~RESET" I L 2700 6800 50 
F7 "~CS_IDE" I L 2700 6900 50 
F8 "~INT_IDE" O R 3650 6400 50 
$EndSheet
$Sheet
S 3700 6300 950  650 
U 614AC8F8
F0 "USB" 50
F1 "USB.sch" 50
F2 "D[0..31]" B L 3700 6400 50 
F3 "A[0..31]" B L 3700 6500 50 
F4 "~USB_CS" I L 3700 6600 50 
F5 "~RESET" I R 4650 6450 50 
F6 "USB_INT" O R 4650 6550 50 
F7 "~USB_ENABLE" I R 4650 6650 50 
F8 "~USB_OVERCUR" O R 4650 6750 50 
F9 "RD~WR" I L 3700 6700 50 
F10 "~RD~WR" I L 3700 6800 50 
$EndSheet
NoConn ~ 12450 5900
$Sheet
S 4700 6300 950  650 
U 6152AF50
F0 "Real Time Clock" 50
F1 "RTC.sch" 50
F2 "~CS_RTC" I R 5650 6400 50 
F3 "RD~WR" I R 5650 6500 50 
F4 "~RD~WR" I R 5650 6600 50 
F5 "~RESET" I R 5650 6700 50 
F6 "A[0..31]" I L 4700 6400 50 
F7 "D[0..31]" B L 4700 6500 50 
$EndSheet
$Sheet
S 5000 3700 1050 1850
U 60CA1C9E
F0 "DRAM" 50
F1 "DRAM.sch" 50
F2 "DRAM_CLK" I L 5000 4350 50 
F3 "~CS_DRAM" I L 5000 4600 50 
F4 "~STERM" I L 5000 4700 50 
F5 "~AS" I L 5000 4450 50 
F6 "~CBREQ" I L 5000 4800 50 
F7 "SIZ0" I L 5000 4900 50 
F8 "SIZ1" I L 5000 5000 50 
F9 "~BG" I L 5000 5100 50 
F10 "~CS_DRAMCPLD" I L 5000 5200 50 
F11 "D[0..31]" B L 5000 5300 50 
F12 "A[0..31]" O L 5000 5400 50 
F13 "JTAG_TCK" I L 5000 4250 50 
F14 "JTAG_TMS" I L 5000 4150 50 
F15 "JTAG_TDI" I L 5000 4050 50 
F16 "JTAG_TDO" O L 5000 3950 50 
F17 "~DSACK0" O R 6050 4100 50 
F18 "~DSACK1" O R 6050 4200 50 
$EndSheet
$EndSCHEMATC
