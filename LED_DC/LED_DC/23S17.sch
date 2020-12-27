EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L power:VDD #PWR08
U 1 1 5FC397FF
P 1200 1100
F 0 "#PWR08" H 1200 950 50  0001 C CNN
F 1 "VDD" H 1215 1273 50  0000 C CNN
F 2 "" H 1200 1100 50  0001 C CNN
F 3 "" H 1200 1100 50  0001 C CNN
	1    1200 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5FC3A7A0
P 1200 1100
F 0 "#PWR09" H 1200 950 50  0001 C CNN
F 1 "+3.3V" H 1215 1273 50  0000 C CNN
F 2 "" H 1200 1100 50  0001 C CNN
F 3 "" H 1200 1100 50  0001 C CNN
	1    1200 1100
	-1   0    0    1   
$EndComp
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
F 2 "" H 4350 4750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 4400 5200 50  0001 C CNN
	1    4300 5400
	1    0    0    -1  
$EndComp
Text GLabel 5950 7200 2    50   Input ~ 0
DP
Text GLabel 5950 6900 2    50   Input ~ 0
G
Text GLabel 5950 6650 2    50   Input ~ 0
F
Text GLabel 5900 6300 2    50   Input ~ 0
E
Text GLabel 5900 6000 2    50   Input ~ 0
D
Text GLabel 5900 5700 2    50   Input ~ 0
C
Text GLabel 5900 5450 2    50   Input ~ 0
B
Text GLabel 5900 5200 2    50   Input ~ 0
A
Text GLabel 3900 5200 0    50   Input ~ 0
I_A
Text GLabel 3900 5300 0    50   Input ~ 0
I_B
Text GLabel 3900 5400 0    50   Input ~ 0
I_C
Text GLabel 3900 5500 0    50   Input ~ 0
I_D
Text GLabel 3900 5600 0    50   Input ~ 0
I_E
Text GLabel 3900 5700 0    50   Input ~ 0
I_F
Text GLabel 3900 5800 0    50   Input ~ 0
I_G
Text GLabel 3900 5900 0    50   Input ~ 0
I_DP
$Comp
L power:GND #PWR012
U 1 1 5FBA4AE0
P 4300 6100
F 0 "#PWR012" H 4300 5850 50  0001 C CNN
F 1 "GND" H 4305 5927 50  0000 C CNN
F 2 "" H 4300 6100 50  0001 C CNN
F 3 "" H 4300 6100 50  0001 C CNN
	1    4300 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FBA5AE3
P 5500 5200
F 0 "R4" V 5550 5300 50  0000 L CNN
F 1 "R" V 5550 5000 50  0000 L CNN
F 2 "" V 5430 5200 50  0001 C CNN
F 3 "~" H 5500 5200 50  0001 C CNN
	1    5500 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FBA8E28
P 5500 5300
F 0 "R5" H 5570 5346 50  0000 L CNN
F 1 "R" H 5570 5255 50  0000 L CNN
F 2 "" V 5430 5300 50  0001 C CNN
F 3 "~" H 5500 5300 50  0001 C CNN
	1    5500 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FBA9874
P 5500 5700
F 0 "R6" H 5570 5746 50  0000 L CNN
F 1 "R" H 5570 5655 50  0000 L CNN
F 2 "" V 5430 5700 50  0001 C CNN
F 3 "~" H 5500 5700 50  0001 C CNN
	1    5500 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5FBA9AB2
P 5500 6000
F 0 "R7" H 5570 6046 50  0000 L CNN
F 1 "R" H 5570 5955 50  0000 L CNN
F 2 "" V 5430 6000 50  0001 C CNN
F 3 "~" H 5500 6000 50  0001 C CNN
	1    5500 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FBA9D00
P 5500 6300
F 0 "R8" H 5570 6346 50  0000 L CNN
F 1 "R" H 5570 6255 50  0000 L CNN
F 2 "" V 5430 6300 50  0001 C CNN
F 3 "~" H 5500 6300 50  0001 C CNN
	1    5500 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5FBA9EA1
