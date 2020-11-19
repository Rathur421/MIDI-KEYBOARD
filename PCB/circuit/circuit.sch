EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VeloceKey Project"
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R RWM1
U 1 1 5F15CDC2
P 4300 950
F 0 "RWM1" V 4093 950 50  0000 C CNN
F 1 "R" V 4184 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 950 50  0001 C CNN
F 3 "~" H 4300 950 50  0001 C CNN
	1    4300 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 950  4650 950 
$Comp
L Device:R R8W1
U 1 1 5F255790
P 7200 1900
F 0 "R8W1" H 7130 1854 50  0000 R CNN
F 1 "47K" H 7130 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 1900 50  0001 C CNN
F 3 "~" H 7200 1900 50  0001 C CNN
	1    7200 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6W1
U 1 1 5F2551BF
P 6700 1900
F 0 "R6W1" H 6630 1854 50  0000 R CNN
F 1 "47K" H 6630 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 1900 50  0001 C CNN
F 3 "~" H 6700 1900 50  0001 C CNN
	1    6700 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5W1
U 1 1 5F254EC5
P 6450 1900
F 0 "R5W1" H 6380 1854 50  0000 R CNN
F 1 "47K" H 6380 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 1900 50  0001 C CNN
F 3 "~" H 6450 1900 50  0001 C CNN
	1    6450 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4W1
U 1 1 5F254B43
P 6200 1900
F 0 "R4W1" H 6130 1854 50  0000 R CNN
F 1 "47K" H 6130 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 1900 50  0001 C CNN
F 3 "~" H 6200 1900 50  0001 C CNN
	1    6200 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3W1
U 1 1 5F254787
P 5950 1900
F 0 "R3W1" H 5880 1854 50  0000 R CNN
F 1 "47K" H 5880 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 1900 50  0001 C CNN
F 3 "~" H 5950 1900 50  0001 C CNN
	1    5950 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2W1
U 1 1 5F25462F
P 5700 1900
F 0 "R2W1" H 5630 1854 50  0000 R CNN
F 1 "47K" H 5630 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 1900 50  0001 C CNN
F 3 "~" H 5700 1900 50  0001 C CNN
	1    5700 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1W1
U 1 1 5F185129
P 5450 1900
F 0 "R1W1" H 5380 1854 50  0000 R CNN
F 1 "47K" H 5380 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 1900 50  0001 C CNN
F 3 "~" H 5450 1900 50  0001 C CNN
	1    5450 1900
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC4051 WRITEMUX1
U 1 1 5F15D5C2
P 4950 1250
F 0 "WRITEMUX1" H 5000 1931 50  0000 C CNN
F 1 "74HC4051" H 5000 1840 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 4950 850 50  0001 C CNN
	1    4950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 950  5450 950 
Wire Wire Line
	7300 1050 5700 1050
Wire Wire Line
	5350 1150 5950 1150
Wire Wire Line
	7300 1250 6200 1250
Wire Wire Line
	7300 1350 6450 1350
Wire Wire Line
	7300 1450 6700 1450
Wire Wire Line
	7300 1550 6950 1550
Wire Wire Line
	7300 1650 7200 1650
Wire Wire Line
	5450 1750 5450 950 
Connection ~ 5450 950 
Wire Wire Line
	5450 950  7300 950 
Wire Wire Line
	5700 1750 5700 1050
Connection ~ 5700 1050
Wire Wire Line
	5700 1050 5350 1050
Wire Wire Line
	5950 1750 5950 1150
Connection ~ 5950 1150
Wire Wire Line
	5950 1150 7300 1150
Wire Wire Line
	6200 1750 6200 1250
Connection ~ 6200 1250
Wire Wire Line
	6200 1250 5350 1250
Wire Wire Line
	6450 1750 6450 1350
Connection ~ 6450 1350
Wire Wire Line
	6450 1350 5350 1350
Wire Wire Line
	6700 1750 6700 1450
Connection ~ 6700 1450
Wire Wire Line
	6700 1450 5350 1450
Wire Wire Line
	6950 1750 6950 1550
