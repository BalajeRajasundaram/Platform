EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Timer_RTC:DS3231M U4
U 1 1 5FB09C8B
P 2950 2900
F 0 "U4" H 2950 2411 50  0000 C CNN
F 1 "DS3231M" H 2950 2320 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2950 2300 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 3220 2950 50  0001 C CNN
	1    2950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR042
U 1 1 5FB0AC4A
P 1700 2050
F 0 "#PWR042" H 1700 1900 50  0001 C CNN
F 1 "+3.3V" H 1715 2223 50  0000 C CNN
F 2 "" H 1700 2050 50  0001 C CNN
F 3 "" H 1700 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5FB0AFF3
P 2950 3900
F 0 "#PWR043" H 2950 3650 50  0001 C CNN
F 1 "GND" H 2955 3727 50  0000 C CNN
F 2 "" H 2950 3900 50  0001 C CNN
F 3 "" H 2950 3900 50  0001 C CNN
	1    2950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2050 1700 2250
Wire Wire Line
	1700 2250 2200 2250
Wire Wire Line
	2850 2250 2850 2500
Text GLabel 2050 2700 0    50   Input ~ 0
SCL
Text GLabel 1400 2950 0    50   Input ~ 0
SDA
Wire Wire Line
	1400 2950 1450 2950
Wire Wire Line
	1650 2950 1650 2800
Wire Wire Line
	1650 2800 2450 2800
Wire Wire Line
	2050 2700 2200 2700
Wire Wire Line
	2200 2300 2200 2250
Connection ~ 2200 2250
Wire Wire Line
	2200 2250 2850 2250
Wire Wire Line
	2200 2600 2200 2700
Connection ~ 2200 2700
Wire Wire Line
	2200 2700 2450 2700
$Comp
L Device:R R22
U 1 1 5FB0C756
P 1450 2550
F 0 "R22" H 1520 2596 50  0000 L CNN
F 1 "2K" H 1520 2505 50  0000 L CNN
F 2 "" V 1380 2550 50  0001 C CNN
F 3 "~" H 1450 2550 50  0001 C CNN
	1    1450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2700 1450 2950
Connection ~ 1450 2950
Wire Wire Line
	1450 2950 1650 2950
Wire Wire Line
	1450 2400 1450 2250
Wire Wire Line
	1450 2250 1700 2250
Connection ~ 1700 2250
$Comp
L Device:CP C9
U 1 1 5FB178E8
P 950 2400
F 0 "C9" H 1068 2446 50  0000 L TNN
F 1 "0.1U to 1UF" H 1068 2355 50  0000 R TNN
F 2 "" H 988 2250 50  0001 C CNN
F 3 "~" H 950 2400 50  0001 C CNN
	1    950  2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2250 1450 2250
Connection ~ 1450 2250
$Comp
L power:GND #PWR041
U 1 1 5FB1839E
P 950 2550
F 0 "#PWR041" H 950 2300 50  0001 C CNN
F 1 "GND" H 955 2377 50  0000 C CNN
F 2 "" H 950 2550 50  0001 C CNN
F 3 "" H 950 2550 50  0001 C CNN
	1    950  2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5FB0BB27
P 2200 2450
F 0 "R23" H 2270 2496 50  0000 L CNN
F 1 "2K" H 2270 2405 50  0000 L CNN
F 2 "" V 2130 2450 50  0001 C CNN
F 3 "~" H 2200 2450 50  0001 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
$Comp
L Timer:MCP7940N-xMS U6
U 1 1 5FB19700
P 7050 2350
F 0 "U6" H 7050 1861 50  0000 C CNN
F 1 "MCP7940N-xMS" H 7050 1770 50  0000 C CNN
F 2 "" H 7050 2350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005010F.pdf" H 7050 2350 50  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
$Comp
L Platform-rescue:BS-7-dk_Battery-Holders-Clips-Contacts BAT1
U 1 1 5FB40A5C
P 7500 1650
F 0 "BAT1" H 7628 1703 60  0000 L CNN
F 1 "BS-7    3.3V" H 7628 1597 60  0000 L CNN
F 2 "digikey-footprints:Battery_Holder_Coin_2032_BS-7" H 7700 1850 60  0001 L CNN
F 3 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" V 7700 1950 60  0001 L CNN
F 4 "BS-7-ND" H 7700 2050 60  0001 L CNN "Digi-Key_PN"
F 5 "BS-7" H 7700 2150 60  0001 L CNN "MPN"
F 6 "Battery Products" H 7700 2250 60  0001 L CNN "Category"
F 7 "Battery Holders, Clips, Contacts" H 7700 2350 60  0001 L CNN "Family"
F 8 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" H 7700 2450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/mpd-memory-protection-devices/BS-7/BS-7-ND/389447" H 7700 2550 60  0001 L CNN "DK_Detail_Page"
F 10 "BATTERY HOLDER COIN 20MM PC PIN" H 7700 2650 60  0001 L CNN "Description"
F 11 "MPD (Memory Protection Devices)" H 7700 2750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7700 2850 60  0001 L CNN "Status"
	1    7500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR049