P 5550 6650
F 0 "R9" H 5620 6696 50  0000 L CNN
F 1 "R" H 5620 6605 50  0000 L CNN
F 2 "" V 5480 6650 50  0001 C CNN
F 3 "~" H 5550 6650 50  0001 C CNN
	1    5550 6650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FBAA067
P 5550 6900
F 0 "R10" H 5620 6946 50  0000 L CNN
F 1 "R" H 5620 6855 50  0000 L CNN
F 2 "" V 5480 6900 50  0001 C CNN
F 3 "~" H 5550 6900 50  0001 C CNN
	1    5550 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5FBAA1DE
P 5550 7200
F 0 "R11" H 5620 7246 50  0000 L CNN
F 1 "R" H 5620 7155 50  0000 L CNN
F 2 "" V 5480 7200 50  0001 C CNN
F 3 "~" H 5550 7200 50  0001 C CNN
	1    5550 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 5200 5900 5200
Wire Wire Line
	5650 5300 5900 5450
Wire Wire Line
	5650 5700 5900 5700
Wire Wire Line
	5650 6000 5900 6000
Wire Wire Line
	5650 6300 5900 6300
Wire Wire Line
	5700 6650 5950 6650
Wire Wire Line
	5700 6900 5950 6900
Wire Wire Line
	5700 7200 5950 7200
Wire Wire Line
	5350 5200 4700 5200
Wire Wire Line
	5350 5700 5200 5700
Wire Wire Line
	5200 5700 5200 5400
Wire Wire Line
	5200 5400 4700 5400
Wire Wire Line
	5350 6000 5150 6000
Wire Wire Line
	5150 6000 5150 5500
Wire Wire Line
	5150 5500 4700 5500
Wire Wire Line
	5350 6300 5100 6300
Wire Wire Line
	5100 6300 5100 5600
Wire Wire Line
	5100 5600 4700 5600
Wire Wire Line
	5400 6650 5050 6650
Wire Wire Line
	5050 6650 5050 5700
Wire Wire Line
	5050 5700 4700 5700
Wire Wire Line
	5400 6900 5000 6900
Wire Wire Line
	5000 6900 5000 5800
Wire Wire Line
	5000 5800 4700 5800
Wire Wire Line
	5400 7200 4950 7200
Wire Wire Line
	4950 7200 4950 5900
Wire Wire Line
	4950 5900 4700 5900
$Comp
L 74xx_IEEE:74HC238 U1
U 1 1 5FBCB8B1
P 1850 6050
F 0 "U1" H 1850 6566 50  0000 C CNN
F 1 "74HC238" H 1850 6475 50  0000 C CNN
F 2 "" H 1850 6050 50  0001 C CNN
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
P 1850 6650
F 0 "#PWR011" H 1850 6400 50  0001 C CNN
F 1 "GND" H 1855 6477 50  0000 C CNN
F 2 "" H 1850 6650 50  0001 C CNN
F 3 "" H 1850 6650 50  0001 C CNN
	1    1850 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5FBCDAC1
P 1850 5200
F 0 "#PWR010" H 1850 5050 50  0001 C CNN
F 1 "+3.3V" H 1865 5373 50  0000 C CNN
F 2 "" H 1850 5200 50  0001 C CNN
F 3 "" H 1850 5200 50  0001 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5200 1850 5350
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
I1
Text GLabel 1300 6500 0    50   Input ~ 0
I2
Text GLabel 1300 6600 0    50   Input ~ 0
I3
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
NoConn ~ 4700 5100
Text Notes 3150 7400 0    50   ~ 0
COMM is generally used during driving Relays, for LEDs not needed
$Comp
L Display_Character:HY1602E DS?
U 1 1 5FC030D8
P 2850 2700
F 0 "DS?" H 3000 3550 50  0000 C CNN
F 1 "HY1602E" H 3050 3450 50  0000 C CNN
F 2 "Display:HY1602E" H 2850 1800 50  0001 C CIN
F 3 "http://www.icbank.com/data/ICBShop/board/HY1602E.pdf" H 3050 2800 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FC0566D
P 2850 1850
F 0 "#PWR?" H 2850 1700 50  0001 C CNN
F 1 "+5V" H 2865 2023 50  0000 C CNN
F 2 "" H 2850 1850 50  0001 C CNN
F 3 "" H 2850 1850 50  0001 C CNN
	1    2850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1850 2850 1900
