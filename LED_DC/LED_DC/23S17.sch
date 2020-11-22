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
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q1
U 1 1 5FAF9A47
P 8700 1250
F 0 "Q1" H 8808 1303 60  0000 L CNN
F 1 "FDV304P" H 8808 1197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8900 1450 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8900 1550 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 8900 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 8900 1750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8900 1850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8900 1950 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8900 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 8900 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 8900 2250 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 8900 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 2450 60  0001 L CNN "Status"
	1    8700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5FAFAD5D
P 8400 1500
F 0 "R12" H 8470 1546 50  0000 L CNN
F 1 "R" H 8470 1455 50  0000 L CNN
F 2 "" V 8330 1500 50  0001 C CNN
F 3 "~" H 8400 1500 50  0001 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FAFB8EE
P 8400 1650
F 0 "#PWR014" H 8400 1400 50  0001 C CNN
F 1 "GND" H 8405 1477 50  0000 C CNN
F 2 "" H 8400 1650 50  0001 C CNN
F 3 "" H 8400 1650 50  0001 C CNN
	1    8400 1650
	1    0    0    -1  
$EndComp
Text GLabel 8700 750  2    50   Input ~ 0
D_1
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q5
U 1 1 5FB05BB1
P 10150 1250
F 0 "Q5" H 10258 1303 60  0000 L CNN
F 1 "FDV304P" H 10258 1197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10350 1450 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10350 1550 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10350 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10350 1750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10350 1850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10350 1950 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10350 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10350 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10350 2250 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10350 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10350 2450 60  0001 L CNN "Status"
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5FB06A95
P 9850 1500
F 0 "R16" H 9920 1546 50  0000 L CNN
F 1 "R" H 9920 1455 50  0000 L CNN
F 2 "" V 9780 1500 50  0001 C CNN
F 3 "~" H 9850 1500 50  0001 C CNN
	1    9850 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5FB06F37
P 9850 1650
F 0 "#PWR022" H 9850 1400 50  0001 C CNN
F 1 "GND" H 9855 1477 50  0000 C CNN
F 2 "" H 9850 1650 50  0001 C CNN
F 3 "" H 9850 1650 50  0001 C CNN
	1    9850 1650
	1    0    0    -1  
$EndComp
Text GLabel 10150 750  2    50   Input ~ 0
D_2
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q2
U 1 1 5FB08739
P 8700 2600
F 0 "Q2" H 8808 2653 60  0000 L CNN
F 1 "FDV304P" H 8808 2547 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8900 2800 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8900 2900 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 8900 3000 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 8900 3100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8900 3200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8900 3300 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 8900 3400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 8900 3500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 8900 3600 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 8900 3700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8900 3800 60  0001 L CNN "Status"
	1    8700 2600
	1    0    0    -1  
$EndComp
Text GLabel 8700 2100 2    50   Input ~ 0
D_3
$Comp
L Device:R R13
U 1 1 5FB0AC5A
P 8400 2850
F 0 "R13" H 8470 2896 50  0000 L CNN
F 1 "10K" H 8470 2805 50  0000 L CNN
F 2 "" V 8330 2850 50  0001 C CNN
F 3 "~" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FB0B088
P 8400 3000
F 0 "#PWR015" H 8400 2750 50  0001 C CNN
F 1 "GND" H 8405 2827 50  0000 C CNN
F 2 "" H 8400 3000 50  0001 C CNN
F 3 "" H 8400 3000 50  0001 C CNN
	1    8400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5FB0BD6A
P 8700 2800
F 0 "#PWR019" H 8700 2650 50  0001 C CNN
F 1 "+3.3V" H 8715 2973 50  0000 C CNN
F 2 "" H 8700 2800 50  0001 C CNN
F 3 "" H 8700 2800 50  0001 C CNN
	1    8700 2800
	-1   0    0    1   
