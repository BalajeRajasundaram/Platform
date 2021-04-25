EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2400 5850 2    50   Input ~ 0
D_C_1
Text GLabel 2400 5950 2    50   Input ~ 0
D_C_2
Text GLabel 2400 6050 2    50   Input ~ 0
D_C_3
Text GLabel 2400 6150 2    50   Input ~ 0
D_C_4
Text GLabel 2400 6250 2    50   Input ~ 0
D_C_5
Text GLabel 2400 6350 2    50   Input ~ 0
D_C_6
Text GLabel 2400 6450 2    50   Input ~ 0
D_C_7
Text GLabel 2400 6550 2    50   Input ~ 0
D_C_8
Text GLabel 8500 1150 2    50   Input ~ 0
D_C_1
$Comp
L Transistor_Array:ULN2803A U2
U 1 1 5FBA05D1
P 4300 5400
F 0 "U2" H 4300 5967 50  0000 C CNN
F 1 "ULN2803A" H 4300 5876 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 4350 4750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 4400 5200 50  0001 C CNN
	1    4300 5400
	1    0    0    -1  
$EndComp
Text GLabel 5400 5900 2    50   Input ~ 0
DP
Text GLabel 5400 5800 2    50   Input ~ 0
G
Text GLabel 5400 5700 2    50   Input ~ 0
F
Text GLabel 5400 5600 2    50   Input ~ 0
E
Text GLabel 5400 5500 2    50   Input ~ 0
D
Text GLabel 5400 5400 2    50   Input ~ 0
C
Text GLabel 5400 5300 2    50   Input ~ 0
B
Text GLabel 5400 5200 2    50   Input ~ 0
A
Text GLabel 3900 5200 0    50   Input ~ 0
D0
Text GLabel 3900 5300 0    50   Input ~ 0
D1
Text GLabel 3900 5400 0    50   Input ~ 0
D2
Text GLabel 3900 5500 0    50   Input ~ 0
D3
Text GLabel 3900 5600 0    50   Input ~ 0
D4
Text GLabel 3900 5700 0    50   Input ~ 0
D5
Text GLabel 3900 5800 0    50   Input ~ 0
D6
Text GLabel 3900 5900 0    50   Input ~ 0
D7
$Comp
L power:GND #PWR012
U 1 1 5FBA4AE0
P 4300 6200
F 0 "#PWR012" H 4300 5950 50  0001 C CNN
F 1 "GND" H 4305 6027 50  0000 C CNN
F 2 "" H 4300 6200 50  0001 C CNN
F 3 "" H 4300 6200 50  0001 C CNN
	1    4300 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FBA5AE3
P 5050 5200
F 0 "R4" V 5100 5300 50  0000 L CNN
F 1 "R" V 5100 5000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5200 50  0001 C CNN
F 3 "~" H 5050 5200 50  0001 C CNN
	1    5050 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 5200 5400 5200
Wire Wire Line
	4900 5200 4700 5200
$Comp
L 74xx_IEEE:74HC238 U1
U 1 1 5FBCB8B1
P 1850 6050
F 0 "U1" H 1850 6566 50  0000 C CNN
F 1 "74HC238" H 1850 6475 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 1850 6050 50  0001 C CNN
F 3 "" H 1850 6050 50  0001 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FBCCCED
P 850 5950
F 0 "#PWR07" H 850 5700 50  0001 C CNN
F 1 "GND" H 855 5777 50  0000 C CNN
F 2 "" H 850 5950 50  0001 C CNN
F 3 "" H 850 5950 50  0001 C CNN
	1    850  5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FBCD767
P 1850 6750
F 0 "#PWR011" H 1850 6500 50  0001 C CNN
F 1 "GND" H 1855 6577 50  0000 C CNN
F 2 "" H 1850 6750 50  0001 C CNN
F 3 "" H 1850 6750 50  0001 C CNN
	1    1850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5950 850  5850
Wire Wire Line
	850  5850 1300 5850
Wire Wire Line
	1300 6000 1300 5850
Connection ~ 1300 5850
Wire Wire Line
	1850 5350 700  5350
Wire Wire Line
	700  5350 700  6150
Wire Wire Line
	700  6150 1300 6150
