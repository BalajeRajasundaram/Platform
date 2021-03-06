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
L power:+3.3V #PWR015
U 1 1 5FAA344E
P 3200 3500
F 0 "#PWR015" H 3200 3350 50  0001 C CNN
F 1 "+3.3V" H 3215 3673 50  0000 C CNN
F 2 "" H 3200 3500 50  0001 C CNN
F 3 "" H 3200 3500 50  0001 C CNN
	1    3200 3500
	-1   0    0    -1  
$EndComp
Text GLabel 3450 4150 2    50   Output ~ 10
RESET
$Comp
L Device:R R3
U 1 1 5FAA5047
P 3200 3850
F 0 "R3" H 3270 3896 50  0000 L CNN
F 1 "10K" H 3270 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 3850 50  0001 C CNN
F 3 "~" H 3200 3850 50  0001 C CNN
	1    3200 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 3500 3200 3700
Wire Wire Line
	3200 4000 3200 4150
Wire Wire Line
	3200 4150 3450 4150
Text GLabel 1800 4650 2    50   BiDi ~ 10
PA30
Text GLabel 1800 4550 2    50   BiDi ~ 10
PA31
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 5FAAFFFC
P 1350 4750
F 0 "J6" H 1400 5167 50  0000 C CNN
F 1 "Debug Hdr" H 1400 5076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1350 4750 50  0001 C CNN
F 3 "~" H 1350 4750 50  0001 C CNN
	1    1350 4750
	1    0    0    -1  
$EndComp
Text GLabel 1650 4950 2    50   Output ~ 10
RESET
$Comp
L power:+3.3V #PWR014
U 1 1 5FAB3E45
P 1150 4550
F 0 "#PWR014" H 1150 4400 50  0001 C CNN
F 1 "+3.3V" H 1165 4723 50  0000 C CNN
F 2 "" H 1150 4550 50  0001 C CNN
F 3 "" H 1150 4550 50  0001 C CNN
	1    1150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FAB4817
P 800 4950
F 0 "#PWR013" H 800 4700 50  0001 C CNN
F 1 "GND" H 805 4777 50  0000 C CNN
F 2 "" H 800 4950 50  0001 C CNN
F 3 "" H 800 4950 50  0001 C CNN
	1    800  4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4950 1150 4950
Wire Wire Line
	1150 4650 800  4650
Wire Wire Line
	800  4650 800  4750
Connection ~ 800  4950
Wire Wire Line
	1150 4750 800  4750
Wire Wire Line
	800  4750 800  4950
Connection ~ 800  4750
NoConn ~ 1650 4850
NoConn ~ 1650 4750
NoConn ~ 1150 4850
Wire Wire Line
	4900 1850 5000 1850
Wire Wire Line
	4900 1950 5000 1950
Wire Wire Line
	4900 2050 5000 2050
Wire Wire Line
	4900 2150 5000 2150
Wire Wire Line
	4900 2250 5000 2250
Wire Wire Line
	4900 2350 5000 2350
Wire Wire Line
	4900 2450 5000 2450
Wire Wire Line
	4900 2550 5000 2550
Wire Wire Line
	4900 2650 5000 2650
Wire Wire Line
	4900 2750 5000 2750
Wire Wire Line
	4900 2850 5000 2850
Wire Wire Line
	4900 2950 5000 2950
Wire Wire Line
	4900 3250 5000 3250
Wire Wire Line
	4900 3350 5000 3350
Wire Wire Line
	4900 3450 5000 3450
Wire Wire Line
	4900 3550 5000 3550
Wire Wire Line
	4900 3650 5000 3650
Wire Wire Line
	4900 3750 5000 3750
Wire Wire Line
	4900 4050 5000 4050
Wire Wire Line
	4900 4150 5000 4150
Wire Wire Line
	4900 4250 5000 4250
Wire Wire Line
	4900 4350 5000 4350
Wire Wire Line
	4900 4550 5000 4550
