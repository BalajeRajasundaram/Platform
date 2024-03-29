EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L power:+12V #PWR04
U 1 1 5FA6C6C2
P 5150 1750
F 0 "#PWR04" H 5150 1600 50  0001 C CNN
F 1 "+12V" H 5165 1923 50  0000 C CNN
F 2 "" H 5150 1750 50  0001 C CNN
F 3 "" H 5150 1750 50  0001 C CNN
	1    5150 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FA6C9F6
P 5150 2150
F 0 "#PWR05" H 5150 1900 50  0001 C CNN
F 1 "GND" H 5155 1977 50  0000 C CNN
F 2 "" H 5150 2150 50  0001 C CNN
F 3 "" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1750 5150 1850
Wire Wire Line
	5150 1850 5100 1850
Wire Wire Line
	5100 1950 5150 1950
Wire Wire Line
	5150 1950 5150 1900
Wire Wire Line
	5100 1850 5100 1900
Wire Wire Line
	5150 1900 5400 1900
Wire Wire Line
	5150 2150 5150 2100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FA71D78
P 5400 1400
F 0 "#FLG01" H 5400 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 5400 1573 50  0000 C CNN
F 2 "" H 5400 1400 50  0001 C CNN
F 3 "~" H 5400 1400 50  0001 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1400 5400 1900
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5FA72B80
P 2750 1950
F 0 "U1" H 2750 2192 50  0000 C CNN
F 1 "LM7805_TO220" H 2750 2101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2750 2175 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 2750 1900 50  0001 C CNN
	1    2750 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5FA73447
P 2000 1700
F 0 "#PWR01" H 2000 1550 50  0001 C CNN
F 1 "+12V" H 2015 1873 50  0000 C CNN
F 2 "" H 2000 1700 50  0001 C CNN
F 3 "" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1700 2000 1950
Wire Wire Line
	2000 1950 2150 1950
$Comp
L power:+5V #PWR03
U 1 1 5FA73B37
P 3450 1700
F 0 "#PWR03" H 3450 1550 50  0001 C CNN
F 1 "+5V" H 3465 1873 50  0000 C CNN
F 2 "" H 3450 1700 50  0001 C CNN
F 3 "" H 3450 1700 50  0001 C CNN
	1    3450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1700 3450 1950
Wire Wire Line
	3450 1950 3250 1950
$Comp
L power:GND #PWR02
U 1 1 5FA74A2F
P 2750 2400
F 0 "#PWR02" H 2750 2150 50  0001 C CNN
F 1 "GND" H 2755 2227 50  0000 C CNN
F 2 "" H 2750 2400 50  0001 C CNN
F 3 "" H 2750 2400 50  0001 C CNN
	1    2750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2400 2750 2250
$Comp
L Device:CP C1
U 1 1 5FA7541C
P 2150 2250
F 0 "C1" H 2268 2296 50  0000 L CNN
F 1 "0.33uF 330NF-0402" H 2268 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2188 2100 50  0001 C CNN
F 3 "~" H 2150 2250 50  0001 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2100 2150 1950
Connection ~ 2150 1950
Wire Wire Line
	2150 1950 2450 1950
Wire Wire Line
	2150 2400 2750 2400
Connection ~ 2750 2400
$Comp
L Device:CP C2
U 1 1 5FA75BDB
P 3250 2100
F 0 "C2" H 3368 2146 50  0000 L CNN
F 1 "0.1uF" H 3368 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3288 1950 50  0001 C CNN
F 3 "~" H 3250 2100 50  0001 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
Connection ~ 3250 1950
Wire Wire Line
	3250 1950 3050 1950
Wire Wire Line
	3250 2250 2750 2250
Connection ~ 2750 2250
$Comp
L Platform-rescue:LM317_TO-220-Regulator_Linear-Platform-rescue-Platform-rescue U2
U 1 1 5FA76F90
P 7350 4300
F 0 "U2" H 7350 4542 50  0000 C CNN
F 1 "LM317_TO-220" H 7350 4451 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7350 4550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 7350 4300 50  0001 C CNN
	1    7350 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR06
