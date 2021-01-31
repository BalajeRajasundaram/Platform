EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Switch:SW_Push_45deg SW1
U 1 1 5FEC2884
P 3750 2950
F 0 "SW1" H 3700 2900 50  0000 C CNN
F 1 "SW_Push_45deg" H 3750 3140 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3750 2950 50  0001 C CNN
F 3 "~" H 3750 2950 50  0001 C CNN
	1    3750 2950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_45deg SW3
U 1 1 5FEC3564
P 4650 2950
F 0 "SW3" H 4650 3139 50  0000 C CNN
F 1 "SW_Push_45deg" H 4650 3140 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4650 2950 50  0001 C CNN
F 3 "~" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_45deg SW2
U 1 1 5FEC4C0B
P 3750 3600
F 0 "SW2" H 3750 3789 50  0000 C CNN
F 1 "SW_Push_45deg" H 3750 3790 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3750 3600 50  0001 C CNN
F 3 "~" H 3750 3600 50  0001 C CNN
	1    3750 3600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_45deg SW4
U 1 1 5FEC4C11
P 4650 3600
F 0 "SW4" H 4650 3789 50  0000 C CNN
F 1 "SW_Push_45deg" H 4650 3790 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4650 3600 50  0001 C CNN
F 3 "~" H 4650 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    -1  
$EndComp
Text GLabel 2850 2750 0    50   Input ~ 0
KEY_ROW1
Text GLabel 2800 3350 0    50   Input ~ 0
KEY_ROW2
Text GLabel 3950 2300 1    50   Input ~ 0
KEY_COL1
Text GLabel 4800 2300 1    50   Input ~ 0
KEY_COL2
Wire Wire Line
	2850 2750 3650 2750
Wire Wire Line
	4550 2750 4550 2850
Wire Wire Line
	3650 2850 3650 2750
Connection ~ 3650 2750
Wire Wire Line
	3650 2750 4550 2750
Wire Wire Line
	2800 3350 3650 3350
Wire Wire Line
	4550 3350 4550 3500
Wire Wire Line
	3650 3500 3650 3350
Connection ~ 3650 3350
Wire Wire Line
	3650 3350 4550 3350
Wire Wire Line
	3950 3700 3850 3700
Wire Wire Line
	3850 3050 3950 3050
Connection ~ 3950 3050
Wire Wire Line
	3950 3050 3950 3700
Wire Wire Line
	4800 2300 4800 3050
Wire Wire Line
	4800 3050 4750 3050
Wire Wire Line
	4750 3700 4800 3700
Wire Wire Line
	4800 3700 4800 3050
Connection ~ 4800 3050
Wire Wire Line
	3950 2300 3950 3050
Wire Notes Line
	5300 1550 5300 4550
Wire Notes Line
	5300 4550 1800 4550
Wire Notes Line
	1800 4550 1800 1550
Wire Notes Line
	1800 1550 5300 1550
Text Notes 3500 4200 0    50   ~ 0
2X2 Keypad.
$EndSCHEMATC