Wire Wire Line
	4900 4650 5000 4650
Wire Wire Line
	4900 4850 5000 4850
Wire Wire Line
	4900 4950 5000 4950
Text GLabel 4900 2150 0    50   BiDi ~ 10
PA03
Text GLabel 4900 1850 0    50   BiDi ~ 10
PA00
Text GLabel 4900 1950 0    50   BiDi ~ 10
PA01
Text GLabel 4900 2050 0    50   BiDi ~ 10
PA02
Text GLabel 4900 2250 0    50   BiDi ~ 10
PA04
Text GLabel 4900 2350 0    50   BiDi ~ 10
PA05
Text GLabel 4900 2450 0    50   BiDi ~ 10
PA06
Text GLabel 4900 2550 0    50   BiDi ~ 10
PA07
Text GLabel 4900 2650 0    50   BiDi ~ 10
PA08
Text GLabel 4900 2750 0    50   BiDi ~ 10
PA09
Text GLabel 4900 2850 0    50   BiDi ~ 10
PA10
Text GLabel 4900 2950 0    50   BiDi ~ 10
PA11
Text GLabel 4900 3250 0    50   BiDi ~ 10
PA14
Text GLabel 4900 3350 0    50   BiDi ~ 10
PA15
Text GLabel 4900 3450 0    50   BiDi ~ 10
PA16
Text GLabel 4900 3550 0    50   BiDi ~ 10
PA17
Text GLabel 4900 3650 0    50   BiDi ~ 10
PA18
Text GLabel 4900 3750 0    50   BiDi ~ 10
PA19
Text GLabel 4900 4050 0    50   BiDi ~ 10
PA22
Text GLabel 4900 4150 0    50   BiDi ~ 10
PA23
Text GLabel 4900 4250 0    50   BiDi ~ 10
PA24
Text GLabel 4900 4350 0    50   BiDi ~ 10
PA25
Text GLabel 4900 4550 0    50   BiDi ~ 10
PA27
Text GLabel 4900 4650 0    50   BiDi ~ 10
PA28
Text GLabel 4900 4850 0    50   BiDi ~ 10
PA30
Text GLabel 4900 4950 0    50   BiDi ~ 10
PA31
$Comp
L power:GND #PWR022
U 1 1 5FAA633E
P 5700 5350
F 0 "#PWR022" H 5700 5100 50  0001 C CNN
F 1 "GND" H 5705 5177 50  0000 C CNN
F 2 "" H 5700 5350 50  0001 C CNN
F 3 "" H 5700 5350 50  0001 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1450 6000 1550
Connection ~ 6000 1450
Wire Wire Line
	5600 1450 5600 1550
Wire Wire Line
	6000 1450 5600 1450
Wire Wire Line
	6000 1300 6000 1450
$Comp
L power:+3.3V #PWR024
U 1 1 5FAA5826
P 6000 1300
F 0 "#PWR024" H 6000 1150 50  0001 C CNN
F 1 "+3.3V" H 6015 1473 50  0000 C CNN
F 2 "" H 6000 1300 50  0001 C CNN
F 3 "" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5150 5000 5150
Text GLabel 4900 5150 0    50   Input ~ 10
RESET
$Comp
L Platform-rescue:ATSAMD21E16B-M-MCU_Microchip_SAMD-Platform-rescue-Platform-rescue U3
U 1 1 5FAA26F4
P 5700 3450
AR Path="/5FAA26F4" Ref="U3"  Part="1" 
AR Path="/5FB6B44D/5FAA26F4" Ref="U3"  Part="1" 
F 0 "U3" H 6344 3496 50  0000 L CNN
F 1 "ATSAMD21E16B-M" H 6344 3405 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.6x3.6mm" H 7050 1600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
Wire Notes Line
	7300 950  7300 5650
Wire Notes Line
	7300 5650 650  5650
Wire Notes Line
	650  5650 650  950 