Connection ~ 6950 1550
Wire Wire Line
	6950 1550 5350 1550
Wire Wire Line
	7200 1750 7200 1650
Connection ~ 7200 1650
Wire Wire Line
	7200 1650 5350 1650
Wire Wire Line
	5450 2050 5700 2050
Connection ~ 5700 2050
Wire Wire Line
	5700 2050 5950 2050
Connection ~ 5950 2050
Wire Wire Line
	5950 2050 6200 2050
Connection ~ 6200 2050
Wire Wire Line
	6200 2050 6300 2050
Connection ~ 6450 2050
Wire Wire Line
	6450 2050 6700 2050
Connection ~ 6700 2050
Wire Wire Line
	6700 2050 6950 2050
Connection ~ 6950 2050
Wire Wire Line
	6950 2050 7200 2050
$Comp
L Device:R R7W1
U 1 1 5F255556
P 6950 1900
F 0 "R7W1" H 6880 1854 50  0000 R CNN
F 1 "47K" H 6880 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 1900 50  0001 C CNN
F 3 "~" H 6950 1900 50  0001 C CNN
	1    6950 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 1550 4500 1550
Wire Wire Line
	4950 1850 4500 1850
Wire Wire Line
	4500 1550 4500 1850
Wire Wire Line
	4500 1850 4500 1950
Connection ~ 4500 1850
Wire Wire Line
	5050 1850 5050 1950
Wire Wire Line
	5050 1950 4500 1950
Wire Wire Line
	4500 1850 4300 1850
Wire Wire Line
	4950 750  4950 600 
Wire Wire Line
	4950 600  4300 600 
$Comp
L power:+5V #PWR08
U 1 1 5F38D640
P 4300 600
F 0 "#PWR08" H 4300 450 50  0001 C CNN
F 1 "+5V" V 4315 728 50  0000 L CNN
F 2 "" H 4300 600 50  0001 C CNN
F 3 "" H 4300 600 50  0001 C CNN
	1    4300 600 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F38ED9F
P 4300 1850
F 0 "#PWR09" H 4300 1600 50  0001 C CNN
F 1 "GND" H 4305 1677 50  0000 C CNN
F 2 "" H 4300 1850 50  0001 C CNN
F 3 "" H 4300 1850 50  0001 C CNN
	1    4300 1850
	1    0    0    -1  
$EndComp
Connection ~ 6300 2050
Wire Wire Line
	6300 2050 6450 2050
$Comp
L power:GND #PWR014
U 1 1 5F38F4C8
P 6300 2050
F 0 "#PWR014" H 6300 1800 50  0001 C CNN
F 1 "GND" H 6305 1877 50  0000 C CNN
F 2 "" H 6300 2050 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1350 4300 1350
Wire Wire Line
	4650 1250 4300 1250
Wire Wire Line
	4650 1150 4300 1150
$Comp
L Device:R RWM2
U 1 1 5F3CEE02
P 4300 2700
F 0 "RWM2" V 4093 2700 50  0000 C CNN
F 1 "R" V 4184 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 2700 50  0001 C CNN
F 3 "~" H 4300 2700 50  0001 C CNN
	1    4300 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2700 4650 2700
$Comp
L 74xx:74HC4051 WRITEMUX2
U 1 1 5F3CEE3A
P 4950 3000
F 0 "WRITEMUX2" H 5000 3681 50  0000 C CNN
F 1 "74HC4051" H 5000 3590 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 4950 2600 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2700 5450 2700
Wire Wire Line
	7300 2800 5700 2800
Wire Wire Line
	5350 2900 5950 2900
Wire Wire Line
	7300 3000 6200 3000
Wire Wire Line
	7300 3100 6450 3100
Wire Wire Line
	7300 3200 6700 3200
Wire Wire Line
	7300 3300 6950 3300
Wire Wire Line
	7300 3400 7200 3400
Wire Wire Line
	5450 3500 5450 2700
Connection ~ 5450 2700
Wire Wire Line
	5450 2700 7300 2700
Wire Wire Line
	5700 3500 5700 2800