$EndComp
Text GLabel 10150 2150 2    50   Input ~ 0
D_4
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q6
U 1 1 5FB0C211
P 10150 2650
F 0 "Q6" H 10258 2703 60  0000 L CNN
F 1 "FDV304P" H 10258 2597 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10350 2850 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10350 2950 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10350 3050 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10350 3150 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10350 3250 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10350 3350 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10350 3450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10350 3550 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10350 3650 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10350 3750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10350 3850 60  0001 L CNN "Status"
	1    10150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR027
U 1 1 5FB10AAF
P 10150 2850
F 0 "#PWR027" H 10150 2700 50  0001 C CNN
F 1 "+3.3V" H 10165 3023 50  0000 C CNN
F 2 "" H 10150 2850 50  0001 C CNN
F 3 "" H 10150 2850 50  0001 C CNN
	1    10150 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5FB10EEA
P 9850 2900
F 0 "R17" H 9920 2946 50  0000 L CNN
F 1 "10K" H 9920 2855 50  0000 L CNN
F 2 "" V 9780 2900 50  0001 C CNN
F 3 "~" H 9850 2900 50  0001 C CNN
	1    9850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5FB113E7
P 9850 3050
F 0 "#PWR023" H 9850 2800 50  0001 C CNN
F 1 "GND" H 9855 2877 50  0000 C CNN
F 2 "" H 9850 3050 50  0001 C CNN
F 3 "" H 9850 3050 50  0001 C CNN
	1    9850 3050
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q3
U 1 1 5FB123A4
P 8800 4250
F 0 "Q3" H 8908 4303 60  0000 L CNN
F 1 "FDV304P" H 8908 4197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9000 4450 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 9000 4550 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 9000 4650 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 9000 4750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9000 4850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9000 4950 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 9000 5050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 9000 5150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 9000 5250 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 9000 5350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9000 5450 60  0001 L CNN "Status"
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5FB139BC
P 8500 4500
F 0 "R14" H 8570 4546 50  0000 L CNN
F 1 "10K" H 8570 4455 50  0000 L CNN
F 2 "" V 8430 4500 50  0001 C CNN
F 3 "~" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FB14547
P 8500 4650
F 0 "#PWR016" H 8500 4400 50  0001 C CNN
F 1 "GND" H 8505 4477 50  0000 C CNN
F 2 "" H 8500 4650 50  0001 C CNN
F 3 "" H 8500 4650 50  0001 C CNN
	1    8500 4650
	1    0    0    -1  
$EndComp
Text GLabel 8800 3750 2    50   Input ~ 0
D_5
$Comp
L power:+3.3V #PWR020
U 1 1 5FB14E4C
P 8800 4450
F 0 "#PWR020" H 8800 4300 50  0001 C CNN
F 1 "+3.3V" H 8815 4623 50  0000 C CNN
F 2 "" H 8800 4450 50  0001 C CNN
F 3 "" H 8800 4450 50  0001 C CNN
	1    8800 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 750  8700 1050
Wire Wire Line
	8700 2100 8700 2400
Wire Wire Line
	10150 2150 10150 2450
Wire Wire Line
	10150 750  10150 1050
Wire Wire Line
	8800 3750 8800 4050
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q7
U 1 1 5FB1877E
P 10300 4250
F 0 "Q7" H 10408 4303 60  0000 L CNN
F 1 "FDV304P" H 10408 4197 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10500 4450 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10500 4550 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10500 4650 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10500 4750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10500 4850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10500 4950 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10500 5050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10500 5150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10500 5250 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10500 5350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10500 5450 60  0001 L CNN "Status"
	1    10300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5FB1974C
P 10000 4500
F 0 "R18" H 10070 4546 50  0000 L CNN
F 1 "10K" H 10070 4455 50  0000 L CNN
F 2 "" V 9930 4500 50  0001 C CNN
F 3 "~" H 10000 4500 50  0001 C CNN
	1    10000 4500
	1    0    0    -1  
$EndComp
Text GLabel 10300 3650 2    50   Input ~ 0
D_6
Wire Wire Line
	10300 3650 10300 4050