Wire Notes Line
	650  950  7300 950 
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J14
U 1 1 5FAE7FD1
P 9350 1600
F 0 "J14" H 9400 2017 50  0000 C CNN
F 1 "Aardvark Header I2C/SPI" H 9600 2100 50  0000 C CNB
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 9350 1600 50  0001 C CNN
F 3 "~" H 9350 1600 50  0001 C CNN
	1    9350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5FAE8C8C
P 11150 1800
F 0 "#PWR040" H 11150 1550 50  0001 C CNN
F 1 "GND" H 11155 1627 50  0000 C CNN
F 2 "" H 11150 1800 50  0001 C CNN
F 3 "" H 11150 1800 50  0001 C CNN
	1    11150 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR031
U 1 1 5FAF528F
P 8850 1050
F 0 "#PWR031" H 8850 900 50  0001 C CNN
F 1 "+3.3V" H 8865 1223 50  0000 C CNN
F 2 "" H 8850 1050 50  0001 C CNN
F 3 "" H 8850 1050 50  0001 C CNN
	1    8850 1050
	1    0    0    -1  
$EndComp
Text GLabel 8650 1400 0    50   BiDi ~ 10
PA17
Text GLabel 8650 1500 0    50   BiDi ~ 10
PA16
Wire Notes Line
	7350 900  7350 2150
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J12
U 1 1 5FB4ADBF
P 8450 3250
F 0 "J12" H 8500 3667 50  0000 C CNN
F 1 "Aardvark Header I2C" H 8500 3576 50  0000 C CNB
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 8450 3250 50  0001 C CNN
F 3 "~" H 8450 3250 50  0001 C CNN
	1    8450 3250
	1    0    0    -1  
$EndComp
Text GLabel 7850 3050 0    50   BiDi ~ 10
PA23
Text GLabel 7850 3150 0    50   BiDi ~ 10
PA22
$Comp
L Device:R R11
U 1 1 5FB4BDEF
P 8100 2700
F 0 "R11" H 8170 2746 50  0000 L CNN
F 1 "1K DNP" H 8170 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8030 2700 50  0001 C CNN
F 3 "~" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5FB561CC
P 8000 2700
F 0 "R12" H 8070 2746 50  0000 L CNN
F 1 "1K DNP" H 8070 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 2700 50  0001 C CNN
F 3 "~" H 8000 2700 50  0001 C CNN
	1    8000 2700
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5FB56DE9
P 8050 2400
F 0 "#PWR028" H 8050 2250 50  0001 C CNN
F 1 "+3.3V" H 8065 2573 50  0000 C CNN
F 2 "" H 8050 2400 50  0001 C CNN
F 3 "" H 8050 2400 50  0001 C CNN
	1    8050 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5FB5757F
P 10500 3450
F 0 "#PWR038" H 10500 3200 50  0001 C CNN
F 1 "GND" H 10505 3277 50  0000 C CNN
F 2 "" H 10500 3450 50  0001 C CNN
F 3 "" H 10500 3450 50  0001 C CNN
	1    10500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 3050 10500 3450
Connection ~ 10500 3450
NoConn ~ 8750 3350
NoConn ~ 8250 3450
NoConn ~ 8250 3350
NoConn ~ 8250 3250
Wire Notes Line
	7350 4000 7350 2300
$Comp
L Device:C C7
U 1 1 5FB646A0
P 4900 1400
F 0 "C7" H 5018 1446 50  0000 L CNN
F 1 "1uF" H 5018 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4938 1250 50  0001 C CNN
F 3 "~" H 4900 1400 50  0001 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1250 5400 1250
Wire Wire Line
	5400 1250 5400 1550
$Comp
L power:GND #PWR021
U 1 1 5FB66CF1
P 4900 1550
F 0 "#PWR021" H 4900 1300 50  0001 C CNN
F 1 "GND" H 4905 1377 50  0000 C CNN
F 2 "" H 4900 1550 50  0001 C CNN
F 3 "" H 4900 1550 50  0001 C CNN
	1    4900 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FB67AB7