U 1 1 5FA77820
P 6050 3850
F 0 "#PWR06" H 6050 3700 50  0001 C CNN
F 1 "+12V" H 6065 4023 50  0000 C CNN
F 2 "" H 6050 3850 50  0001 C CNN
F 3 "" H 6050 3850 50  0001 C CNN
	1    6050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3850 6050 4300
Wire Wire Line
	6050 4300 6550 4300
$Comp
L power:+3.3V #PWR010
U 1 1 5FA788F5
P 9250 4350
F 0 "#PWR010" H 9250 4200 50  0001 C CNN
F 1 "+3.3V" V 9265 4478 50  0000 L CNN
F 2 "" H 9250 4350 50  0001 C CNN
F 3 "" H 9250 4350 50  0001 C CNN
	1    9250 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 4300 7850 4300
Wire Wire Line
	9250 4300 9250 4350
$Comp
L Device:CP C3
U 1 1 5FA79CE3
P 6550 4900
F 0 "C3" H 6668 4946 50  0000 L CNN
F 1 "0.1uF" H 6668 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6588 4750 50  0001 C CNN
F 3 "~" H 6550 4900 50  0001 C CNN
	1    6550 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 5FA7A319
P 9250 5050
F 0 "C5" H 9368 5096 50  0000 L CNN
F 1 "1uF" H 9368 5005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 9288 4900 50  0001 C CNN
F 3 "~" H 9250 5050 50  0001 C CNN
	1    9250 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5FA7BC81
P 8200 5300
F 0 "C4" H 8318 5346 50  0000 L CNN
F 1 "10uF" H 8318 5255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 8238 5150 50  0001 C CNN
F 3 "~" H 8200 5300 50  0001 C CNN
	1    8200 5300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 5FA7C443
P 8200 4700
F 0 "D1" V 8154 4780 50  0000 L CNN
F 1 "1N4001" V 8245 4780 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8200 4525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8200 4700 50  0001 C CNN
	1    8200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4750 6550 4300
Connection ~ 6550 4300
Wire Wire Line
	6550 4300 7050 4300
Wire Wire Line
	6550 5050 6550 5550
Wire Wire Line
	8200 5450 8200 5550
$Comp
L power:GND #PWR07
U 1 1 5FA84744
P 7350 5550
F 0 "#PWR07" H 7350 5300 50  0001 C CNN
F 1 "GND" H 7355 5377 50  0000 C CNN
F 2 "" H 7350 5550 50  0001 C CNN
F 3 "" H 7350 5550 50  0001 C CNN
	1    7350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5550 7850 5550
Connection ~ 7350 5550
Wire Wire Line
	6550 5550 7350 5550
Wire Wire Line
	8200 4550 8200 4300
Connection ~ 8200 4300
Wire Wire Line
	8200 4300 9250 4300
Wire Wire Line
	9250 4900 9250 4350
Connection ~ 9250 4350
Wire Wire Line
	9250 5200 9250 5550
Wire Wire Line
	9250 5550 8200 5550
Connection ~ 8200 5550
$Comp
L Device:R R1
U 1 1 5FA8798A
P 7850 4650
F 0 "R1" H 7920 4696 50  0000 L CNN
F 1 "1K" H 7920 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 4650 50  0001 C CNN
F 3 "~" H 7850 4650 50  0001 C CNN
	1    7850 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FA87CE9
P 7850 5250
F 0 "R2" H 7920 5296 50  0000 L CNN
F 1 "1.65K" H 7920 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 5250 50  0001 C CNN
F 3 "~" H 7850 5250 50  0001 C CNN
	1    7850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4800 7850 4950
Wire Wire Line
	7850 4500 7850 4300
Connection ~ 7850 4300
Wire Wire Line
	7850 4300 8200 4300