Connection ~ 1850 5350
Wire Wire Line
	1850 5350 1850 5750
Text GLabel 1300 6400 0    50   Input ~ 0
C1
Text GLabel 1300 6500 0    50   Input ~ 0
C2
Text GLabel 1300 6600 0    50   Input ~ 0
C3
Wire Notes Line
	3000 4800 3000 7200
Wire Notes Line
	3000 7200 500  7200
Wire Notes Line
	500  7200 500  4800
Wire Notes Line
	500  4800 3000 4800
Wire Notes Line
	6450 4800 6450 7400
Wire Notes Line
	6450 7400 3100 7400
Wire Notes Line
	3100 7400 3100 4800
Wire Notes Line
	3100 4800 6450 4800
Text Notes 900  7050 0    50   ~ 0
Digit Scan selection Decoder logic
Text Notes 3200 6650 0    50   ~ 0
Low Side, LED Segment Current Sink Driver
Text Notes 500  7050 0    50   ~ 0
High Side,
Text Notes 2450 5700 0    50   ~ 0
Digit Chose X
Text Notes 5750 4950 0    50   ~ 0
Segment Chose X
Wire Notes Line
	10950 3350 7400 3350
Wire Notes Line
	7400 3350 7400 600 
Wire Notes Line
	7400 600  10950 600 
Wire Notes Line
	10950 600  10950 3350
Wire Notes Line
	10950 3550 10950 6350
Wire Notes Line
	10950 6350 7250 6350
Wire Notes Line
	7250 6350 7250 3550
Wire Notes Line
	7250 3550 10950 3550
Text Notes 3150 7400 0    50   ~ 0
COMM is generally used during driving Relays, for LEDs not needed
Wire Notes Line
	1500 800  1500 4400
Wire Notes Line
	1500 4400 5700 4400
Wire Notes Line
	5700 4400 5700 800 
Wire Notes Line
	5700 800  1500 800 
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single-LED_DC-rescue Q1
U 1 1 5FAF9A47
P 8100 1250
AR Path="/5FAF9A47" Ref="Q1"  Part="1" 
AR Path="/5FC37B24/5FAF9A47" Ref="Q1"  Part="1" 
F 0 "Q1" H 8208 1303 60  0000 L CNN
F 1 "FDV304P" H 8208 1197 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8300 1450 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 1550 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 8300 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 8300 1750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8300 1850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8300 1950 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 8300 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 8300 2250 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 8300 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8300 2450 60  0001 L CNN "Status"
	1    8100 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5FD8E5D8
P 8100 950
F 0 "#PWR015" H 8100 800 50  0001 C CNN
F 1 "+5V" H 8115 1123 50  0000 C CNN
F 2 "" H 8100 950 50  0001 C CNN
F 3 "" H 8100 950 50  0001 C CNN
	1    8100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 950  8100 1050
Wire Wire Line
	8400 1150 8500 1150
Text GLabel 8100 1550 3    50   Output ~ 0
D_1
Wire Wire Line
	8100 1550 8100 1450
Text GLabel 10200 1150 2    50   Input ~ 0
D_C_2
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single-LED_DC-rescue Q?
U 1 1 5FDA9743
P 9800 1250
AR Path="/5FDA9743" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDA9743" Ref="Q5"  Part="1" 
F 0 "Q5" H 9908 1303 60  0000 L CNN
F 1 "FDV304P" H 9908 1197 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 10000 1450 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 1550 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10000 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10000 1750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10000 1850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10000 1950 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10000 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10000 2250 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10000 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10000 2450 60  0001 L CNN "Status"
	1    9800 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5FDA9749
P 9800 950
F 0 "#PWR019" H 9800 800 50  0001 C CNN
F 1 "+5V" H 9815 1123 50  0000 C CNN
F 2 "" H 9800 950 50  0001 C CNN
F 3 "" H 9800 950 50  0001 C CNN
	1    9800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 950  9800 1050
Wire Wire Line
	10100 1150 10200 1150
Text GLabel 9800 1550 3    50   Output ~ 0
D_2
Wire Wire Line
	9800 1550 9800 1450