Connection ~ 5700 2800
Wire Wire Line
	5700 2800 5350 2800
Wire Wire Line
	5950 3500 5950 2900
Connection ~ 5950 2900
Wire Wire Line
	5950 2900 7300 2900
Wire Wire Line
	6200 3500 6200 3000
Connection ~ 6200 3000
Wire Wire Line
	6200 3000 5350 3000
Wire Wire Line
	6450 3500 6450 3100
Connection ~ 6450 3100
Wire Wire Line
	6450 3100 5350 3100
Wire Wire Line
	6700 3500 6700 3200
Connection ~ 6700 3200
Wire Wire Line
	6700 3200 5350 3200
Wire Wire Line
	6950 3500 6950 3300
Connection ~ 6950 3300
Wire Wire Line
	6950 3300 5350 3300
Wire Wire Line
	7200 3500 7200 3400
Connection ~ 7200 3400
Wire Wire Line
	7200 3400 5350 3400
Wire Wire Line
	4650 3300 4500 3300
Wire Wire Line
	4950 3600 4500 3600
Wire Wire Line
	4500 3300 4500 3600
Wire Wire Line
	4500 3600 4500 3700
Connection ~ 4500 3600
Wire Wire Line
	5050 3600 5050 3700
Wire Wire Line
	5050 3700 4500 3700
Wire Wire Line
	4500 3600 4300 3600
Wire Wire Line
	4950 2500 4950 2350
Wire Wire Line
	4950 2350 4300 2350
$Comp
L power:+5V #PWR010
U 1 1 5F3CEE7D
P 4300 2350
F 0 "#PWR010" H 4300 2200 50  0001 C CNN
F 1 "+5V" V 4315 2478 50  0000 L CNN
F 2 "" H 4300 2350 50  0001 C CNN
F 3 "" H 4300 2350 50  0001 C CNN
	1    4300 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F3CEE83
P 4300 3600
F 0 "#PWR011" H 4300 3350 50  0001 C CNN
F 1 "GND" H 4305 3427 50  0000 C CNN
F 2 "" H 4300 3600 50  0001 C CNN
F 3 "" H 4300 3600 50  0001 C CNN
	1    4300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3100 4300 3100
Wire Wire Line
	4650 3000 4300 3000
Wire Wire Line
	4650 2900 4300 2900
$Comp
L Device:R RWM3
U 1 1 5F3DA1EA
P 4300 4550
F 0 "RWM3" V 4093 4550 50  0000 C CNN
F 1 "R" V 4184 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 4550 50  0001 C CNN
F 3 "~" H 4300 4550 50  0001 C CNN
	1    4300 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 4550 4650 4550
$Comp
L 74xx:74HC4051 WRITEMUX3
U 1 1 5F3DA222
P 4950 4850
F 0 "WRITEMUX3" H 5000 5531 50  0000 C CNN
F 1 "74HC4051" H 5000 5440 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 4950 4450 50  0001 C CNN
	1    4950 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4550 5450 4550
Wire Wire Line
	7300 4650 5700 4650
Wire Wire Line
	5350 4750 5950 4750
Wire Wire Line
	7300 4850 6200 4850
Wire Wire Line
	7300 4950 6450 4950
Wire Wire Line
	7300 5050 6700 5050
Wire Wire Line
	7300 5150 6950 5150
Wire Wire Line
	7300 5250 7200 5250
Wire Wire Line
	5450 5350 5450 4550
Connection ~ 5450 4550
Wire Wire Line
	5450 4550 7300 4550
Wire Wire Line
	5700 5350 5700 4650
Connection ~ 5700 4650
Wire Wire Line
	5700 4650 5350 4650
Wire Wire Line
	5950 5350 5950 4750
Connection ~ 5950 4750
Wire Wire Line
	5950 4750 7300 4750
Wire Wire Line
	6200 5350 6200 4850
Connection ~ 6200 4850
Wire Wire Line
	6200 4850 5350 4850
Wire Wire Line
	6450 5350 6450 4950