Wire Wire Line
	7850 5400 7850 5550
Connection ~ 7850 5550
Wire Wire Line
	7850 5550 7350 5550
Wire Wire Line
	7850 4950 8200 4950
Wire Wire Line
	8200 4850 8200 4950
Connection ~ 7850 4950
Wire Wire Line
	7850 4950 7850 5100
Connection ~ 8200 4950
Wire Wire Line
	8200 4950 8200 5150
Wire Notes Line
	7050 900  7050 3050
Wire Notes Line
	7050 3050 4350 3050
Wire Notes Line
	4350 3050 4350 900 
Wire Notes Line
	4350 900  7050 900 
Wire Notes Line
	10150 6050 5500 6050
Wire Notes Line
	5500 6050 5500 3450
Wire Notes Line
	5500 3450 10150 3450
Wire Notes Line
	10150 3450 10150 6050
Wire Notes Line
	1300 950  1300 3000
Wire Notes Line
	1300 3000 4000 3000
Wire Notes Line
	4000 3000 4000 900 
Wire Notes Line
	4000 900  1300 900 
Text Notes 5200 800  0    50   ~ 10
12V Input Connector
Text Notes 2050 800  0    50   ~ 10
12V to 5V LDO Regulation
Text Notes 7150 3350 0    50   ~ 10
12V to 3v3 LDO regulation
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FAB8A00
P 4650 2000
F 0 "J1" H 4568 1675 50  0000 C CNN
F 1 "12V INPUT" H 4568 1766 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 4650 2000 50  0001 C CNN
F 3 "~" H 4650 2000 50  0001 C CNN
	1    4650 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 1900 5100 1900
Connection ~ 5100 1900
Wire Wire Line
	5100 1900 5100 1950
Wire Wire Line
	4850 2000 5150 2000
Connection ~ 5150 2000
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5FABBF92
P 6200 1900
F 0 "J2" H 6280 1892 50  0000 L CNN
F 1 "12V_INPUT" H 6280 1801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6200 1900 50  0001 C CNN
F 3 "~" H 6200 1900 50  0001 C CNN
	1    6200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1900 5750 1900
Connection ~ 5400 1900
$Comp
L Mechanical:MountingHole H1
U 1 1 5FABED39
P 8150 1450
F 0 "H1" H 8250 1496 50  0000 L CNN
F 1 "MountingHole" H 8250 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 8150 1450 50  0001 C CNN
F 3 "~" H 8150 1450 50  0001 C CNN
	1    8150 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FABF30F
P 8850 1450
F 0 "H2" H 8950 1496 50  0000 L CNN
F 1 "MountingHole" H 8950 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 8850 1450 50  0001 C CNN
F 3 "~" H 8850 1450 50  0001 C CNN
	1    8850 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FABF685
P 9550 1450
F 0 "H3" H 9650 1496 50  0000 L CNN
F 1 "MountingHole" H 9650 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9550 1450 50  0001 C CNN
F 3 "~" H 9550 1450 50  0001 C CNN
	1    9550 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FABF99D
P 10250 1450
F 0 "H4" H 10350 1496 50  0000 L CNN
F 1 "MountingHole" H 10350 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10250 1450 50  0001 C CNN
F 3 "~" H 10250 1450 50  0001 C CNN
	1    10250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FAC713B
P 8850 1500
F 0 "#PWR09" H 8850 1250 50  0001 C CNN
F 1 "GND" H 8855 1327 50  0000 C CNN
F 2 "" H 8850 1500 50  0001 C CNN
F 3 "" H 8850 1500 50  0001 C CNN
	1    8850 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FAC7558
P 9550 1500
F 0 "#PWR011" H 9550 1250 50  0001 C CNN
F 1 "GND" H 9555 1327 50  0000 C CNN
F 2 "" H 9550 1500 50  0001 C CNN
F 3 "" H 9550 1500 50  0001 C CNN
	1    9550 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FAC79A8