U 1 1 5FB41B68
P 7050 1600
F 0 "#PWR049" H 7050 1450 50  0001 C CNN
F 1 "+3.3V" H 7065 1773 50  0000 C CNN
F 2 "" H 7050 1600 50  0001 C CNN
F 3 "" H 7050 1600 50  0001 C CNN
	1    7050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C10
U 1 1 5FB42048
P 5350 1800
F 0 "C10" H 5468 1846 50  0000 L TNN
F 1 "0.1U to 1UF" H 5468 1755 50  0000 R TNN
F 2 "" H 5388 1650 50  0001 C CNN
F 3 "~" H 5350 1800 50  0001 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1950 7150 1450
$Comp
L power:GND #PWR046
U 1 1 5FB45206
P 5350 1950
F 0 "#PWR046" H 5350 1700 50  0001 C CNN
F 1 "GND" H 5355 1777 50  0000 C CNN
F 2 "" H 5350 1950 50  0001 C CNN
F 3 "" H 5350 1950 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5FB45567
P 7800 1850
F 0 "#PWR052" H 7800 1600 50  0001 C CNN
F 1 "GND" H 7805 1677 50  0000 C CNN
F 2 "" H 7800 1850 50  0001 C CNN
F 3 "" H 7800 1850 50  0001 C CNN
	1    7800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1600 7050 1650
Wire Wire Line
	5350 1650 5600 1650
Connection ~ 7050 1650
Wire Wire Line
	7050 1650 7050 1950
$Comp
L Device:R R27
U 1 1 5FB471CE
P 6150 1800
F 0 "R27" H 6220 1846 50  0000 L CNN
F 1 "2K" H 6220 1755 50  0000 L CNN
F 2 "" V 6080 1800 50  0001 C CNN
F 3 "~" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
Connection ~ 6150 1650
Wire Wire Line
	6150 1650 7050 1650
$Comp
L Device:R R26
U 1 1 5FB47713
P 5750 1800
F 0 "R26" H 5820 1846 50  0000 L CNN
F 1 "2K" H 5820 1755 50  0000 L CNN
F 2 "" V 5680 1800 50  0001 C CNN
F 3 "~" H 5750 1800 50  0001 C CNN
	1    5750 1800
	1    0    0    -1  
$EndComp
Connection ~ 5750 1650
Wire Wire Line
	5750 1650 6150 1650
Wire Wire Line
	6650 2150 6150 2150
Wire Wire Line
	6150 2150 6150 2100
Wire Wire Line
	6650 2250 6150 2250
Wire Wire Line
	5750 2250 5750 1950
$Comp
L power:GND #PWR050
U 1 1 5FB48AF2
P 7050 3150
F 0 "#PWR050" H 7050 2900 50  0001 C CNN
F 1 "GND" H 7055 2977 50  0000 C CNN
F 2 "" H 7050 3150 50  0001 C CNN
F 3 "" H 7050 3150 50  0001 C CNN
	1    7050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3150 7050 2750
$Comp
L Device:R R25
U 1 1 5FB4A6F4
P 5600 2200
F 0 "R25" H 5670 2246 50  0000 L CNN
F 1 "10K" H 5670 2155 50  0000 L CNN
F 2 "" V 5530 2200 50  0001 C CNN
F 3 "~" H 5600 2200 50  0001 C CNN
	1    5600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2050 5600 1650
Connection ~ 5600 1650
Wire Wire Line
	5600 1650 5750 1650
Wire Wire Line
	5600 2350 5600 2450
Wire Wire Line
	5600 2450 6650 2450
Text GLabel 5350 2450 0    50   Input ~ 0
PA27
Wire Wire Line
	5350 2450 5600 2450
Connection ~ 5600 2450
Text GLabel 3700 3300 2    50   Input ~ 0
PA27
Wire Wire Line
	2950 3300 2950 3900
$Comp
L Device:R R24
U 1 1 5FB4ECAA
P 3600 3050
F 0 "R24" H 3670 3096 50  0000 L CNN
F 1 "10K" H 3670 3005 50  0000 L CNN
F 2 "" V 3530 3050 50  0001 C CNN
F 3 "~" H 3600 3050 50  0001 C CNN
	1    3600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR044
