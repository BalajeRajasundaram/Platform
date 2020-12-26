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
P 3100 4800
F 0 "U1" H 3100 5042 50  0000 C CNN
F 1 "LM7805_TO220" H 3100 4951 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3100 5025 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 3100 4750 50  0001 C CNN
	1    3100 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5FA73447
P 2350 4550
F 0 "#PWR01" H 2350 4400 50  0001 C CNN
F 1 "+12V" H 2365 4723 50  0000 C CNN
F 2 "" H 2350 4550 50  0001 C CNN
F 3 "" H 2350 4550 50  0001 C CNN
	1    2350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4550 2350 4800
Wire Wire Line
	2350 4800 2500 4800
$Comp
L power:+5V #PWR03
U 1 1 5FA73B37
P 3800 4550
F 0 "#PWR03" H 3800 4400 50  0001 C CNN
F 1 "+5V" H 3815 4723 50  0000 C CNN
F 2 "" H 3800 4550 50  0001 C CNN
F 3 "" H 3800 4550 50  0001 C CNN
	1    3800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4550 3800 4800
Wire Wire Line
	3800 4800 3600 4800
$Comp
L power:GND #PWR02
U 1 1 5FA74A2F
P 3100 5250
F 0 "#PWR02" H 3100 5000 50  0001 C CNN
F 1 "GND" H 3105 5077 50  0000 C CNN
F 2 "" H 3100 5250 50  0001 C CNN
F 3 "" H 3100 5250 50  0001 C CNN
	1    3100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5250 3100 5100
$Comp
L Device:CP C1
U 1 1 5FA7541C
P 2500 5100
F 0 "C1" H 2618 5146 50  0000 L CNN
F 1 "0.33uF" H 2618 5055 50  0000 L CNN
F 2 "" H 2538 4950 50  0001 C CNN
F 3 "~" H 2500 5100 50  0001 C CNN
	1    2500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4950 2500 4800
Connection ~ 2500 4800
Wire Wire Line
	2500 4800 2800 4800
Wire Wire Line
	2500 5250 3100 5250
Connection ~ 3100 5250
$Comp
L Device:CP C2
U 1 1 5FA75BDB
P 3600 4950
F 0 "C2" H 3718 4996 50  0000 L CNN
F 1 "0.1uF" H 3718 4905 50  0000 L CNN
F 2 "" H 3638 4800 50  0001 C CNN
F 3 "~" H 3600 4950 50  0001 C CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
Connection ~ 3600 4800
Wire Wire Line
	3600 4800 3400 4800
Wire Wire Line
	3600 5100 3100 5100
Connection ~ 3100 5100
$Comp
L Platform-rescue:LM317_TO-220-Regulator_Linear-Platform-rescue U2
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
F 2 "" H 6588 4750 50  0001 C CNN
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
F 2 "" H 9288 4900 50  0001 C CNN
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
F 2 "" H 8238 5150 50  0001 C CNN
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
F 2 "" V 7780 4650 50  0001 C CNN
F 3 "~" H 7850 4650 50  0001 C CNN
	1    7850 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FA87CE9
P 7850 5250
F 0 "R2" H 7920 5296 50  0000 L CNN
F 1 "5.1K" H 7920 5205 50  0000 L CNN
F 2 "" V 7780 5250 50  0001 C CNN
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
	1650 3800 1650 5850
Wire Notes Line
	1650 5850 4350 5850
Wire Notes Line
	4350 5850 4350 3750
Wire Notes Line
	4350 3750 1650 3750
Text Notes 5200 800  0    50   ~ 10
12V Input Connector
Text Notes 2400 3650 0    50   ~ 10
12V to 5V LDO Regulation
Text Notes 7150 3350 0    50   ~ 10
12V to 3v3 LDO regulation
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FAB8A00
P 4650 2000
F 0 "J1" H 4568 1675 50  0000 C CNN
F 1 "12V INPUT" H 4568 1766 50  0000 C CNN
F 2 "" H 4650 2000 50  0001 C CNN
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
F 2 "" H 6200 1900 50  0001 C CNN
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
F 2 "" H 8150 1450 50  0001 C CNN
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
F 2 "" H 8850 1450 50  0001 C CNN
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
F 2 "" H 9550 1450 50  0001 C CNN
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
F 2 "" H 10250 1450 50  0001 C CNN
F 3 "~" H 10250 1450 50  0001 C CNN
	1    10250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FABFC8F
P 8150 1500
F 0 "#PWR08" H 8150 1250 50  0001 C CNN
F 1 "GND" H 8155 1327 50  0000 C CNN
F 2 "" H 8150 1500 50  0001 C CNN
F 3 "" H 8150 1500 50  0001 C CNN
	1    8150 1500
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
F 2 "" H 6400 1410 50  0001 C CNN
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
$EndSCHEMATC