Connection ~ 6450 4950
Wire Wire Line
	6450 4950 5350 4950
Wire Wire Line
	6700 5350 6700 5050
Connection ~ 6700 5050
Wire Wire Line
	6700 5050 5350 5050
Wire Wire Line
	6950 5350 6950 5150
Connection ~ 6950 5150
Wire Wire Line
	6950 5150 5350 5150
Wire Wire Line
	7200 5350 7200 5250
Connection ~ 7200 5250
Wire Wire Line
	7200 5250 5350 5250
Wire Wire Line
	4650 5150 4500 5150
Wire Wire Line
	4950 5450 4500 5450
Wire Wire Line
	4500 5150 4500 5450
Wire Wire Line
	4500 5450 4500 5550
Connection ~ 4500 5450
Wire Wire Line
	5050 5450 5050 5550
Wire Wire Line
	5050 5550 4500 5550
Wire Wire Line
	4500 5450 4300 5450
Wire Wire Line
	4950 4350 4950 4200
Wire Wire Line
	4950 4200 4300 4200
$Comp
L power:+5V #PWR012
U 1 1 5F3DA265
P 4300 4200
F 0 "#PWR012" H 4300 4050 50  0001 C CNN
F 1 "+5V" V 4315 4328 50  0000 L CNN
F 2 "" H 4300 4200 50  0001 C CNN
F 3 "" H 4300 4200 50  0001 C CNN
	1    4300 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F3DA26B
P 4300 5450
F 0 "#PWR013" H 4300 5200 50  0001 C CNN
F 1 "GND" H 4305 5277 50  0000 C CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0001 C CNN
	1    4300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4950 4300 4950
Wire Wire Line
	4650 4850 4300 4850
Wire Wire Line
	4650 4750 4300 4750
$Comp
L Device:R RRM1
U 1 1 5F3F12A9
P 2400 2800
F 0 "RRM1" V 2193 2800 50  0000 C CNN
F 1 "R" V 2284 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2330 2800 50  0001 C CNN
F 3 "~" H 2400 2800 50  0001 C CNN
	1    2400 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 2050 2400 2650
Wire Wire Line
	2400 2950 2400 3150
$Comp
L 74xx:74HC4051 READMUX1
U 1 1 5F3F12E1
P 2100 3450
F 0 "READMUX1" H 2150 4131 50  0000 C CNN
F 1 "74HC4051" H 2150 4040 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2100 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 2100 3050 50  0001 C CNN
	1    2100 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3850 2400 3950
Wire Wire Line
	2300 5800 2300 4200
Wire Wire Line
	2200 3850 2200 4450
Wire Wire Line
	2100 5800 2100 4700
Wire Wire Line
	2000 5800 2000 4950
Wire Wire Line
	1900 5800 1900 5200
Wire Wire Line
	1800 5800 1800 5450
Wire Wire Line
	1700 5800 1700 5700
Wire Wire Line
	1600 3950 2400 3950
Connection ~ 2400 3950
Wire Wire Line
	2400 3950 2400 5800
Wire Wire Line
	1600 4200 2300 4200
Connection ~ 2300 4200
Wire Wire Line
	2300 4200 2300 3850
Wire Wire Line
	1600 4450 2200 4450
Connection ~ 2200 4450
Wire Wire Line
	2200 4450 2200 5800
Wire Wire Line
	1600 4700 2100 4700
Connection ~ 2100 4700
Wire Wire Line
	2100 4700 2100 3850
Wire Wire Line
	1600 4950 2000 4950
Connection ~ 2000 4950
Wire Wire Line
	2000 4950 2000 3850
Wire Wire Line
	1600 5200 1900 5200
Connection ~ 1900 5200
Wire Wire Line
	1900 5200 1900 3850
Wire Wire Line
	1600 5450 1800 5450
Connection ~ 1800 5450
Wire Wire Line
	1800 5450 1800 3850
Wire Wire Line
	1600 5700 1700 5700
Connection ~ 1700 5700
Wire Wire Line
	1700 5700 1700 3850
Wire Wire Line
	1800 3150 1800 3000