P 10250 1500
F 0 "#PWR012" H 10250 1250 50  0001 C CNN
F 1 "GND" H 10255 1327 50  0000 C CNN
F 2 "" H 10250 1500 50  0001 C CNN
F 3 "" H 10250 1500 50  0001 C CNN
	1    10250 1500
	1    0    0    -1  
$EndComp
Wire Notes Line
	7900 1050 7900 1950
Wire Notes Line
	7900 1950 11050 1950
Wire Notes Line
	11050 1950 11050 1050
Wire Notes Line
	11050 1050 7900 1050
$Comp
L Connector:Barrel_Jack J3
U 1 1 5FACD235
P 6350 1450
F 0 "J3" H 6120 1408 50  0000 R CNN
F 1 "Barrel_Jack" H 6120 1499 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 6400 1410 50  0001 C CNN
F 3 "~" H 6400 1410 50  0001 C CNN
	1    6350 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 1550 5750 1550
Wire Wire Line
	5750 1550 5750 1900
Connection ~ 5750 1900
Wire Wire Line
	5750 1900 5400 1900
Wire Wire Line
	6050 1350 6050 1050
Wire Wire Line
	6050 1050 4450 1050
Wire Wire Line
	4450 1050 4450 2100
Wire Wire Line
	4450 2100 5150 2100
Connection ~ 5150 2100
Wire Wire Line
	5150 2100 5150 2000
Wire Wire Line
	7350 4600 7350 4950
Wire Wire Line
	7350 4950 7850 4950
Wire Wire Line
	5150 2000 6000 2000
$Comp
L Connector_Generic:Conn_01x06 J8
U 1 1 60174FE6
P 2650 3600
F 0 "J8" H 2730 3592 50  0000 L CNN
F 1 "Conn_01x06" H 2730 3501 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 2650 3600 50  0001 C CNN
F 3 "~" H 2650 3600 50  0001 C CNN
	1    2650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2300 3400
Wire Wire Line
	2300 3400 2300 3450
Wire Wire Line
	2300 3500 2450 3500
Wire Wire Line
	2450 3600 2300 3600
Wire Wire Line
	2300 3700 2450 3700
Wire Wire Line
	2450 3800 2300 3800
Wire Wire Line
	2300 3800 2300 3850
Wire Wire Line
	2300 3900 2450 3900
$Comp
L power:GND #PWR019
U 1 1 60179FD7
P 2150 3950
F 0 "#PWR019" H 2150 3700 50  0001 C CNN
F 1 "GND" H 2155 3777 50  0000 C CNN
F 2 "" H 2150 3950 50  0001 C CNN
F 3 "" H 2150 3950 50  0001 C CNN
	1    2150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3950 2150 3850
Wire Wire Line
	2150 3850 2300 3850
Connection ~ 2300 3850
Wire Wire Line
	2300 3850 2300 3900
$Comp
L power:+5V #PWR017
U 1 1 6017E3B0
P 2150 3450
F 0 "#PWR017" H 2150 3300 50  0001 C CNN
F 1 "+5V" V 2165 3578 50  0000 L CNN
F 2 "" H 2150 3450 50  0001 C CNN
F 3 "" H 2150 3450 50  0001 C CNN
	1    2150 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 3450 2300 3450
Connection ~ 2300 3450
Wire Wire Line
	2300 3450 2300 3500
Wire Wire Line
	2300 3600 2300 3650
$Comp
L power:+3.3V #PWR018
U 1 1 6018128A
P 2150 3650
F 0 "#PWR018" H 2150 3500 50  0001 C CNN
F 1 "+3.3V" V 2165 3778 50  0000 L CNN
F 2 "" H 2150 3650 50  0001 C CNN
F 3 "" H 2150 3650 50  0001 C CNN
	1    2150 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 3650 2300 3650
Connection ~ 2300 3650
Wire Wire Line
	2300 3650 2300 3700