Text GLabel 8500 2300 2    50   Input ~ 0
D_C_3
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single-LED_DC-rescue Q?
U 1 1 5FDAF306
P 8100 2400
AR Path="/5FDAF306" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDAF306" Ref="Q2"  Part="1" 
F 0 "Q2" H 8208 2453 60  0000 L CNN
F 1 "FDV304P" H 8208 2347 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8300 2600 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 2700 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 8300 2800 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 8300 2900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8300 3000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8300 3100 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 3200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 8300 3300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 8300 3400 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 8300 3500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8300 3600 60  0001 L CNN "Status"
	1    8100 2400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5FDAF30C
P 8100 2100
F 0 "#PWR016" H 8100 1950 50  0001 C CNN
F 1 "+5V" H 8115 2273 50  0000 C CNN
F 2 "" H 8100 2100 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2100 8100 2200
Wire Wire Line
	8400 2300 8500 2300
Text GLabel 8100 2700 3    50   Output ~ 0
D_3
Wire Wire Line
	8100 2700 8100 2600
Text GLabel 10200 2300 2    50   Input ~ 0
D_C_4
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single-LED_DC-rescue Q?
U 1 1 5FDAF320
P 9800 2400
AR Path="/5FDAF320" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDAF320" Ref="Q6"  Part="1" 
F 0 "Q6" H 9908 2453 60  0000 L CNN
F 1 "FDV304P" H 9908 2347 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 10000 2600 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 2700 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10000 2800 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10000 2900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10000 3000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10000 3100 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 3200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10000 3300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10000 3400 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10000 3500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10000 3600 60  0001 L CNN "Status"
	1    9800 2400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5FDAF326
P 9800 2100
F 0 "#PWR020" H 9800 1950 50  0001 C CNN
F 1 "+5V" H 9815 2273 50  0000 C CNN
F 2 "" H 9800 2100 50  0001 C CNN
F 3 "" H 9800 2100 50  0001 C CNN
	1    9800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2100 9800 2200
Wire Wire Line
	10100 2300 10200 2300
Text GLabel 9800 2700 3    50   Output ~ 0
D_4
Wire Wire Line
	9800 2700 9800 2600
Text GLabel 10200 5350 2    50   Input ~ 0
D_C_8
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single-LED_DC-rescue Q?
U 1 1 5FDB8021
P 9800 5450
AR Path="/5FDB8021" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDB8021" Ref="Q8"  Part="1" 
F 0 "Q8" H 9908 5503 60  0000 L CNN
F 1 "FDV304P" H 9908 5397 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 10000 5650 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 5750 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10000 5850 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10000 5950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10000 6050 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10000 6150 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 6250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10000 6350 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10000 6450 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10000 6550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10000 6650 60  0001 L CNN "Status"
	1    9800 5450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5FDB8027
P 9800 5150
F 0 "#PWR022" H 9800 5000 50  0001 C CNN
F 1 "+5V" H 9815 5323 50  0000 C CNN
F 2 "" H 9800 5150 50  0001 C CNN
F 3 "" H 9800 5150 50  0001 C CNN
	1    9800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5150 9800 5250
Wire Wire Line
	10100 5350 10200 5350
Text GLabel 9800 5750 3    50   Output ~ 0
D_8
Wire Wire Line
	9800 5750 9800 5650
$Comp
L power:+5V #PWR04
U 1 1 5FE8BCF7
P 1850 5300
F 0 "#PWR04" H 1850 5150 50  0001 C CNN
F 1 "+5V" H 1865 5473 50  0000 C CNN
F 2 "" H 1850 5300 50  0001 C CNN
F 3 "" H 1850 5300 50  0001 C CNN
	1    1850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5300 1850 5350
Wire Wire Line
	4300 6100 4300 6200
Wire Wire Line
	1850 6750 1850 6650
$Comp
L Device:R R5
U 1 1 5FE97B3D
P 5050 5300
F 0 "R5" V 5100 5400 50  0000 L CNN
F 1 "R" V 5100 5100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5300 50  0001 C CNN
F 3 "~" H 5050 5300 50  0001 C CNN
	1    5050 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FE98002
P 5050 5400
F 0 "R6" V 5100 5500 50  0000 L CNN
F 1 "R" V 5100 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5400 50  0001 C CNN
F 3 "~" H 5050 5400 50  0001 C CNN
	1    5050 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5FE98291