P 4250 1400
F 0 "C6" H 4368 1446 50  0000 L CNN
F 1 "100nF DNP" H 4368 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4288 1250 50  0001 C CNN
F 3 "~" H 4250 1400 50  0001 C CNN
	1    4250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1050 5600 1450
Connection ~ 5600 1450
$Comp
L power:GND #PWR020
U 1 1 5FB6BC4D
P 4250 1550
F 0 "#PWR020" H 4250 1300 50  0001 C CNN
F 1 "GND" H 4255 1377 50  0000 C CNN
F 2 "" H 4250 1550 50  0001 C CNN
F 3 "" H 4250 1550 50  0001 C CNN
	1    4250 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5FB6BF77
P 6600 1600
F 0 "C8" H 6718 1646 50  0000 L CNN
F 1 "100nF DNP" H 6718 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6638 1450 50  0001 C CNN
F 3 "~" H 6600 1600 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5FB6C310
P 6600 1750
F 0 "#PWR027" H 6600 1500 50  0001 C CNN
F 1 "GND" H 6605 1577 50  0000 C CNN
F 2 "" H 6600 1750 50  0001 C CNN
F 3 "" H 6600 1750 50  0001 C CNN
	1    6600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1450 6000 1450
$Comp
L Device:R R4
U 1 1 5FB6E9FD
P 1700 4350
F 0 "R4" H 1770 4396 50  0000 L CNN
F 1 "1K" H 1770 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 4350 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4650 1700 4650
Wire Wire Line
	1700 4500 1700 4650
Connection ~ 1700 4650
Wire Wire Line
	1700 4650 1650 4650
$Comp
L power:+3.3V #PWR016
U 1 1 5FB75E85
P 1700 4200
F 0 "#PWR016" H 1700 4050 50  0001 C CNN
F 1 "+3.3V" H 1715 4373 50  0000 C CNN
F 2 "" H 1700 4200 50  0001 C CNN
F 3 "" H 1700 4200 50  0001 C CNN
	1    1700 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J13
U 1 1 5FB768AA
P 8500 4850
F 0 "J13" H 8550 5167 50  0000 C CNN
F 1 "ESP8266_CONN" H 8550 5076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 8500 4850 50  0001 C CNN
F 3 "~" H 8500 4850 50  0001 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
Text GLabel 8300 4750 0    50   BiDi ~ 10
PA08
Text GLabel 8800 5050 2    50   BiDi ~ 10
PA09
Text GLabel 8800 4850 2    50   BiDi ~ 10
PA30
$Comp
L Device:R R18
U 1 1 5FB774FA
P 9400 4950
F 0 "R18" V 9193 4950 50  0000 C CNN
F 1 "1K" V 9284 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 4950 50  0001 C CNN
F 3 "~" H 9400 4950 50  0001 C CNN
	1    9400 4950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR035
U 1 1 5FB77947
P 9900 4950
F 0 "#PWR035" H 9900 4800 50  0001 C CNN
F 1 "+3.3V" H 9915 5123 50  0000 C CNN
F 2 "" H 9900 4950 50  0001 C CNN
F 3 "" H 9900 4950 50  0001 C CNN
	1    9900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4950 8800 4950
Wire Wire Line
	9900 4950 9550 4950
$Comp
L power:+3.3V #PWR033
U 1 1 5FB8060B
P 9150 4550
F 0 "#PWR033" H 9150 4400 50  0001 C CNN
F 1 "+3.3V" H 9165 4723 50  0000 C CNN
F 2 "" H 9150 4550 50  0001 C CNN
F 3 "" H 9150 4550 50  0001 C CNN
	1    9150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4550 9150 4750
Wire Wire Line
	9150 4750 8800 4750