$Comp
L power:GND #PWR024
U 1 1 5FB1B7CB
P 10000 4650
F 0 "#PWR024" H 10000 4400 50  0001 C CNN
F 1 "GND" H 10005 4477 50  0000 C CNN
F 2 "" H 10000 4650 50  0001 C CNN
F 3 "" H 10000 4650 50  0001 C CNN
	1    10000 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5FB1BB13
P 10300 4450
F 0 "#PWR028" H 10300 4300 50  0001 C CNN
F 1 "+3.3V" H 10315 4623 50  0000 C CNN
F 2 "" H 10300 4450 50  0001 C CNN
F 3 "" H 10300 4450 50  0001 C CNN
	1    10300 4450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 5FB079CC
P 10150 1450
F 0 "#PWR026" H 10150 1300 50  0001 C CNN
F 1 "+3.3V" H 10165 1623 50  0000 C CNN
F 2 "" H 10150 1450 50  0001 C CNN
F 3 "" H 10150 1450 50  0001 C CNN
	1    10150 1450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 5FAFDDDF
P 8700 1450
F 0 "#PWR018" H 8700 1300 50  0001 C CNN
F 1 "+3.3V" H 8715 1623 50  0000 C CNN
F 2 "" H 8700 1450 50  0001 C CNN
F 3 "" H 8700 1450 50  0001 C CNN
	1    8700 1450
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
Text GLabel 8200 1350 0    50   Input ~ 0
D_C_1
Wire Wire Line
	8200 1350 8400 1350
Connection ~ 8400 1350
Text GLabel 9650 1350 0    50   Input ~ 0
D_C_2
Wire Wire Line
	9650 1350 9850 1350
Connection ~ 9850 1350
Text GLabel 8200 2700 0    50   Input ~ 0
D_C_3
Wire Wire Line
	8200 2700 8400 2700
Connection ~ 8400 2700
Text GLabel 9700 2750 0    50   Input ~ 0
D_C_4
Wire Wire Line
	9700 2750 9850 2750
Connection ~ 9850 2750
Text GLabel 8300 4350 0    50   Input ~ 0
D_C_5
Wire Wire Line
	8300 4350 8500 4350
Connection ~ 8500 4350
Text GLabel 9800 4350 0    50   Input ~ 0
D_C_6
Wire Wire Line
	9800 4350 10000 4350
Connection ~ 10000 4350
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q4
U 1 1 5FB444D1
P 8850 5600
F 0 "Q4" H 8958 5653 60  0000 L CNN
F 1 "FDV304P" H 8958 5547 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9050 5800 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 9050 5900 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 9050 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 9050 6100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9050 6200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9050 6300 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 9050 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 9050 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 9050 6600 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 9050 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9050 6800 60  0001 L CNN "Status"
	1    8850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5FB454EF
P 8850 5800
F 0 "#PWR021" H 8850 5650 50  0001 C CNN
F 1 "+3.3V" H 8865 5973 50  0000 C CNN
F 2 "" H 8850 5800 50  0001 C CNN
F 3 "" H 8850 5800 50  0001 C CNN
	1    8850 5800
	-1   0    0    1   
$EndComp
Text GLabel 8850 5100 2    50   Input ~ 0
D_7
Wire Wire Line
	8850 5100 8850 5400
$Comp
L Device:R R15
U 1 1 5FB4648E
P 8550 5850
F 0 "R15" H 8620 5896 50  0000 L CNN
F 1 "10K" H 8620 5805 50  0000 L CNN
F 2 "" V 8480 5850 50  0001 C CNN
F 3 "~" H 8550 5850 50  0001 C CNN
	1    8550 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FB468AD
P 8550 6000
F 0 "#PWR017" H 8550 5750 50  0001 C CNN
F 1 "GND" H 8555 5827 50  0000 C CNN
F 2 "" H 8550 6000 50  0001 C CNN
F 3 "" H 8550 6000 50  0001 C CNN
	1    8550 6000
	1    0    0    -1  
$EndComp
Text GLabel 8300 5700 0    50   Input ~ 0
D_C_7
Wire Wire Line
	8300 5700 8550 5700