Wire Wire Line
	1500 3450 1500 3000
Wire Wire Line
	1800 3000 1500 3000
Wire Wire Line
	1500 3000 1400 3000
Connection ~ 1500 3000
Wire Wire Line
	1500 3550 1400 3550
Wire Wire Line
	1400 3550 1400 3000
Wire Wire Line
	1500 3000 1500 2800
Wire Wire Line
	2600 3450 2750 3450
Wire Wire Line
	2750 3450 2750 2800
$Comp
L power:+5V #PWR07
U 1 1 5F3F1324
P 2750 2800
F 0 "#PWR07" H 2750 2650 50  0001 C CNN
F 1 "+5V" V 2765 2928 50  0000 L CNN
F 2 "" H 2750 2800 50  0001 C CNN
F 3 "" H 2750 2800 50  0001 C CNN
	1    2750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F3F132A
P 1500 2800
F 0 "#PWR06" H 1500 2550 50  0001 C CNN
F 1 "GND" H 1505 2627 50  0000 C CNN
F 2 "" H 1500 2800 50  0001 C CNN
F 3 "" H 1500 2800 50  0001 C CNN
	1    1500 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3150 2000 2800
Wire Wire Line
	2100 3150 2100 2800
Wire Wire Line
	2200 3150 2200 2800
Text Label 4300 1150 0    50   ~ 0
8
Text Label 4300 1250 0    50   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 4300 1350 0    60   ~ 0
10(**/SS)
Text Label 4300 2900 0    50   ~ 0
8
Text Label 4300 3000 0    50   ~ 0
9(**)
Text Label 4300 3100 0    60   ~ 0
10(**/SS)
Text Label 4300 4750 0    50   ~ 0
8
Text Label 4300 4850 0    50   ~ 0
9(**)
Text Label 4300 4950 0    60   ~ 0
10(**/SS)
Wire Wire Line
	4150 2700 3450 2700
Wire Wire Line
	3450 4550 4150 4550
Wire Wire Line
	4150 950  3400 950 
Text Label 3400 950  0    60   ~ 0
11(**/MOSI)
Text Label 3450 4550 0    60   ~ 0
13(SCK)
Text Label 2400 2050 0    60   ~ 0
A0
Text Label 2200 2800 3    60   ~ 0
5(**)
Text Label 2100 2800 3    60   ~ 0
6(**)
Text Label 2000 2800 3    60   ~ 0
7
Text Label 3450 2700 0    60   ~ 0
12(MISO)
$Comp
L Connector_Generic:Conn_01x08 P10
U 1 1 5F1E77B4
P 7500 1250
F 0 "P10" H 7500 750 50  0000 C CNN
F 1 "WriteMux1conn" V 7600 1250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" V 7650 1200 39  0000 C CNN
F 3 "" H 7500 1250 50  0000 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P11
U 1 1 5F1E816A
P 7500 3000
F 0 "P11" H 7500 2500 50  0000 C CNN
F 1 "WriteMux2conn" V 7600 3000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" V 7650 2950 39  0000 C CNN
F 3 "" H 7500 3000 50  0000 C CNN
	1    7500 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P12
U 1 1 5F1E89F9
P 7500 4850
F 0 "P12" H 7500 4350 50  0000 C CNN
F 1 "WriteMux3conn" V 7600 4850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" V 7650 4800 39  0000 C CNN
F 3 "" H 7500 4850 50  0000 C CNN
	1    7500 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P9
U 1 1 5F1E91C4
P 2100 6000
F 0 "P9" H 2100 5500 50  0000 C CNN
F 1 "ReadMuxconn" V 2200 6000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" V 2250 5950 20  0000 C CNN
F 3 "" H 2100 6000 50  0000 C CNN
	1    2100 6000
	0    1    1    0   
$EndComp
Wire Notes Line
	3250 550  8050 550 
Wire Notes Line
	8050 550  8050 6000
Wire Notes Line
	3250 6000 8050 6000
Wire Notes Line
	750  1800 750  6300
Wire Notes Line
	750  6300 3100 6300