Wire Notes Line
	4050 3150 4050 4550
Wire Notes Line
	4050 4550 1300 4550
Wire Notes Line
	1300 4550 1300 3150
Wire Notes Line
	1300 3150 4050 3150
Text Notes 1700 4450 0    50   ~ 0
Power Supply connector if supply is\ncoming directly from power supply board.
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 606CD559
P 900 6100
F 0 "J5" H 818 5775 50  0000 C CNN
F 1 "AC INPUT" H 818 5866 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 900 6100 50  0001 C CNN
F 3 "~" H 900 6100 50  0001 C CNN
	1    900  6100
	-1   0    0    1   
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 606CE1F7
P 1250 6050
F 0 "RV1" H 1353 6096 50  0000 L CNN
F 1 "Varistor" H 1353 6005 50  0000 L CNN
F 2 "Varistor:RV_Disc_D7mm_W3.4mm_P5mm" V 1180 6050 50  0001 C CNN
F 3 "~" H 1250 6050 50  0001 C CNN
	1    1250 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 606CE509
P 1900 5750
F 0 "C9" V 2152 5750 50  0000 C CNN
F 1 "0.47uF 450V AC 15mm Pitch" V 2061 5750 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 1938 5600 50  0001 C CNN
F 3 "~" H 1900 5750 50  0001 C CNN
	1    1900 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 606CEB7C
P 1900 6100
F 0 "R5" V 1693 6100 50  0000 C CNN
F 1 "470K 1W" V 1784 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1830 6100 50  0001 C CNN
F 3 "~" H 1900 6100 50  0001 C CNN
	1    1900 6100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 606CFDC9
P 1900 6550
F 0 "R6" V 1693 6550 50  0000 C CNN
F 1 "100E 1W" V 1784 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 1830 6550 50  0001 C CNN
F 3 "~" H 1900 6550 50  0001 C CNN
	1    1900 6550
	0    -1   1    0   
$EndComp
$Comp
L pspice:DIODE D2
U 1 1 606D01FE
P 2450 5750
F 0 "D2" H 2450 6015 50  0000 C CNN
F 1 "DIODE IN4007" H 2450 5924 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2450 5750 50  0001 C CNN
F 3 "~" H 2450 5750 50  0001 C CNN
	1    2450 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 606D06CF
P 2750 6100
F 0 "C13" H 2868 6146 50  0000 L CNN
F 1 "1000uF" H 2868 6055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 2788 5950 50  0001 C CNN
F 3 "~" H 2750 6100 50  0001 C CNN
	1    2750 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 606D11AD
P 3100 6100
F 0 "D3" V 3054 6180 50  0000 L CNN
F 1 "5V_Zener" V 3145 6180 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3100 6100 50  0001 C CNN
F 3 "~" H 3100 6100 50  0001 C CNN
	1    3100 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 606D1903
P 3450 5750
F 0 "R7" V 3243 5750 50  0000 C CNN
F 1 "220E" V 3334 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3380 5750 50  0001 C CNN
F 3 "~" H 3450 5750 50  0001 C CNN
	1    3450 5750
	0    -1   1    0   
$EndComp
$Comp
L Isolator:EL814 U4
U 1 1 606D3219
P 4100 6100
F 0 "U4" H 4100 6417 50  0000 C CNN
F 1 "EL814" H 4100 6326 50  0000 C CNN
F 2 "OptoDevice:Luna_NSL-32" H 4100 5800 50  0001 C CNN
F 3 "http://lunainc.com/wp-content/uploads/2016/06/NSL-32.pdf" H 4150 6100 50  0001 C CNN
	1    4100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5750 1650 5750
Wire Wire Line
	1100 5750 1100 6000
Wire Wire Line
	1100 6100 1100 6550
Wire Wire Line
	1100 6550 1250 6550
Wire Wire Line
	1250 6200 1250 6550