P 5050 5500
F 0 "R7" V 5100 5600 50  0000 L CNN
F 1 "R" V 5100 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5500 50  0001 C CNN
F 3 "~" H 5050 5500 50  0001 C CNN
	1    5050 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FE9840B
P 5050 5600
F 0 "R8" V 5100 5700 50  0000 L CNN
F 1 "R" V 5100 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5600 50  0001 C CNN
F 3 "~" H 5050 5600 50  0001 C CNN
	1    5050 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5FE98626
P 5050 5700
F 0 "R9" V 5100 5800 50  0000 L CNN
F 1 "R" V 5100 5500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5700 50  0001 C CNN
F 3 "~" H 5050 5700 50  0001 C CNN
	1    5050 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FE987A5
P 5050 5800
F 0 "R10" V 5100 5900 50  0000 L CNN
F 1 "R" V 5100 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5800 50  0001 C CNN
F 3 "~" H 5050 5800 50  0001 C CNN
	1    5050 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5FE98A0F
P 5050 5900
F 0 "R11" V 5100 6000 50  0000 L CNN
F 1 "R" V 5100 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 5900 50  0001 C CNN
F 3 "~" H 5050 5900 50  0001 C CNN
	1    5050 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5300 4900 5300
Wire Wire Line
	4900 5400 4700 5400
Wire Wire Line
	4700 5500 4900 5500
Wire Wire Line
	4900 5600 4700 5600
Wire Wire Line
	4700 5700 4900 5700
Wire Wire Line
	4900 5800 4700 5800
Wire Wire Line
	4700 5900 4900 5900
Wire Wire Line
	5200 5900 5400 5900
Wire Wire Line
	5400 5800 5200 5800
Wire Wire Line
	5200 5700 5400 5700
Wire Wire Line
	5400 5600 5200 5600
Wire Wire Line
	5200 5500 5400 5500
Wire Wire Line
	5400 5400 5200 5400
Wire Wire Line
	5200 5300 5400 5300
$Comp
L Connector:TestPoint TP1
U 1 1 5FEA91A7
P 4900 5100
F 0 "TP1" V 4854 5288 50  0000 L CNN
F 1 "TestPoint" V 4945 5288 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5100 5100 50  0001 C CNN
F 3 "~" H 5100 5100 50  0001 C CNN
	1    4900 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 5100 4700 5100
Text Notes 2350 4100 0    50   ~ 0
Seven Segment/LCD display Interface.
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 6068829A
P 2900 2950
F 0 "J1" H 2950 3567 50  0000 C CNN
F 1 "MCU interface" H 2950 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 2900 2950 50  0001 C CNN
F 3 "~" H 2900 2950 50  0001 C CNN
	1    2900 2950
	1    0    0    -1  
$EndComp
Text GLabel 2550 2650 0    50   Input ~ 0
D0
Text GLabel 3350 2650 2    50   Input ~ 0
D1
Text GLabel 2550 2750 0    50   Input ~ 0
D2
Text GLabel 3350 2750 2    50   Input ~ 0
D3
Text GLabel 2550 2850 0    50   Input ~ 0
D4
Text GLabel 3350 2850 2    50   Input ~ 0
D5
Text GLabel 2550 2950 0    50   Input ~ 0
D6
Text GLabel 3350 2950 2    50   Input ~ 0
D7
Text GLabel 2550 3050 0    50   Input ~ 0
C1
Text GLabel 3350 3050 2    50   Input ~ 0
C2
Text GLabel 2550 3150 0    50   Input ~ 0
C3
NoConn ~ 3200 3150
Text GLabel 2550 3250 0    50   Output ~ 0
KEY_ROW1
Text GLabel 3350 3250 2    50   Output ~ 0
KEY_ROW2
Text GLabel 2550 3350 0    50   Output ~ 0
KEY_COL1
Text GLabel 3350 3350 2    50   Output ~ 0
KEY_COL2
$Comp
L power:GND #PWR02
U 1 1 60691F3F
P 2550 3550
F 0 "#PWR02" H 2550 3300 50  0001 C CNN
F 1 "GND" H 2555 3377 50  0000 C CNN
F 2 "" H 2550 3550 50  0001 C CNN
F 3 "" H 2550 3550 50  0001 C CNN
	1    2550 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60692355