Text Notes 7100 5950 0    50   ~ 0
WRITE PART FOR INPUT
Text Notes 2150 6250 0    50   ~ 0
READ PART FOR INPUT
Wire Notes Line
	3100 1800 750  1800
Text Notes 2550 1500 0    50   ~ 0
SCREEN PART\n
Wire Notes Line
	1200 1550 1200 550 
Wire Notes Line
	3100 1550 1200 1550
Wire Notes Line
	1200 550  3100 550 
Wire Wire Line
	1650 1050 1650 1250
$Comp
L power:GND #PWR018
U 1 1 5F1E6AB8
P 1650 1250
F 0 "#PWR018" H 1650 1000 50  0001 C CNN
F 1 "GND" H 1655 1077 50  0000 C CNN
F 2 "" H 1650 1250 50  0001 C CNN
F 3 "" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5F1E5FCC
P 1650 950
F 0 "#PWR017" H 1650 800 50  0001 C CNN
F 1 "+5V" V 1650 1150 50  0000 C CNN
F 2 "" H 1650 950 50  0000 C CNN
F 3 "" H 1650 950 50  0000 C CNN
	1    1650 950 
	0    -1   -1   0   
$EndComp
Text Label 1650 850  0    60   ~ 0
A4(SDA)
Text Label 1650 750  0    60   ~ 0
A5(SCL)
Wire Wire Line
	2250 1050 1650 1050
Wire Wire Line
	2250 950  1650 950 
Wire Wire Line
	2250 850  1650 850 
Wire Wire Line
	2250 750  1650 750 
$Comp
L Connector_Generic:Conn_01x04 ScreenConn1
U 1 1 5F186E36
P 2450 850
F 0 "ScreenConn1" H 2530 842 50  0000 L CNN
F 1 "Conn_01x04" H 2530 751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 2450 850 50  0001 C CNN
F 3 "~" H 2450 850 50  0001 C CNN
	1    2450 850 
	1    0    0    -1  
$EndComp
Wire Notes Line
	3100 1800 3100 6300
Wire Notes Line
	3250 6000 3250 550 
Wire Notes Line
	3100 550  3100 1550
$Comp
L Device:R R8W2
U 1 1 5F40C735
P 7200 3650
F 0 "R8W2" H 7130 3604 50  0000 R CNN
F 1 "47K" H 7130 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 3650 50  0001 C CNN
F 3 "~" H 7200 3650 50  0001 C CNN
	1    7200 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6W2
U 1 1 5F40C73B
P 6700 3650
F 0 "R6W2" H 6630 3604 50  0000 R CNN
F 1 "47K" H 6630 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6700 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5W2
U 1 1 5F40C741
P 6450 3650
F 0 "R5W2" H 6380 3604 50  0000 R CNN
F 1 "47K" H 6380 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 3650 50  0001 C CNN
F 3 "~" H 6450 3650 50  0001 C CNN
	1    6450 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4W2
U 1 1 5F40C747
P 6200 3650
F 0 "R4W2" H 6130 3604 50  0000 R CNN
F 1 "47K" H 6130 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 3650 50  0001 C CNN
F 3 "~" H 6200 3650 50  0001 C CNN
	1    6200 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3W2
U 1 1 5F40C74D
P 5950 3650
F 0 "R3W2" H 5880 3604 50  0000 R CNN
F 1 "47K" H 5880 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 3650 50  0001 C CNN
F 3 "~" H 5950 3650 50  0001 C CNN
	1    5950 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2W2
U 1 1 5F40C753
P 5700 3650
F 0 "R2W2" H 5630 3604 50  0000 R CNN
F 1 "47K" H 5630 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 3650 50  0001 C CNN
F 3 "~" H 5700 3650 50  0001 C CNN
	1    5700 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1W2
U 1 1 5F40C759
P 5450 3650
F 0 "R1W2" H 5380 3604 50  0000 R CNN
F 1 "47K" H 5380 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 3650 50  0001 C CNN
F 3 "~" H 5450 3650 50  0001 C CNN
	1    5450 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 3800 5700 3800