U 1 1 5FB4F46E
P 3600 2900
F 0 "#PWR044" H 3600 2750 50  0001 C CNN
F 1 "+3.3V" H 3615 3073 50  0000 C CNN
F 2 "" H 3600 2900 50  0001 C CNN
F 3 "" H 3600 2900 50  0001 C CNN
	1    3600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3200 3600 3300
Wire Wire Line
	3600 3300 3700 3300
Wire Wire Line
	3450 3000 3450 3300
Wire Wire Line
	3450 3300 3600 3300
Connection ~ 3600 3300
$Comp
L Memory_EEPROM:AT24CS32-SSHM U5
U 1 1 5FB524FB
P 6300 5250
F 0 "U5" H 6300 5731 50  0000 C CNN
F 1 "AT24CS32-SSHM" H 6300 5640 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 5250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8869-SEEPROM-AT24CS32-Datasheet.pdf" H 6300 5250 50  0001 C CNN
	1    6300 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR047
U 1 1 5FB52D8A
P 6300 4550
F 0 "#PWR047" H 6300 4400 50  0001 C CNN
F 1 "+3.3V" H 6315 4723 50  0000 C CNN
F 2 "" H 6300 4550 50  0001 C CNN
F 3 "" H 6300 4550 50  0001 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4550 6300 4950
$Comp
L power:GND #PWR048
U 1 1 5FB53FDB
P 6300 5750
F 0 "#PWR048" H 6300 5500 50  0001 C CNN
F 1 "GND" H 6305 5577 50  0000 C CNN
F 2 "" H 6300 5750 50  0001 C CNN
F 3 "" H 6300 5750 50  0001 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5750 6300 5650
Wire Wire Line
	5900 5350 5700 5350
Wire Wire Line
	5700 5350 5700 5650
Wire Wire Line
	5700 5650 6300 5650
Connection ~ 6300 5650
Wire Wire Line
	6300 5650 6300 5550
Wire Wire Line
	5900 5250 5700 5250
Connection ~ 5700 5350
Wire Wire Line
	5900 5150 5700 5150
Wire Wire Line
	5700 5150 5700 5250
Connection ~ 5700 5250
Wire Wire Line
	5700 5250 5700 5350
$Comp
L Device:R R28
U 1 1 5FB579ED
P 6900 5000
F 0 "R28" H 6970 5046 50  0000 L CNN
F 1 "2K" H 6970 4955 50  0000 L CNN
F 2 "" V 6830 5000 50  0001 C CNN
F 3 "~" H 6900 5000 50  0001 C CNN
	1    6900 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5FB57CB8
P 7300 5100
F 0 "R29" H 7370 5146 50  0000 L CNN
F 1 "2K" H 7370 5055 50  0000 L CNN
F 2 "" V 7230 5100 50  0001 C CNN
F 3 "~" H 7300 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5350 6850 5350
Wire Wire Line
	6850 5350 6850 5650
Wire Wire Line
	6850 5650 6300 5650
Text GLabel 6050 2100 0    50   Input ~ 0
SCL
Wire Wire Line
	6050 2100 6150 2100
Connection ~ 6150 2100
Wire Wire Line
	6150 2100 6150 1950
Text GLabel 6100 2350 0    50   Input ~ 0
SDA
Wire Wire Line
	6100 2350 6150 2350
Wire Wire Line
	6150 2350 6150 2250
Connection ~ 6150 2250
Wire Wire Line
	6150 2250 5750 2250
Wire Wire Line
	6700 5150 6900 5150
Wire Wire Line
	6700 5250 7300 5250
Wire Wire Line
	6300 4550 6900 4550
Wire Wire Line
	6900 4550 6900 4850
Connection ~ 6300 4550
Wire Wire Line
	6900 4550 7300 4550
Wire Wire Line
	7300 4550 7300 4950
Connection ~ 6900 4550
Text GLabel 7650 5250 2    50   Input ~ 0
SCL
Wire Wire Line
	7650 5250 7300 5250
Connection ~ 7300 5250
Text GLabel 7000 5150 2    50   Input ~ 0
SDA
Wire Wire Line
	7000 5150 6900 5150
Connection ~ 6900 5150
Text GLabel 2050 700  2    50   Input ~ 0
SDA
Text GLabel 2050 900  2    50   Input ~ 0
SCL
Text GLabel 1350 900  0    50   Input ~ 0
PA23
Text GLabel 1350 700  0    50   Input ~ 0
PA22
Wire Notes Line
	550  600  3150 600 
Wire Notes Line
	3150 600  3150 1300
Wire Notes Line
	3150 1300 550  1300
Wire Notes Line
	550  1300 550  600 
Wire Notes Line
	4850 1600 4850 4450