$Comp
L power:GND #PWR?
U 1 1 5FC07527
P 2850 3550
F 0 "#PWR?" H 2850 3300 50  0001 C CNN
F 1 "GND" H 2855 3377 50  0000 C CNN
F 2 "" H 2850 3550 50  0001 C CNN
F 3 "" H 2850 3550 50  0001 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
Wire Notes Line
	1500 800  1500 4400
Wire Notes Line
	1500 4400 5700 4400
Wire Notes Line
	5700 4400 5700 800 
Wire Notes Line
	5700 800  1500 800 
Text Notes 3350 2600 0    50   ~ 0
Future Support For LCD Display.
Wire Wire Line
	2850 3500 2850 3550
Wire Wire Line
	4700 5300 5350 5300
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q1
U 1 1 5FAF9A47
P 8100 1250
AR Path="/5FAF9A47" Ref="Q1"  Part="1" 
AR Path="/5FC37B24/5FAF9A47" Ref="Q1"  Part="1" 
F 0 "Q1" H 8208 1303 60  0000 L CNN
F 1 "FDV304P" H 8208 1197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8300 1450 60  0001 L CNN
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
L power:+5V #PWR?
U 1 1 5FD8E5D8
P 8100 950
F 0 "#PWR?" H 8100 800 50  0001 C CNN
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
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDA9743
P 9800 1250
AR Path="/5FDA9743" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDA9743" Ref="Q?"  Part="1" 
F 0 "Q?" H 9908 1303 60  0000 L CNN
F 1 "FDV304P" H 9908 1197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10000 1450 60  0001 L CNN
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
L power:+5V #PWR?
U 1 1 5FDA9749
P 9800 950
F 0 "#PWR?" H 9800 800 50  0001 C CNN
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
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDAF306
P 8100 2400
AR Path="/5FDAF306" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDAF306" Ref="Q?"  Part="1" 
F 0 "Q?" H 8208 2453 60  0000 L CNN
F 1 "FDV304P" H 8208 2347 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8300 2600 60  0001 L CNN
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
L power:+5V #PWR?
U 1 1 5FDAF30C
P 8100 2100
F 0 "#PWR?" H 8100 1950 50  0001 C CNN
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
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDAF320
P 9800 2400
AR Path="/5FDAF320" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDAF320" Ref="Q?"  Part="1" 
F 0 "Q?" H 9908 2453 60  0000 L CNN
F 1 "FDV304P" H 9908 2347 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10000 2600 60  0001 L CNN
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
L power:+5V #PWR?
U 1 1 5FDAF326
P 9800 2100
F 0 "#PWR?" H 9800 1950 50  0001 C CNN
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
Text GLabel 8500 4200 2    50   Input ~ 0
D_C_5
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDB7FD3
P 8100 4300
AR Path="/5FDB7FD3" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDB7FD3" Ref="Q?"  Part="1" 
F 0 "Q?" H 8208 4353 60  0000 L CNN
F 1 "FDV304P" H 8208 4247 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8300 4500 60  0001 L CNN
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
$Comp
L power:+5V #PWR?
U 1 1 5FDB7FD9
P 8100 4000
F 0 "#PWR?" H 8100 3850 50  0001 C CNN
F 1 "+5V" H 8115 4173 50  0000 C CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4000 8100 4100
Wire Wire Line
	8400 4200 8500 4200
Text GLabel 8100 4600 3    50   Output ~ 0
D_5
Wire Wire Line
	8100 4600 8100 4500