Connection ~ 5700 3800
Wire Wire Line
	5700 3800 5950 3800
Connection ~ 5950 3800
Wire Wire Line
	5950 3800 6200 3800
Connection ~ 6200 3800
Wire Wire Line
	6200 3800 6300 3800
Connection ~ 6450 3800
Wire Wire Line
	6450 3800 6700 3800
Connection ~ 6700 3800
Wire Wire Line
	6700 3800 6950 3800
Connection ~ 6950 3800
Wire Wire Line
	6950 3800 7200 3800
$Comp
L Device:R R7W2
U 1 1 5F40C76C
P 6950 3650
F 0 "R7W2" H 6880 3604 50  0000 R CNN
F 1 "47K" H 6880 3695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 3650 50  0001 C CNN
F 3 "~" H 6950 3650 50  0001 C CNN
	1    6950 3650
	-1   0    0    1   
$EndComp
Connection ~ 6300 3800
Wire Wire Line
	6300 3800 6450 3800
$Comp
L power:GND #PWR0101
U 1 1 5F40C774
P 6300 3800
F 0 "#PWR0101" H 6300 3550 50  0001 C CNN
F 1 "GND" H 6305 3627 50  0000 C CNN
F 2 "" H 6300 3800 50  0001 C CNN
F 3 "" H 6300 3800 50  0001 C CNN
	1    6300 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8W3
U 1 1 5F41E55A
P 7200 5500
F 0 "R8W3" H 7130 5454 50  0000 R CNN
F 1 "47K" H 7130 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6W3
U 1 1 5F41E560
P 6700 5500
F 0 "R6W3" H 6630 5454 50  0000 R CNN
F 1 "47K" H 6630 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 5500 50  0001 C CNN
F 3 "~" H 6700 5500 50  0001 C CNN
	1    6700 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5W3
U 1 1 5F41E566
P 6450 5500
F 0 "R5W3" H 6380 5454 50  0000 R CNN
F 1 "47K" H 6380 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6380 5500 50  0001 C CNN
F 3 "~" H 6450 5500 50  0001 C CNN
	1    6450 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4W3
U 1 1 5F41E56C
P 6200 5500
F 0 "R4W3" H 6130 5454 50  0000 R CNN
F 1 "47K" H 6130 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 5500 50  0001 C CNN
F 3 "~" H 6200 5500 50  0001 C CNN
	1    6200 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3W3
U 1 1 5F41E572
P 5950 5500
F 0 "R3W3" H 5880 5454 50  0000 R CNN
F 1 "47K" H 5880 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 5500 50  0001 C CNN
F 3 "~" H 5950 5500 50  0001 C CNN
	1    5950 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2W3
U 1 1 5F41E578
P 5700 5500
F 0 "R2W3" H 5630 5454 50  0000 R CNN
F 1 "47K" H 5630 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 5500 50  0001 C CNN
F 3 "~" H 5700 5500 50  0001 C CNN
	1    5700 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1W3
U 1 1 5F41E57E
P 5450 5500
F 0 "R1W3" H 5380 5454 50  0000 R CNN
F 1 "47K" H 5380 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 5500 50  0001 C CNN
F 3 "~" H 5450 5500 50  0001 C CNN
	1    5450 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 5650 5700 5650
Connection ~ 5700 5650
Wire Wire Line
	5700 5650 5950 5650
Connection ~ 5950 5650
Wire Wire Line
	5950 5650 6200 5650
Connection ~ 6200 5650
Wire Wire Line
	6200 5650 6300 5650
Connection ~ 6450 5650
Wire Wire Line
	6450 5650 6700 5650
Connection ~ 6700 5650
Wire Wire Line
	6700 5650 6950 5650
Connection ~ 6950 5650
Wire Wire Line
	6950 5650 7200 5650
$Comp
L Device:R R7W3
U 1 1 5F41E591
P 6950 5500
F 0 "R7W3" H 6880 5454 50  0000 R CNN
F 1 "47K" H 6880 5545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 5500 50  0001 C CNN
F 3 "~" H 6950 5500 50  0001 C CNN
	1    6950 5500
	-1   0    0    1   