P 3350 3550
F 0 "#PWR05" H 3350 3300 50  0001 C CNN
F 1 "GND" H 3355 3377 50  0000 C CNN
F 2 "" H 3350 3550 50  0001 C CNN
F 3 "" H 3350 3550 50  0001 C CNN
	1    3350 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60692883
P 2550 2400
F 0 "#PWR01" H 2550 2250 50  0001 C CNN
F 1 "+5V" H 2565 2573 50  0000 C CNN
F 2 "" H 2550 2400 50  0001 C CNN
F 3 "" H 2550 2400 50  0001 C CNN
	1    2550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60692BF9
P 3350 2400
F 0 "#PWR03" H 3350 2250 50  0001 C CNN
F 1 "+5V" H 3365 2573 50  0000 C CNN
F 2 "" H 3350 2400 50  0001 C CNN
F 3 "" H 3350 2400 50  0001 C CNN
	1    3350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2400 3350 2550
Wire Wire Line
	3350 2550 3200 2550
Wire Wire Line
	2700 2550 2550 2550
Wire Wire Line
	2550 2550 2550 2400
Wire Wire Line
	2550 2650 2700 2650
Wire Wire Line
	2700 2750 2550 2750
Wire Wire Line
	2550 2850 2700 2850
Wire Wire Line
	2700 2950 2550 2950
Wire Wire Line
	2550 3050 2700 3050
Wire Wire Line
	2700 3150 2550 3150
Wire Wire Line
	2550 3250 2700 3250
Wire Wire Line
	2700 3350 2550 3350
Wire Wire Line
	2700 3450 2550 3450
Wire Wire Line
	2550 3450 2550 3550
Wire Wire Line
	3200 3450 3350 3450
Wire Wire Line
	3350 3450 3350 3550
Wire Wire Line
	3350 3350 3200 3350
Wire Wire Line
	3200 3250 3350 3250
Wire Wire Line
	3350 3050 3200 3050
Wire Wire Line
	3200 2950 3350 2950
Wire Wire Line
	3350 2850 3200 2850
Wire Wire Line
	3200 2750 3350 2750
Wire Wire Line
	3350 2650 3200 2650
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 606A139D
P 3550 2550
F 0 "#FLG0101" H 3550 2625 50  0001 C CNN
F 1 "PWR_FLAG" V 3550 2678 50  0000 L CNN
F 2 "" H 3550 2550 50  0001 C CNN
F 3 "~" H 3550 2550 50  0001 C CNN
	1    3550 2550
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 606A16E2
P 3550 3450
F 0 "#FLG0102" H 3550 3525 50  0001 C CNN
F 1 "PWR_FLAG" V 3550 3578 50  0000 L CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "~" H 3550 3450 50  0001 C CNN
	1    3550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 3450 3350 3450
Connection ~ 3350 3450
Wire Wire Line
	3350 2550 3550 2550
Connection ~ 3350 2550
Wire Wire Line
	8100 4600 8100 4500
Text GLabel 8100 4600 3    50   Output ~ 0
D_5
Wire Wire Line
	8400 4200 8500 4200
Wire Wire Line
	8100 4000 8100 4100
$Comp
L power:+5V #PWR017
U 1 1 5FDB7FD9
P 8100 4000
F 0 "#PWR017" H 8100 3850 50  0001 C CNN
F 1 "+5V" H 8115 4173 50  0000 C CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	1    0    0    -1  
$EndComp
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single-LED_DC-rescue Q?
U 1 1 5FDB7FD3
P 8100 4300
AR Path="/5FDB7FD3" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDB7FD3" Ref="Q3"  Part="1" 
F 0 "Q3" H 8208 4353 60  0000 L CNN
F 1 "FDV304P" H 8208 4247 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8300 4500 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 4600 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 8300 4700 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 8300 4800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8300 4900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8300 5000 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 5100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 8300 5200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 8300 5300 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 8300 5400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8300 5500 60  0001 L CNN "Status"
	1    8100 4300
	-1   0    0    1   
$EndComp
Text GLabel 8500 4200 2    50   Input ~ 0
D_C_5
$EndSCHEMATC