$Comp
L power:GND #PWR030
U 1 1 5FB82EA7
P 8000 5050
F 0 "#PWR030" H 8000 4800 50  0001 C CNN
F 1 "GND" H 8005 4877 50  0000 C CNN
F 2 "" H 8000 5050 50  0001 C CNN
F 3 "" H 8000 5050 50  0001 C CNN
	1    8000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5050 8300 5050
Wire Notes Line
	7600 4250 10350 4250
Wire Notes Line
	10350 4250 10350 5450
Wire Notes Line
	10350 5450 7600 5450
Wire Notes Line
	7600 5450 7600 4250
NoConn ~ 8300 4850
NoConn ~ 8300 4950
Wire Wire Line
	8750 3450 10500 3450
Wire Wire Line
	8750 3050 10500 3050
$Comp
L Device:R R17
U 1 1 5FBE4EF4
P 9150 3150
F 0 "R17" V 8943 3150 50  0000 C CNN
F 1 "0 DNP" V 9034 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9080 3150 50  0001 C CNN
F 3 "~" H 9150 3150 50  0001 C CNN
	1    9150 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5FBE5B60
P 9850 3250
F 0 "R19" V 10057 3250 50  0000 C CNN
F 1 "0 DNP" V 9966 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9780 3250 50  0001 C CNN
F 3 "~" H 9850 3250 50  0001 C CNN
	1    9850 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 5FBE5DCE
P 9300 3150
F 0 "#PWR034" H 9300 3000 50  0001 C CNN
F 1 "+3.3V" V 9315 3278 50  0000 L CNN
F 2 "" H 9300 3150 50  0001 C CNN
F 3 "" H 9300 3150 50  0001 C CNN
	1    9300 3150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 5FBE6596
P 10000 3250
F 0 "#PWR036" H 10000 3100 50  0001 C CNN
F 1 "+5V" V 10015 3378 50  0000 L CNN
F 2 "" H 10000 3250 50  0001 C CNN
F 3 "" H 10000 3250 50  0001 C CNN
	1    10000 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 3250 8750 3250
Wire Wire Line
	9000 3150 8750 3150
Wire Notes Line
	7350 2300 10750 2300
Wire Notes Line
	7350 4000 10750 4000
Wire Notes Line
	10750 2300 10750 4000
$Comp
L Device:R R20
U 1 1 5FBFF74B
P 10000 1500
F 0 "R20" V 9793 1500 50  0000 C CNN
F 1 "0 DNP" V 9884 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 1500 50  0001 C CNN
F 3 "~" H 10000 1500 50  0001 C CNN
	1    10000 1500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR037
U 1 1 5FBFFCF3
P 10150 1500
F 0 "#PWR037" H 10150 1350 50  0001 C CNN
F 1 "+3.3V" V 10165 1628 50  0000 L CNN
F 2 "" H 10150 1500 50  0001 C CNN
F 3 "" H 10150 1500 50  0001 C CNN
	1    10150 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5FC0022D
P 10650 1700
F 0 "R21" V 10857 1700 50  0000 C CNN
F 1 "0 DNP" V 10766 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10580 1700 50  0001 C CNN
F 3 "~" H 10650 1700 50  0001 C CNN
	1    10650 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR039
U 1 1 5FC0095B
P 10800 1700
F 0 "#PWR039" H 10800 1550 50  0001 C CNN
F 1 "+5V" V 10815 1828 50  0000 L CNN
F 2 "" H 10800 1700 50  0001 C CNN
F 3 "" H 10800 1700 50  0001 C CNN
	1    10800 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1500 9850 1500
Wire Wire Line
	9650 1600 10500 1600
Wire Wire Line
	10500 1600 10500 1700
Wire Wire Line
	9650 1400 11150 1400
Wire Wire Line
	11150 1400 11150 1800
Wire Wire Line
	9650 1800 11150 1800
Connection ~ 11150 1800
Wire Notes Line
	11200 900  11200 2150
Wire Notes Line
	7350 2150 11200 2150
