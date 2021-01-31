EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6950 4450 0    50   Output ~ 0
KEY_ROW1
Text GLabel 6950 4550 0    50   Output ~ 0
KEY_ROW2
Text GLabel 6950 4650 0    50   Output ~ 0
KEY_COL1
Text GLabel 6950 4750 0    50   Output ~ 0
KEY_COL2
Wire Wire Line
	6950 4450 7200 4450
Wire Wire Line
	7200 4550 6950 4550
Wire Wire Line
	7200 4750 6950 4750
Wire Notes Line
	8550 4300 8550 5700
Wire Notes Line
	8550 5700 6250 5700
Wire Notes Line
	6250 5700 6250 4300
Wire Notes Line
	6250 4300 8550 4300
Wire Wire Line
	7200 4650 6950 4650
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5FF5004C
P 8300 1500
F 0 "H1" H 8400 1503 50  0000 L CNN
F 1 "MountingHole_Pad" H 8400 1458 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8300 1500 50  0001 C CNN
F 3 "~" H 8300 1500 50  0001 C CNN
	1    8300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5FF505F7
P 8300 1750
F 0 "#PWR023" H 8300 1500 50  0001 C CNN
F 1 "GND" H 8305 1577 50  0000 C CNN
F 2 "" H 8300 1750 50  0001 C CNN
F 3 "" H 8300 1750 50  0001 C CNN
	1    8300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1750 8300 1600
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5FF5174B
P 8700 1500
F 0 "H2" H 8800 1503 50  0000 L CNN
F 1 "MountingHole_Pad" H 8800 1458 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 8700 1500 50  0001 C CNN
F 3 "~" H 8700 1500 50  0001 C CNN
	1    8700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5FF51751
P 8700 1750
F 0 "#PWR024" H 8700 1500 50  0001 C CNN
F 1 "GND" H 8705 1577 50  0000 C CNN
F 2 "" H 8700 1750 50  0001 C CNN
F 3 "" H 8700 1750 50  0001 C CNN
	1    8700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1750 8700 1600
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5FF524B0
P 9100 1500
F 0 "H3" H 9200 1503 50  0000 L CNN
F 1 "MountingHole_Pad" H 9200 1458 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 9100 1500 50  0001 C CNN
F 3 "~" H 9100 1500 50  0001 C CNN
	1    9100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5FF524B6
P 9100 1750
F 0 "#PWR025" H 9100 1500 50  0001 C CNN
F 1 "GND" H 9105 1577 50  0000 C CNN
F 2 "" H 9100 1750 50  0001 C CNN
F 3 "" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1750 9100 1600
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5FF5377F
P 9450 1500
F 0 "H4" H 9550 1503 50  0000 L CNN
F 1 "MountingHole_Pad" H 9550 1458 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 9450 1500 50  0001 C CNN
F 3 "~" H 9450 1500 50  0001 C CNN
	1    9450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FF53785
P 9450 1750
F 0 "#PWR026" H 9450 1500 50  0001 C CNN
F 1 "GND" H 9455 1577 50  0000 C CNN
F 2 "" H 9450 1750 50  0001 C CNN
F 3 "" H 9450 1750 50  0001 C CNN
	1    9450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1750 9450 1600
Wire Notes Line
	9800 1300 9800 2100
Wire Notes Line
	9800 2100 8050 2100
Wire Notes Line
	8050 2100 8050 1300
Wire Notes Line
	8050 1300 9800 1300
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5FEC60A3
P 7400 4650
F 0 "J1" H 7480 4642 50  0000 L CNN
F 1 "Keypad" H 7480 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7400 4650 50  0001 C CNN
F 3 "~" H 7400 4650 50  0001 C CNN
	1    7400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6016BEBF
P 7100 4950
F 0 "#PWR0101" H 7100 4700 50  0001 C CNN
F 1 "GND" H 7105 4777 50  0000 C CNN
F 2 "" H 7100 4950 50  0001 C CNN
F 3 "" H 7100 4950 50  0001 C CNN
	1    7100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4950 7100 4850
Wire Wire Line
	7100 4850 7200 4850
Text Notes 6750 5400 0    50   ~ 0
Keypad Interface connector.
$EndSCHEMATC