$EndComp
Connection ~ 6300 5650
Wire Wire Line
	6300 5650 6450 5650
$Comp
L power:GND #PWR0102
U 1 1 5F41E599
P 6300 5650
F 0 "#PWR0102" H 6300 5400 50  0001 C CNN
F 1 "GND" H 6305 5477 50  0000 C CNN
F 2 "" H 6300 5650 50  0001 C CNN
F 3 "" H 6300 5650 50  0001 C CNN
	1    6300 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8R1
U 1 1 5F4336CF
P 1450 5700
F 0 "R8R1" H 1380 5654 50  0000 R CNN
F 1 "47K" H 1380 5745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 5700 50  0001 C CNN
F 3 "~" H 1450 5700 50  0001 C CNN
	1    1450 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6R1
U 1 1 5F4336D5
P 1450 5200
F 0 "R6R1" H 1380 5154 50  0000 R CNN
F 1 "47K" H 1380 5245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 5200 50  0001 C CNN
F 3 "~" H 1450 5200 50  0001 C CNN
	1    1450 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5R1
U 1 1 5F4336DB
P 1450 4950
F 0 "R5R1" H 1380 4904 50  0000 R CNN
F 1 "47K" H 1380 4995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4950 50  0001 C CNN
F 3 "~" H 1450 4950 50  0001 C CNN
	1    1450 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4R1
U 1 1 5F4336E1
P 1450 4700
F 0 "R4R1" H 1380 4654 50  0000 R CNN
F 1 "47K" H 1380 4745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4700 50  0001 C CNN
F 3 "~" H 1450 4700 50  0001 C CNN
	1    1450 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3R1
U 1 1 5F4336E7
P 1450 4450
F 0 "R3R1" H 1380 4404 50  0000 R CNN
F 1 "47K" H 1380 4495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4450 50  0001 C CNN
F 3 "~" H 1450 4450 50  0001 C CNN
	1    1450 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2R1
U 1 1 5F4336ED
P 1450 4200
F 0 "R2R1" H 1380 4154 50  0000 R CNN
F 1 "47K" H 1380 4245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 4200 50  0001 C CNN
F 3 "~" H 1450 4200 50  0001 C CNN
	1    1450 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1R1
U 1 1 5F4336F3
P 1450 3950
F 0 "R1R1" H 1380 3904 50  0000 R CNN
F 1 "47K" H 1380 3995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 3950 50  0001 C CNN
F 3 "~" H 1450 3950 50  0001 C CNN
	1    1450 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3950 1300 4200
Connection ~ 1300 4200
Wire Wire Line
	1300 4200 1300 4450
Connection ~ 1300 4450
Wire Wire Line
	1300 4450 1300 4700
Connection ~ 1300 4700
Wire Wire Line
	1300 4700 1300 4800
Connection ~ 1300 4950
Wire Wire Line
	1300 4950 1300 5200
Connection ~ 1300 5200
Wire Wire Line
	1300 5200 1300 5450
Connection ~ 1300 5450
Wire Wire Line
	1300 5450 1300 5700
$Comp
L Device:R R7R1
U 1 1 5F433706
P 1450 5450
F 0 "R7R1" H 1380 5404 50  0000 R CNN
F 1 "47K" H 1380 5495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 5450 50  0001 C CNN
F 3 "~" H 1450 5450 50  0001 C CNN
	1    1450 5450
	0    -1   -1   0   
$EndComp
Connection ~ 1300 4800
Wire Wire Line
	1300 4800 1300 4950
$Comp
L power:GND #PWR0103
U 1 1 5F43370E
P 1300 4800
F 0 "#PWR0103" H 1300 4550 50  0001 C CNN
F 1 "GND" H 1305 4627 50  0000 C CNN
F 2 "" H 1300 4800 50  0001 C CNN
F 3 "" H 1300 4800 50  0001 C CNN
	1    1300 4800
	0    1    1    0   
$EndComp
$EndSCHEMATC