Wire Notes Line
	7350 900  11200 900 
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5FB1A94B
P 1300 6050
F 0 "J4" H 1380 6092 50  0000 L CNN
F 1 "Conn_01x05" H 1380 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1300 6050 50  0001 C CNN
F 3 "~" H 1300 6050 50  0001 C CNN
	1    1300 6050
	1    0    0    1   
$EndComp
Text GLabel 1100 5850 0    50   BiDi ~ 10
PA03
Text GLabel 1100 5950 0    50   BiDi ~ 10
PA04
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 5FB1E4EC
P 2400 6050
F 0 "J7" H 2480 6092 50  0000 L CNN
F 1 "Conn_01x05" H 2480 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2400 6050 50  0001 C CNN
F 3 "~" H 2400 6050 50  0001 C CNN
	1    2400 6050
	1    0    0    -1  
$EndComp
Text GLabel 1100 6050 0    50   BiDi ~ 10
PA05
Text GLabel 1100 6150 0    50   BiDi ~ 10
PA06
Text GLabel 1100 6250 0    50   BiDi ~ 10
PA08
$Comp
L Connector_Generic:Conn_01x05 J10
U 1 1 5FB2128E
P 3500 6050
F 0 "J10" H 3580 6092 50  0000 L CNN
F 1 "Conn_01x05" H 3580 6001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 3500 6050 50  0001 C CNN
F 3 "~" H 3500 6050 50  0001 C CNN
	1    3500 6050
	1    0    0    -1  
$EndComp
Text GLabel 2200 5950 0    50   BiDi ~ 10
PA14
Text GLabel 2200 6050 0    50   BiDi ~ 10
PA16
Text GLabel 2200 6150 0    50   BiDi ~ 10
PA17
Text GLabel 2200 6250 0    50   BiDi ~ 10
PA18
Text GLabel 3300 5850 0    50   BiDi ~ 10
PA22
Text GLabel 3300 5950 0    50   BiDi ~ 10
PA23
Text GLabel 3300 6050 0    50   BiDi ~ 10
PA27
Text GLabel 3300 6150 0    50   BiDi ~ 10
PA28
Text GLabel 3300 6250 0    50   BiDi ~ 10
PA30
Text GLabel 2200 5850 0    50   BiDi ~ 10
PA09
Wire Notes Line
	4150 5700 4150 7500
Wire Notes Line
	550  7500 550  5700
Wire Wire Line
	5600 1050 4250 1050
Wire Wire Line
	4250 1050 4250 1250
Wire Wire Line
	1800 4550 1650 4550
$Comp
L Device:C_Small C14
U 1 1 601CEA06
P 3200 4400
F 0 "C14" H 3292 4446 50  0000 L CNN
F 1 "C_Small" H 3292 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3200 4400 50  0001 C CNN
F 3 "~" H 3200 4400 50  0001 C CNN
	1    3200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 601CEDC7
P 3200 4650
F 0 "#PWR043" H 3200 4400 50  0001 C CNN
F 1 "GND" H 3205 4477 50  0000 C CNN
F 2 "" H 3200 4650 50  0001 C CNN
F 3 "" H 3200 4650 50  0001 C CNN
	1    3200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4650 3200 4500
Wire Wire Line
	3200 4300 3200 4150
Connection ~ 3200 4150
Wire Wire Line
	7850 3050 8000 3050
Wire Wire Line
	7850 3150 8100 3150
Wire Wire Line
	8000 2850 8000 3050
Connection ~ 8000 3050
Wire Wire Line
	8000 3050 8250 3050
Wire Wire Line
	8100 2850 8100 3150
Connection ~ 8100 3150
Wire Wire Line
	8100 3150 8250 3150
Wire Wire Line
	8000 2550 8000 2500
Wire Wire Line
	8000 2500 8050 2500
Wire Wire Line
	8100 2500 8100 2550
Wire Wire Line
	8050 2400 8050 2500