Connection ~ 1250 6550
Wire Wire Line
	1250 6550 1750 6550
Wire Wire Line
	1250 5900 1250 5750
Connection ~ 1250 5750
Wire Wire Line
	1250 5750 1100 5750
Wire Wire Line
	1750 6100 1650 6100
Wire Wire Line
	1650 6100 1650 5750
Connection ~ 1650 5750
Wire Wire Line
	1650 5750 1250 5750
Wire Wire Line
	2050 5750 2150 5750
Wire Wire Line
	2050 6100 2150 6100
Wire Wire Line
	2150 6100 2150 5750
Connection ~ 2150 5750
Wire Wire Line
	2150 5750 2250 5750
Wire Wire Line
	2650 5750 2750 5750
Wire Wire Line
	3600 5750 3800 5750
Wire Wire Line
	3800 5750 3800 6000
Wire Wire Line
	3800 6200 3800 6550
Wire Wire Line
	3100 6250 3100 6550
Wire Wire Line
	2050 6550 2750 6550
Connection ~ 3100 6550
Wire Wire Line
	3100 6550 3800 6550
Wire Wire Line
	2750 6250 2750 6550
Connection ~ 2750 6550
Wire Wire Line
	2750 6550 3100 6550
Wire Wire Line
	2750 5950 2750 5750
Connection ~ 2750 5750
Wire Wire Line
	2750 5750 3100 5750
Wire Wire Line
	3100 5950 3100 5750
Connection ~ 3100 5750
Wire Wire Line
	3100 5750 3300 5750
$Comp
L Device:R R8
U 1 1 606FCAB5
P 4600 5750
F 0 "R8" H 4670 5796 50  0000 L CNN
F 1 "1k" H 4670 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 5750 50  0001 C CNN
F 3 "~" H 4600 5750 50  0001 C CNN
	1    4600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6000 4600 6000
Wire Wire Line
	4600 6000 4600 5900
$Comp
L power:GND #PWR025
U 1 1 607009D1
P 4600 6350
F 0 "#PWR025" H 4600 6100 50  0001 C CNN
F 1 "GND" H 4605 6177 50  0000 C CNN
F 2 "" H 4600 6350 50  0001 C CNN
F 3 "" H 4600 6350 50  0001 C CNN
	1    4600 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6350 4600 6200
Wire Wire Line
	4600 6200 4400 6200
$Comp
L power:+3.3V #PWR023
U 1 1 6070548F
P 4600 5500
F 0 "#PWR023" H 4600 5350 50  0001 C CNN
F 1 "+3.3V" H 4615 5673 50  0000 C CNN
F 2 "" H 4600 5500 50  0001 C CNN
F 3 "" H 4600 5500 50  0001 C CNN
	1    4600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5500 4600 5600
Text GLabel 4750 6000 2    50   BiDi ~ 0
PA24
Wire Wire Line
	4750 6000 4600 6000
Connection ~ 4600 6000
Wire Notes Line
	5200 5100 5200 7300
Wire Notes Line
	5200 7300 700  7300
Wire Notes Line
	700  7300 700  5100
Wire Notes Line
	700  5100 5200 5100
Text Notes 1800 7100 0    50   ~ 0
Power Input detection circuit.
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6067C06F
P 1100 5600
F 0 "#FLG0101" H 1100 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 5773 50  0000 C CNN
F 2 "" H 1100 5600 50  0001 C CNN
F 3 "~" H 1100 5600 50  0001 C CNN
	1    1100 5600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6067C371
P 1100 6700
F 0 "#FLG0102" H 1100 6775 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 6873 50  0000 C CNN
F 2 "" H 1100 6700 50  0001 C CNN
F 3 "~" H 1100 6700 50  0001 C CNN
	1    1100 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 5600 1100 5750
Connection ~ 1100 5750
Wire Wire Line
	1100 6550 1100 6700
Connection ~ 1100 6550
$EndSCHEMATC
