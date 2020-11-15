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
L Timer_RTC:DS3231M U?
U 1 1 5FB09C8B
P 2800 2350
F 0 "U?" H 2800 1861 50  0000 C CNN
F 1 "DS3231M" H 2800 1770 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2800 1750 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 3070 2400 50  0001 C CNN
	1    2800 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB0AC4A
P 1550 1500
F 0 "#PWR?" H 1550 1350 50  0001 C CNN
F 1 "+3.3V" H 1565 1673 50  0000 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB0AFF3
P 2800 3350
F 0 "#PWR?" H 2800 3100 50  0001 C CNN
F 1 "GND" H 2805 3177 50  0000 C CNN
F 2 "" H 2800 3350 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3350 2800 3200
Wire Wire Line
	1550 1500 1550 1700
Wire Wire Line
	1550 1700 2050 1700
Wire Wire Line
	2700 1700 2700 1950
Text GLabel 1900 2150 0    50   Input ~ 0
SCL
Text GLabel 1250 2400 0    50   Input ~ 0
SDA
Wire Wire Line
	1250 2400 1300 2400
Wire Wire Line
	1500 2400 1500 2250
Wire Wire Line
	1500 2250 2300 2250
Wire Wire Line
	1900 2150 2050 2150
Wire Wire Line
	2050 1750 2050 1700
Connection ~ 2050 1700
Wire Wire Line
	2050 1700 2700 1700
Wire Wire Line
	2050 2050 2050 2150
Connection ~ 2050 2150
Wire Wire Line
	2050 2150 2300 2150
$Comp
L Device:R R?
U 1 1 5FB0C756
P 1300 2000
F 0 "R?" H 1370 2046 50  0000 L CNN
F 1 "2K" H 1370 1955 50  0000 L CNN
F 2 "" V 1230 2000 50  0001 C CNN
F 3 "~" H 1300 2000 50  0001 C CNN
	1    1300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2150 1300 2400
Connection ~ 1300 2400
Wire Wire Line
	1300 2400 1500 2400
Wire Wire Line
	1300 1850 1300 1700
Wire Wire Line
	1300 1700 1550 1700
Connection ~ 1550 1700
NoConn ~ 3300 2150
NoConn ~ 3300 2450
NoConn ~ 2300 2550
$Comp
L dk_Battery-Holders-Clips-Contacts:BS-7 BAT?
U 1 1 5FB1565A
P 3800 2100
F 0 "BAT?" H 3928 2153 60  0000 L CNN
F 1 "BS-7    3.3V" H 3928 2047 60  0000 L CNN
F 2 "digikey-footprints:Battery_Holder_Coin_2032_BS-7" H 4000 2300 60  0001 L CNN
F 3 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" V 4000 2400 60  0001 L CNN
F 4 "BS-7-ND" H 4000 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "BS-7" H 4000 2600 60  0001 L CNN "MPN"
F 6 "Battery Products" H 4000 2700 60  0001 L CNN "Category"
F 7 "Battery Holders, Clips, Contacts" H 4000 2800 60  0001 L CNN "Family"
F 8 "http://www.memoryprotectiondevices.com/datasheets/BS-7-datasheet.pdf" H 4000 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/mpd-memory-protection-devices/BS-7/BS-7-ND/389447" H 4000 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "BATTERY HOLDER COIN 20MM PC PIN" H 4000 3100 60  0001 L CNN "Description"
F 11 "MPD (Memory Protection Devices)" H 4000 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4000 3300 60  0001 L CNN "Status"
	1    3800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1900 3800 1700
Wire Wire Line
	3800 1700 2800 1700
Wire Wire Line
	2800 1700 2800 1950
Wire Wire Line
	3800 2300 3800 3200
Wire Wire Line
	3800 3200 2800 3200
Connection ~ 2800 3200
Wire Wire Line
	2800 3200 2800 2750
$Comp
L Device:CP C?
U 1 1 5FB178E8
P 800 1850
F 0 "C?" H 918 1896 50  0000 L TNN
F 1 "0.1U to 1UF" H 918 1805 50  0000 R TNN
F 2 "" H 838 1700 50  0001 C CNN
F 3 "~" H 800 1850 50  0001 C CNN
	1    800  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1700 1300 1700
Connection ~ 1300 1700
$Comp
L power:GND #PWR?
U 1 1 5FB1839E
P 800 2000
F 0 "#PWR?" H 800 1750 50  0001 C CNN
F 1 "GND" H 805 1827 50  0000 C CNN
F 2 "" H 800 2000 50  0001 C CNN
F 3 "" H 800 2000 50  0001 C CNN
	1    800  2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FB0BB27
P 2050 1900
F 0 "R?" H 2120 1946 50  0000 L CNN
F 1 "2K" H 2120 1855 50  0000 L CNN
F 2 "" V 1980 1900 50  0001 C CNN
F 3 "~" H 2050 1900 50  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L Timer:MCP7940N-xMS U?
U 1 1 5FB19700
P 7050 2350
F 0 "U?" H 7050 1861 50  0000 C CNN
F 1 "MCP7940N-xMS" H 7050 1770 50  0000 C CNN
F 2 "" H 7050 2350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005010F.pdf" H 7050 2350 50  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
$Comp
L 2020-11-15_04-15-54:ECS-.327-6-17X-TR XTAL?
U 1 1 5FB1EC3B
P 8100 2150
F 0 "XTAL?" H 8900 2537 60  0000 C CNN
F 1 "ECS-.327-6-17X-TR" H 8900 2431 60  0000 C CNN
F 2 "XTAL_7X-TR_ECS" H 8900 2390 60  0001 C CNN
F 3 "" H 8100 2150 60  0000 C CNN
	1    8100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2150 7450 2150
Wire Wire Line
	7450 2150 7450 2250
Wire Wire Line
	9700 2250 9700 2700
Wire Wire Line
	9700 2700 7450 2700
Wire Wire Line
	7450 2700 7450 2450
$Comp
L power:GND #PWR?
U 1 1 5FB2053E
P 8100 2250
F 0 "#PWR?" H 8100 2000 50  0001 C CNN
F 1 "GND" H 8105 2077 50  0000 C CNN
F 2 "" H 8100 2250 50  0001 C CNN
F 3 "" H 8100 2250 50  0001 C CNN
	1    8100 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB20AAC
P 9700 2150
F 0 "#PWR?" H 9700 1900 50  0001 C CNN
F 1 "GND" V 9705 2022 50  0000 R CNN
F 2 "" H 9700 2150 50  0001 C CNN
F 3 "" H 9700 2150 50  0001 C CNN
	1    9700 2150
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