Text GLabel 10200 4200 2    50   Input ~ 0
D_C_6
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDB7FED
P 9800 4300
AR Path="/5FDB7FED" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDB7FED" Ref="Q?"  Part="1" 
F 0 "Q?" H 9908 4353 60  0000 L CNN
F 1 "FDV304P" H 9908 4247 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10000 4500 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 4600 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10000 4700 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10000 4800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10000 4900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10000 5000 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10000 5100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10000 5200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10000 5300 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10000 5400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10000 5500 60  0001 L CNN "Status"
	1    9800 4300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FDB7FF3
P 9800 4000
F 0 "#PWR?" H 9800 3850 50  0001 C CNN
F 1 "+5V" H 9815 4173 50  0000 C CNN
F 2 "" H 9800 4000 50  0001 C CNN
F 3 "" H 9800 4000 50  0001 C CNN
	1    9800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4000 9800 4100
Wire Wire Line
	10100 4200 10200 4200
Text GLabel 9800 4600 3    50   Output ~ 0
D_6
Wire Wire Line
	9800 4600 9800 4500
Text GLabel 8500 5350 2    50   Input ~ 0
D_C_7
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDB8007
P 8100 5450
AR Path="/5FDB8007" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDB8007" Ref="Q?"  Part="1" 
F 0 "Q?" H 8208 5503 60  0000 L CNN
F 1 "FDV304P" H 8208 5397 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8300 5650 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 5750 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 8300 5850 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 8300 5950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8300 6050 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8300 6150 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8300 6250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 8300 6350 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 8300 6450 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 8300 6550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8300 6650 60  0001 L CNN "Status"
	1    8100 5450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FDB800D
P 8100 5150
F 0 "#PWR?" H 8100 5000 50  0001 C CNN
F 1 "+5V" H 8115 5323 50  0000 C CNN
F 2 "" H 8100 5150 50  0001 C CNN
F 3 "" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5150 8100 5250
Wire Wire Line
	8400 5350 8500 5350
Text GLabel 8100 5750 3    50   Output ~ 0
D_7
Wire Wire Line
	8100 5750 8100 5650
Text GLabel 10200 5350 2    50   Input ~ 0
D_C_8
$Comp
L LED_DC-rescue:DMG2305UX-13-dk_Transistors-FETs-MOSFETs-Single Q?
U 1 1 5FDB8021
P 9800 5450
AR Path="/5FDB8021" Ref="Q?"  Part="1" 
AR Path="/5FC37B24/5FDB8021" Ref="Q?"  Part="1" 
F 0 "Q?" H 9908 5503 60  0000 L CNN
F 1 "FDV304P" H 9908 5397 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10000 5650 60  0001 L CNN
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
L power:+5V #PWR?
U 1 1 5FDB8027
P 9800 5150
F 0 "#PWR?" H 9800 5000 50  0001 C CNN
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
Text GLabel 2350 2100 0    50   Input ~ 0
C1
Text GLabel 2350 2300 0    50   Input ~ 0
C2
Text GLabel 2350 2400 0    50   Input ~ 0
C3
Text GLabel 2350 2600 0    50   Input ~ 0
D0
Text GLabel 2350 2700 0    50   Input ~ 0
D1
Text GLabel 2350 2800 0    50   Input ~ 0
D2
Text GLabel 2350 2900 0    50   Input ~ 0
D3
Text GLabel 2350 3000 0    50   Input ~ 0
D4
Text GLabel 2350 3100 0    50   Input ~ 0
D5
Text GLabel 2350 3200 0    50   Input ~ 0
D6
Text GLabel 2350 3300 0    50   Input ~ 0
D7
Wire Wire Line
	2350 2100 2450 2100
Wire Wire Line
	2450 2300 2350 2300
Wire Wire Line
	2350 2400 2450 2400
Wire Wire Line
	2450 2600 2350 2600
Wire Wire Line
	2350 2700 2450 2700
Wire Wire Line
	2450 2800 2350 2800
Wire Wire Line
	2350 2900 2450 2900
Wire Wire Line
	2450 3000 2350 3000
Wire Wire Line
	2350 3100 2450 3100
Wire Wire Line
	2450 3200 2350 3200
Wire Wire Line
	2350 3300 2450 3300
$EndSCHEMATC