Connection ~ 8050 2500
Wire Wire Line
	8050 2500 8100 2500
Text GLabel 8650 1600 0    50   BiDi ~ 10
PA19
Text GLabel 8650 1700 0    50   BiDi ~ 10
PA17
Text GLabel 8650 1800 0    50   BiDi ~ 10
PA18
Text GLabel 9850 1700 2    50   BiDi ~ 10
PA16
Wire Wire Line
	8650 1400 8800 1400
Wire Wire Line
	9150 1500 8900 1500
Wire Wire Line
	9150 1600 8650 1600
Wire Wire Line
	8650 1700 9150 1700
Wire Wire Line
	9150 1800 8650 1800
Wire Wire Line
	9650 1700 9850 1700
$Comp
L Device:R_Small R14
U 1 1 60696FEF
P 8900 1250
F 0 "R14" H 8959 1296 50  0000 L CNN
F 1 "R_Small" H 8959 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8900 1250 50  0001 C CNN
F 3 "~" H 8900 1250 50  0001 C CNN
	1    8900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6069757B
P 8800 1250
F 0 "R13" H 8741 1204 50  0000 R CNN
F 1 "R_Small" H 8741 1295 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8800 1250 50  0001 C CNN
F 3 "~" H 8800 1250 50  0001 C CNN
	1    8800 1250
	1    0    0    1   
$EndComp
Wire Wire Line
	8800 1350 8800 1400
Connection ~ 8800 1400
Wire Wire Line
	8800 1400 9150 1400
Wire Wire Line
	8900 1350 8900 1500
Connection ~ 8900 1500
Wire Wire Line
	8900 1500 8650 1500
Wire Wire Line
	8800 1150 8800 1100
Wire Wire Line
	8800 1100 8850 1100
Wire Wire Line
	8900 1100 8900 1150
Wire Wire Line
	8850 1050 8850 1100
Connection ~ 8850 1100
Wire Wire Line
	8850 1100 8900 1100
Wire Notes Line
	550  7500 4150 7500
Wire Notes Line
	550  5700 4150 5700
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J9
U 1 1 6069055C
P 2150 2150
F 0 "J9" H 2200 2767 50  0000 C CNN
F 1 "LED Interface" H 2200 2676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Horizontal" H 2150 2150 50  0001 C CNN
F 3 "~" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
Text GLabel 1800 1850 0    50   BiDi ~ 10
PA00
Text GLabel 2600 1850 2    50   BiDi ~ 10
PA01
Text GLabel 1800 1950 0    50   BiDi ~ 10
PA02
Text GLabel 2600 1950 2    50   BiDi ~ 10
PA03
Text GLabel 1800 2050 0    50   BiDi ~ 10
PA04
Text GLabel 2600 2050 2    50   BiDi ~ 10
PA05
Text GLabel 1800 2150 0    50   BiDi ~ 10
PA06
Text GLabel 2600 2150 2    50   BiDi ~ 10
PA07
Text GLabel 1800 2250 0    50   BiDi ~ 10
PA25
Text GLabel 2600 2250 2    50   BiDi ~ 10
PA27
Text GLabel 1800 2350 0    50   BiDi ~ 10
PA28
Text GLabel 1800 2550 0    50   BiDi ~ 10
PA14
Text GLabel 2600 2450 2    50   BiDi ~ 10
PA11
Text GLabel 1800 2450 0    50   BiDi ~ 10
PA10
Text GLabel 2600 2550 2    50   BiDi ~ 10
PA15
Text GLabel 2600 2350 2    50   BiDi ~ 10
PA31
Wire Wire Line
	1800 1850 1950 1850
Wire Wire Line
	1950 1950 1800 1950
Wire Wire Line
	1800 2050 1950 2050
Wire Wire Line
	1950 2150 1800 2150
Wire Wire Line
	1800 2250 1950 2250
Wire Wire Line
	1950 2350 1800 2350
