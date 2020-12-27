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
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5FB947BB
P 2200 4650
F 0 "J2" H 2250 5067 50  0000 C CNN
F 1 "Display Port GPIO" H 2250 4976 50  0000 C CNN
F 2 "" H 2200 4650 50  0001 C CNN
F 3 "~" H 2200 4650 50  0001 C CNN
	1    2200 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5FB95AE3
P 4300 4600
F 0 "J3" H 4380 4642 50  0000 L CNN
F 1 "Conn_01x05" H 4380 4551 50  0000 L CNN
F 2 "" H 4300 4600 50  0001 C CNN
F 3 "~" H 4300 4600 50  0001 C CNN
	1    4300 4600
	1    0    0    -1  
$EndComp
Text GLabel 2000 4550 0    50   Output ~ 0
D1
Text GLabel 2000 4650 0    50   Output ~ 0
D3
Text GLabel 2000 4750 0    50   Output ~ 0
D5
Text GLabel 2000 4850 0    50   Output ~ 0
D7
Text GLabel 2500 4450 2    50   Output ~ 0
D0
Text GLabel 2500 4550 2    50   Output ~ 0
D2
Text GLabel 2500 4650 2    50   Output ~ 0
D4
Text GLabel 2500 4750 2    50   Output ~ 0
D6
$Comp
L power:GND #PWR03
U 1 1 5FB98766
P 4000 4850
F 0 "#PWR03" H 4000 4600 50  0001 C CNN
F 1 "GND" H 4005 4677 50  0000 C CNN
F 2 "" H 4000 4850 50  0001 C CNN
F 3 "" H 4000 4850 50  0001 C CNN
	1    4000 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5FB9901F
P 4000 4400
F 0 "#PWR06" H 4000 4250 50  0001 C CNN
F 1 "+5V" V 4015 4528 50  0000 L CNN
F 2 "" H 4000 4400 50  0001 C CNN
F 3 "" H 4000 4400 50  0001 C CNN
	1    4000 4400
	0    -1   -1   0   
$EndComp
Text GLabel 4000 4600 0    50   Output ~ 0
C2
Wire Notes Line
	5450 4000 5450 5950
Wire Notes Line
	5450 5950 1150 5950
Wire Notes Line
	1150 5950 1150 4000
Wire Notes Line
	1150 4000 5450 4000
Text GLabel 4000 4500 0    50   Output ~ 0
C1
$Comp
L power:+5V #PWR?
U 1 1 5FD76D33
P 1850 4400
F 0 "#PWR?" H 1850 4250 50  0001 C CNN
F 1 "+5V" H 1865 4573 50  0000 C CNN
F 2 "" H 1850 4400 50  0001 C CNN
F 3 "" H 1850 4400 50  0001 C CNN
	1    1850 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD77C16
P 2600 4950
F 0 "#PWR?" H 2600 4700 50  0001 C CNN
F 1 "GND" H 2605 4777 50  0000 C CNN
F 2 "" H 2600 4950 50  0001 C CNN
F 3 "" H 2600 4950 50  0001 C CNN
	1    2600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4950 2600 4850
Wire Wire Line
	2600 4850 2500 4850
Wire Wire Line
	1850 4400 1850 4450
Wire Wire Line
	1850 4450 2000 4450
Wire Wire Line
	4000 4400 4100 4400
Wire Wire Line
	4100 4800 4000 4800
Wire Wire Line
	4000 4800 4000 4850
Text GLabel 4000 4700 0    50   Output ~ 0
C3
Wire Wire Line
	4000 4500 4100 4500
Wire Wire Line
	4100 4600 4000 4600
Wire Wire Line
	4000 4700 4100 4700
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FEC60A3
P 7400 4550
F 0 "J?" H 7480 4542 50  0000 L CNN
F 1 "Conn_01x04" H 7480 4451 50  0000 L CNN
F 2 "" H 7400 4550 50  0001 C CNN
F 3 "~" H 7400 4550 50  0001 C CNN
	1    7400 4550
	1    0    0    -1  
$EndComp
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
	6950 4650 7200 4650
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
$EndSCHEMATC