Connection ~ 8550 5700
$Comp
L dk_Transistors-FETs-MOSFETs-Single:DMG2305UX-13 Q8
U 1 1 5FB482B8
P 10350 5600
F 0 "Q8" H 10458 5653 60  0000 L CNN
F 1 "FDV304P" H 10458 5547 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10550 5800 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10550 5900 60  0001 L CNN
F 4 "DMG2305UX-13DICT-ND" H 10550 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "DMG2305UX-13" H 10550 6100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10550 6200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10550 6300 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf" H 10550 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/DMG2305UX-13/DMG2305UX-13DICT-ND/4251589" H 10550 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 20V 4.2A SOT23" H 10550 6600 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 10550 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10550 6800 60  0001 L CNN "Status"
	1    10350 5600
	1    0    0    -1  
$EndComp
Text GLabel 10350 5050 2    50   Input ~ 0
D_8
$Comp
L Device:R R19
U 1 1 5FB4937F
P 10050 5850
F 0 "R19" H 10120 5896 50  0000 L CNN
F 1 "10K" H 10120 5805 50  0000 L CNN
F 2 "" V 9980 5850 50  0001 C CNN
F 3 "~" H 10050 5850 50  0001 C CNN
	1    10050 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5FB4972D
P 10050 6000
F 0 "#PWR025" H 10050 5750 50  0001 C CNN
F 1 "GND" H 10055 5827 50  0000 C CNN
F 2 "" H 10050 6000 50  0001 C CNN
F 3 "" H 10050 6000 50  0001 C CNN
	1    10050 6000
	1    0    0    -1  
$EndComp
Text GLabel 9800 5700 0    50   Input ~ 0
D_C_8
Wire Wire Line
	9800 5700 10050 5700
Connection ~ 10050 5700
$Comp
L power:+3.3V #PWR029
U 1 1 5FB4A1FF
P 10350 5800
F 0 "#PWR029" H 10350 5650 50  0001 C CNN
F 1 "+3.3V" H 10365 5973 50  0000 C CNN
F 2 "" H 10350 5800 50  0001 C CNN
F 3 "" H 10350 5800 50  0001 C CNN
	1    10350 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 5050 10350 5400
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
F 0 "R4" H 5570 5246 50  0000 L CNN
F 1 "R" H 5570 5155 50  0000 L CNN
F 2 "" V 5430 5200 50  0001 C CNN
F 3 "~" H 5500 5200 50  0001 C CNN
	1    5500 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FBA8E28
P 5500 5450
F 0 "R5" H 5570 5496 50  0000 L CNN
F 1 "R" H 5570 5405 50  0000 L CNN
F 2 "" V 5430 5450 50  0001 C CNN
F 3 "~" H 5500 5450 50  0001 C CNN
	1    5500 5450
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
	5650 5450 5900 5450
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
	5350 5450 5300 5450
Wire Wire Line
	5300 5450 5300 5300
Wire Wire Line
	5300 5300 4700 5300
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
P 2100 2700
F 0 "DS?" H 2100 3681 50  0000 C CNN
F 1 "HY1602E" H 2100 3590 50  0000 C CNN
F 2 "Display:HY1602E" H 2100 1800 50  0001 C CIN
F 3 "http://www.icbank.com/data/ICBShop/board/HY1602E.pdf" H 2300 2800 50  0001 C CNN
	1    2100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FC0566D
P 2100 1200
F 0 "#PWR?" H 2100 1050 50  0001 C CNN
F 1 "+5V" H 2115 1373 50  0000 C CNN
F 2 "" H 2100 1200 50  0001 C CNN
F 3 "" H 2100 1200 50  0001 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1200 2100 1900
$Comp
L power:GND #PWR?
U 1 1 5FC07527
P 2100 3950
F 0 "#PWR?" H 2100 3700 50  0001 C CNN
F 1 "GND" H 2105 3777 50  0000 C CNN
F 2 "" H 2100 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3950 2100 3500
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
$EndSCHEMATC