Wire Wire Line
	1800 2450 1950 2450
Wire Wire Line
	1950 2550 1800 2550
Wire Wire Line
	2450 2550 2600 2550
Wire Wire Line
	2600 2450 2450 2450
Wire Wire Line
	2450 2350 2600 2350
Wire Wire Line
	2600 2250 2450 2250
Wire Wire Line
	2450 2150 2600 2150
Wire Wire Line
	2600 2050 2450 2050
Wire Wire Line
	2450 1950 2600 1950
Wire Wire Line
	2600 1850 2450 1850
$Comp
L power:GND #PWR041
U 1 1 606D565B
P 2600 2750
F 0 "#PWR041" H 2600 2500 50  0001 C CNN
F 1 "GND" H 2605 2577 50  0000 C CNN
F 2 "" H 2600 2750 50  0001 C CNN
F 3 "" H 2600 2750 50  0001 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 606D5B76
P 1800 2750
F 0 "#PWR029" H 1800 2500 50  0001 C CNN
F 1 "GND" H 1805 2577 50  0000 C CNN
F 2 "" H 1800 2750 50  0001 C CNN
F 3 "" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2650 2600 2650
Wire Wire Line
	2600 2650 2600 2750
Wire Wire Line
	1800 2750 1800 2650
Wire Wire Line
	1800 2650 1950 2650
$Comp
L power:+5V #PWR032
U 1 1 606DFE5F
P 2600 1550
F 0 "#PWR032" H 2600 1400 50  0001 C CNN
F 1 "+5V" V 2615 1678 50  0000 L CNN
F 2 "" H 2600 1550 50  0001 C CNN
F 3 "" H 2600 1550 50  0001 C CNN
	1    2600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 606E0CFA
P 1800 1550
F 0 "#PWR026" H 1800 1400 50  0001 C CNN
F 1 "+5V" V 1815 1678 50  0000 L CNN
F 2 "" H 1800 1550 50  0001 C CNN
F 3 "" H 1800 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1550 1800 1750
Wire Wire Line
	1800 1750 1950 1750
Wire Wire Line
	2450 1750 2600 1750
Wire Wire Line
	2600 1750 2600 1550
Wire Notes Line
	3050 1150 3050 3300
Wire Notes Line
	3050 3300 1350 3300
Wire Notes Line
	1350 3300 1350 1150
Wire Notes Line
	1350 1150 3050 1150
Text Notes 1600 3150 0    50   ~ 0
MCU-LED interface connector
$Comp
L Connector_Generic:Conn_01x04 J11
U 1 1 606AD8C9
P 5600 6450
F 0 "J11" H 5680 6442 50  0000 L CNN
F 1 "Relay_conn" H 5680 6351 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 5600 6450 50  0001 C CNN
F 3 "~" H 5600 6450 50  0001 C CNN
	1    5600 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 606B0151
P 5250 6750
F 0 "#PWR042" H 5250 6500 50  0001 C CNN
F 1 "GND" H 5255 6577 50  0000 C CNN
F 2 "" H 5250 6750 50  0001 C CNN
F 3 "" H 5250 6750 50  0001 C CNN
	1    5250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6750 5250 6650
Wire Wire Line
	5250 6650 5400 6650
Text GLabel 5250 6550 0    50   BiDi ~ 10
PA18
Text GLabel 5250 6450 0    50   BiDi ~ 10
PA17
Text GLabel 5250 6350 0    50   BiDi ~ 10
PA16
Wire Wire Line
	5250 6350 5400 6350
Wire Wire Line
	5400 6450 5250 6450
Wire Wire Line
	5250 6550 5400 6550
Wire Notes Line
	6300 6150 6300 7350
Wire Notes Line
	6300 7350 4600 7350
Wire Notes Line
	4600 7350 4600 6150
Wire Notes Line
	4600 6150 6300 6150
Text Notes 5000 7200 0    50   ~ 0
Relay Controls
$EndSCHEMATC