Wire Notes Line
	4850 4450 550  4450
Wire Notes Line
	550  4450 550  1600
Wire Notes Line
	550  1600 4850 1600
Wire Notes Line
	4950 950  4950 3850
Wire Notes Line
	4950 3850 10200 3850
Wire Notes Line
	10200 3850 10200 950 
Wire Notes Line
	10200 950  4950 950 
Wire Notes Line
	5150 4150 8400 4150
Wire Notes Line
	8400 4150 8400 6200
Wire Notes Line
	8400 6200 5150 6200
Wire Notes Line
	5150 6200 5150 4150
Text Label 7900 4300 0    50   ~ 0
EEPROM
Text Label 9750 1100 0    50   ~ 0
RTCC
Wire Wire Line
	7150 1450 7500 1450
Wire Wire Line
	7800 1850 7500 1850
Wire Notes Line
	2500 3400 2500 4250
Wire Notes Line
	2500 4250 600  4250
Wire Notes Line
	600  4250 600  3400
Wire Notes Line
	600  3400 2500 3400
Text Notes 800  3850 0    50   ~ 0
Reset pin is internally tied to High and \nrecommended not to use external pullup
$Comp
L Connector:TestPoint TP1
U 1 1 5FB718D1
P 1800 3150
F 0 "TP1" H 1858 3268 50  0000 L CNN
F 1 "TestPoint" H 1858 3177 50  0000 L CNN
F 2 "" H 2000 3150 50  0001 C CNN
F 3 "~" H 2000 3150 50  0001 C CNN
	1    1800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3150 2450 3150
Wire Wire Line
	2450 3150 2450 3100
$Comp
L Connector:TestPoint TP2
U 1 1 5FB7652B
P 3600 2550
F 0 "TP2" H 3658 2668 50  0000 L CNN
F 1 "TestPoint" H 3658 2577 50  0000 L CNN
F 2 "" H 3800 2550 50  0001 C CNN
F 3 "~" H 3800 2550 50  0001 C CNN
	1    3600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2550 3600 2700
Wire Wire Line
	3600 2700 3450 2700
$Comp
L Device:R_Small R30
U 1 1 5FB9B802
P 1700 700
F 0 "R30" V 1650 600 50  0000 C CNN
F 1 "0E" V 1750 700 50  0000 C CNN
F 2 "" H 1700 700 50  0001 C CNN
F 3 "~" H 1700 700 50  0001 C CNN
	1    1700 700 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R31
U 1 1 5FB9BF59
P 1700 900
F 0 "R31" V 1650 800 50  0000 C CNN
F 1 "0E" V 1800 900 50  0000 C CNN
F 2 "" H 1700 900 50  0001 C CNN
F 3 "~" H 1700 900 50  0001 C CNN
	1    1700 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 900  1600 900 
Wire Wire Line
	1800 900  2050 900 
Wire Wire Line
	2050 700  1800 700 
Wire Wire Line
	1600 700  1350 700 
Text Notes 950  1200 0    50   ~ 0
added 0ohm resistors for easy rework.
$Comp
L Device:Crystal_GND2 Y1
U 1 1 5FBAC838
P 7950 2350
F 0 "Y1" V 7996 2481 50  0000 L CNN
F 1 "32KHz crystal" V 8150 1750 50  0000 L CNN
F 2 "" H 7950 2350 50  0001 C CNN
F 3 "~" H 7950 2350 50  0001 C CNN
	1    7950 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 2250 7650 2250
Wire Wire Line
	7650 2250 7650 2100
Wire Wire Line
	7650 2100 7950 2100
Wire Wire Line
	7950 2100 7950 2200
Wire Wire Line
	7450 2450 7650 2450
Wire Wire Line
	7650 2450 7650 2600
Wire Wire Line
	7650 2600 7950 2600
Wire Wire Line
	7950 2600 7950 2500
$Comp
L power:GND #PWR051
U 1 1 5FBB214B
P 8250 2450
F 0 "#PWR051" H 8250 2200 50  0001 C CNN
F 1 "GND" H 8255 2277 50  0000 C CNN
F 2 "" H 8250 2450 50  0001 C CNN
F 3 "" H 8250 2450 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2350 8250 2350
Wire Wire Line
	8250 2350 8250 2450
Text GLabel 7600 1300 2    50   Output ~ 0
VBAT
Wire Wire Line
	7600 1300 7500 1300
Wire Wire Line
	7500 1300 7500 1450
Connection ~ 7500 1450
Text GLabel 3050 2250 2    50   Input ~ 0
VBAT
Wire Wire Line
	3050 2250 2950 2250
Wire Wire Line
	2950 2250 2950 2500
$EndSCHEMATC
