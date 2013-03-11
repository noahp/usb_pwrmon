EESchema Schematic File Version 2  date 3/11/2013 8:59:57 AM
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:usb_pwrmon
LIBS:usb_pwrmon-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "11 mar 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2400 7400 0    60   ~ 0
NOPOP
Text GLabel 5400 7100 0    60   Input ~ 0
ICSPDAT
Text GLabel 5550 7250 0    60   Input ~ 0
ICSPCLK
$Comp
L GND #PWR?
U 1 1 512A254C
P 5250 6950
F 0 "#PWR?" H 5250 6950 30  0001 C CNN
F 1 "GND" H 5250 6880 30  0001 C CNN
F 2 "" H 5250 6950 60  0001 C CNN
F 3 "" H 5250 6950 60  0001 C CNN
	1    5250 6950
	1    0    0    -1  
$EndComp
Text GLabel 5100 6800 0    60   Input ~ 0
VBUS
Text GLabel 4950 6650 0    60   Input ~ 0
MCLR
Text GLabel 6900 4650 0    60   Input ~ 0
MCLR
$Comp
L TST P?
U 1 1 512A24D2
P 5700 7250
F 0 "P?" H 5700 7550 40  0000 C CNN
F 1 "TX" H 5700 7500 30  0000 C CNN
F 2 "" H 5700 7250 60  0001 C CNN
F 3 "" H 5700 7250 60  0001 C CNN
	1    5700 7250
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 512A24CF
P 5550 7100
F 0 "P?" H 5550 7400 40  0000 C CNN
F 1 "TX" H 5550 7350 30  0000 C CNN
F 2 "" H 5550 7100 60  0001 C CNN
F 3 "" H 5550 7100 60  0001 C CNN
	1    5550 7100
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 512A24CC
P 5400 6950
F 0 "P?" H 5400 7250 40  0000 C CNN
F 1 "TX" H 5400 7200 30  0000 C CNN
F 2 "" H 5400 6950 60  0001 C CNN
F 3 "" H 5400 6950 60  0001 C CNN
	1    5400 6950
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 512A24C9
P 5250 6800
F 0 "P?" H 5250 7100 40  0000 C CNN
F 1 "TX" H 5250 7050 30  0000 C CNN
F 2 "" H 5250 6800 60  0001 C CNN
F 3 "" H 5250 6800 60  0001 C CNN
	1    5250 6800
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 512A24C5
P 5100 6650
F 0 "P?" H 5100 6950 40  0000 C CNN
F 1 "TX" H 5100 6900 30  0000 C CNN
F 2 "" H 5100 6650 60  0001 C CNN
F 3 "" H 5100 6650 60  0001 C CNN
	1    5100 6650
	1    0    0    -1  
$EndComp
Text GLabel 7550 1600 2    60   Input ~ 0
ADC_SNS
$Comp
L C C?
U 1 1 512A23CC
P 7400 1850
F 0 "C?" H 7450 1950 50  0000 L CNN
F 1 "C" H 7450 1750 50  0000 L CNN
F 2 "" H 7400 1850 60  0001 C CNN
F 3 "" H 7400 1850 60  0001 C CNN
	1    7400 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 512A235F
P 6350 2150
F 0 "#PWR?" H 6350 2150 30  0001 C CNN
F 1 "GND" H 6350 2080 30  0001 C CNN
F 2 "" H 6350 2150 60  0001 C CNN
F 3 "" H 6350 2150 60  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 512A232E
P 5500 1700
F 0 "R?" V 5580 1700 50  0000 C CNN
F 1 "R" V 5500 1700 50  0000 C CNN
F 2 "" H 5500 1700 60  0001 C CNN
F 3 "" H 5500 1700 60  0001 C CNN
	1    5500 1700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 512A2310
P 6350 2400
F 0 "R?" V 6430 2400 50  0000 C CNN
F 1 "R" V 6350 2400 50  0000 C CNN
F 2 "" H 6350 2400 60  0001 C CNN
F 3 "" H 6350 2400 60  0001 C CNN
	1    6350 2400
	0    -1   -1   0   
$EndComp
$Comp
L OPA378 U?
U 1 1 512A22F0
P 6150 1600
F 0 "U?" H 6150 1300 60  0000 C CNN
F 1 "OPA378" H 6100 1950 60  0000 C CNN
F 2 "" H 6150 1600 60  0001 C CNN
F 3 "" H 6150 1600 60  0001 C CNN
	1    6150 1600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5128FD02
P 10100 6250
F 0 "C?" H 10150 6350 50  0000 L CNN
F 1 "0.1uF" H 10150 6150 50  0000 L CNN
F 2 "" H 10100 6250 60  0001 C CNN
F 3 "" H 10100 6250 60  0001 C CNN
	1    10100 6250
	1    0    0    -1  
$EndComp
Text GLabel 1250 6250 0    40   Input ~ 0
D+VCP
Text GLabel 1250 6150 0    40   Input ~ 0
D-VCP
$Comp
L R R?
U 1 1 5128FCA1
P 1650 6250
F 0 "R?" V 1750 6250 50  0000 C CNN
F 1 "27R" V 1650 6250 50  0000 C CNN
F 2 "" H 1650 6250 60  0001 C CNN
F 3 "" H 1650 6250 60  0001 C CNN
	1    1650 6250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5128FC99
P 1650 6150
F 0 "R?" V 1550 6150 50  0000 C CNN
F 1 "27R" V 1650 6150 50  0000 C CNN
F 2 "" H 1650 6150 60  0001 C CNN
F 3 "" H 1650 6150 60  0001 C CNN
	1    1650 6150
	0    1    1    0   
$EndComp
Text GLabel 2600 5200 0    60   Input ~ 0
VBUS
$Comp
L GND #PWR?
U 1 1 5128FC6D
P 2700 7200
F 0 "#PWR?" H 2700 7200 30  0001 C CNN
F 1 "GND" H 2700 7130 30  0001 C CNN
F 2 "" H 2700 7200 60  0001 C CNN
F 3 "" H 2700 7200 60  0001 C CNN
	1    2700 7200
	1    0    0    -1  
$EndComp
Text GLabel 3650 5900 2    40   Input ~ 0
TX
Text GLabel 3650 6000 2    40   Input ~ 0
RX
Text GLabel 5100 5500 0    60   Input ~ 0
TX
Text GLabel 5250 5650 0    60   Input ~ 0
RX
$Comp
L GND #PWR?
U 1 1 5128FA9D
P 5550 5800
F 0 "#PWR?" H 5550 5800 30  0001 C CNN
F 1 "GND" H 5550 5730 30  0001 C CNN
F 2 "" H 5550 5800 60  0001 C CNN
F 3 "" H 5550 5800 60  0001 C CNN
	1    5550 5800
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 5128FA8C
P 5250 5350
F 0 "P?" H 5250 5650 40  0000 C CNN
F 1 "TX" H 5250 5600 30  0000 C CNN
F 2 "" H 5250 5350 60  0001 C CNN
F 3 "" H 5250 5350 60  0001 C CNN
	1    5250 5350
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 5128FA79
P 5550 5650
F 0 "P?" H 5550 5950 40  0000 C CNN
F 1 "GND" H 5550 5900 30  0000 C CNN
F 2 "" H 5550 5650 60  0001 C CNN
F 3 "" H 5550 5650 60  0001 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 5128FA72
P 5400 5500
F 0 "P?" H 5400 5800 40  0000 C CNN
F 1 "RX" H 5400 5750 30  0000 C CNN
F 2 "" H 5400 5500 60  0001 C CNN
F 3 "" H 5400 5500 60  0001 C CNN
	1    5400 5500
	1    0    0    -1  
$EndComp
Text Notes 1800 4500 0    60   ~ 0
NOPOP
$Comp
L FT230XS-R U?
U 1 1 5128FA17
P 2750 6200
F 0 "U?" H 2450 6850 60  0000 C CNN
F 1 "FT230XS-R" H 3050 5550 60  0000 C CNN
F 2 "" H 2750 6200 60  0001 C CNN
F 3 "" H 2750 6200 60  0001 C CNN
	1    2750 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128F432
P 10850 5700
F 0 "#PWR?" H 10850 5700 30  0001 C CNN
F 1 "GND" H 10850 5630 30  0001 C CNN
F 2 "" H 10850 5700 60  0001 C CNN
F 3 "" H 10850 5700 60  0001 C CNN
	1    10850 5700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5128F416
P 9950 5800
F 0 "R?" V 10030 5800 50  0000 C CNN
F 1 "R" V 9950 5800 50  0000 C CNN
F 2 "" H 9950 5800 60  0001 C CNN
F 3 "" H 9950 5800 60  0001 C CNN
	1    9950 5800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW?
U 1 1 5128F376
P 10400 5550
F 0 "SW?" H 10550 5660 50  0000 C CNN
F 1 "SW_PUSH" H 10400 5470 50  0000 C CNN
F 2 "" H 10400 5550 60  0001 C CNN
F 3 "" H 10400 5550 60  0001 C CNN
	1    10400 5550
	1    0    0    -1  
$EndComp
Text GLabel 9200 5250 2    60   Input ~ 0
ADC_SNS
$Comp
L GND #PWR?
U 1 1 5128F037
P 9550 6550
F 0 "#PWR?" H 9550 6550 30  0001 C CNN
F 1 "GND" H 9550 6480 30  0001 C CNN
F 2 "" H 9550 6550 60  0001 C CNN
F 3 "" H 9550 6550 60  0001 C CNN
	1    9550 6550
	1    0    0    -1  
$EndComp
Text GLabel 10450 6050 2    60   Input ~ 0
VBUS
Text GLabel 9200 6300 2    60   Input ~ 0
TX
Text GLabel 9200 6150 2    60   Input ~ 0
RX
Text GLabel 9200 4800 2    60   Input ~ 0
ICSPCLK
Text GLabel 9200 4650 2    60   Input ~ 0
ICSPDAT
Text GLabel 3850 3650 0    60   Input ~ 0
D-TRGT
Text GLabel 3850 3500 0    60   Input ~ 0
D+TRGT
Text GLabel 2300 3400 2    60   Input ~ 0
D-VCP
Text GLabel 2300 3550 2    60   Input ~ 0
D+VCP
Text GLabel 2300 1650 2    60   Input ~ 0
D-TRGT
Text GLabel 2300 1500 2    60   Input ~ 0
D+TRGT
Text GLabel 3850 3200 1    60   Input ~ 0
VSENSE
Text GLabel 3750 3350 0    60   Input ~ 0
VBUS
Text GLabel 2300 3250 2    60   Input ~ 0
VBUS
Text GLabel 2300 1350 2    60   Input ~ 0
VBUS
$Comp
L GND #PWR?
U 1 1 5128E890
P 6450 5850
F 0 "#PWR?" H 6450 5850 30  0001 C CNN
F 1 "GND" H 6450 5780 30  0001 C CNN
F 2 "" H 6450 5850 60  0001 C CNN
F 3 "" H 6450 5850 60  0001 C CNN
	1    6450 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E849
P 2300 4150
F 0 "#PWR?" H 2300 4150 30  0001 C CNN
F 1 "GND" H 2300 4080 30  0001 C CNN
F 2 "" H 2300 4150 60  0001 C CNN
F 3 "" H 2300 4150 60  0001 C CNN
	1    2300 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E836
P 2300 2100
F 0 "#PWR?" H 2300 2100 30  0001 C CNN
F 1 "GND" H 2300 2030 30  0001 C CNN
F 2 "" H 2300 2100 60  0001 C CNN
F 3 "" H 2300 2100 60  0001 C CNN
	1    2300 2100
	1    0    0    -1  
$EndComp
Text Notes 4800 3700 0    60   ~ 0
TARGET DEVICE
Text Notes 850  2500 0    60   ~ 0
HOST PC
$Comp
L USB-MINI J?
U 1 1 5128E61E
P 1850 3650
F 0 "J?" H 1850 3100 60  0000 C CNN
F 1 "USB_MINI_FEMALE" H 1850 4250 60  0000 C CNN
F 2 "" H 1850 3650 60  0001 C CNN
F 3 "" H 1850 3650 60  0001 C CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
$Comp
L USB_NP_1 J?
U 1 1 5127F961
P 4300 3650
F 0 "J?" H 4300 3100 60  0000 C CNN
F 1 "USB_A_FEMALE" H 4300 4150 60  0000 C CNN
F 2 "" H 4300 3650 60  0001 C CNN
F 3 "" H 4300 3650 60  0001 C CNN
	1    4300 3650
	-1   0    0    -1  
$EndComp
$Comp
L USB_NP_1 J?
U 1 1 5127F95A
P 1800 1650
F 0 "J?" H 1800 1100 60  0000 C CNN
F 1 "USB_A_MALE" H 1800 2150 60  0000 C CNN
F 2 "" H 1800 1650 60  0001 C CNN
F 3 "" H 1800 1650 60  0001 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
Text GLabel 6900 4950 0    60   Input ~ 0
SEG7
Text GLabel 6900 6600 0    60   Input ~ 0
SEG6
Text GLabel 6900 5550 0    60   Input ~ 0
SEG5
Text GLabel 6900 5400 0    60   Input ~ 0
SEG4
Text GLabel 6900 6450 0    60   Input ~ 0
SEG3
Text GLabel 6900 5850 0    60   Input ~ 0
SEG2
Text GLabel 6900 6000 0    60   Input ~ 0
SEG1
Text GLabel 9200 5700 2    60   Input ~ 0
SEG0
Text GLabel 6900 5250 0    60   Input ~ 0
COM3
Text GLabel 6900 5100 0    60   Input ~ 0
COM2
Text GLabel 9200 4950 2    60   Input ~ 0
COM1
Text GLabel 9200 5100 2    60   Input ~ 0
COM0
Text GLabel 9550 3700 0    60   Input ~ 0
SEG7
Text GLabel 9550 3550 0    60   Input ~ 0
SEG6
Text GLabel 9550 3400 0    60   Input ~ 0
SEG5
Text GLabel 9550 3250 0    60   Input ~ 0
SEG4
Text GLabel 9550 3100 0    60   Input ~ 0
SEG3
Text GLabel 9550 2950 0    60   Input ~ 0
SEG2
Text GLabel 9550 2800 0    60   Input ~ 0
SEG1
Text GLabel 9550 2650 0    60   Input ~ 0
SEG0
Text GLabel 9550 2500 0    60   Input ~ 0
COM3
Text GLabel 9550 2350 0    60   Input ~ 0
COM2
Text GLabel 9550 2200 0    60   Input ~ 0
COM1
Text GLabel 9550 2050 0    60   Input ~ 0
COM0
$Comp
L LCD-S401M16KR J?
U 1 1 50FF4B2C
P 10100 2850
F 0 "J?" H 10100 1750 60  0000 C CNN
F 1 "LCD-S401M16KR" H 10100 3900 60  0000 C CNN
F 2 "" H 10100 2850 60  0001 C CNN
F 3 "" H 10100 2850 60  0001 C CNN
	1    10100 2850
	-1   0    0    -1  
$EndComp
$Comp
L PIC16LF1933-I/SS U?
U 1 1 50FF48E1
P 8050 5600
F 0 "U?" H 8050 4350 60  0000 C CNN
F 1 "PIC16F1933-I/SS" H 8050 6750 60  0000 C CNN
F 2 "" H 8050 5600 60  0001 C CNN
F 3 "" H 8050 5600 60  0001 C CNN
	1    8050 5600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 513DD91F
P 7150 1850
F 0 "R?" V 7230 1850 50  0000 C CNN
F 1 "R" V 7150 1850 50  0000 C CNN
F 2 "" H 7150 1850 60  0001 C CNN
F 3 "" H 7150 1850 60  0001 C CNN
	1    7150 1850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 513DD995
P 7150 2200
F 0 "#PWR?" H 7150 2200 30  0001 C CNN
F 1 "GND" H 7150 2130 30  0001 C CNN
F 2 "" H 7150 2200 60  0001 C CNN
F 3 "" H 7150 2200 60  0001 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
Text GLabel 6350 1050 0    60   Input ~ 0
VBUS
$Comp
L R R?
U 1 1 513DDCF4
P 5000 1850
F 0 "R?" V 5080 1850 50  0000 C CNN
F 1 "R" V 5000 1850 50  0000 C CNN
F 2 "" H 5000 1850 60  0001 C CNN
F 3 "" H 5000 1850 60  0001 C CNN
	1    5000 1850
	-1   0    0    1   
$EndComp
Text GLabel 5000 1500 0    60   Input ~ 0
VLOAD+
Text GLabel 5000 2200 0    60   Input ~ 0
VLOAD-
Text GLabel 3850 3950 0    60   Input ~ 0
VLOAD+
$Comp
L GND #PWR?
U 1 1 513DE10D
P 5150 2250
F 0 "#PWR?" H 5150 2250 30  0001 C CNN
F 1 "GND" H 5150 2180 30  0001 C CNN
F 2 "" H 5150 2250 60  0001 C CNN
F 3 "" H 5150 2250 60  0001 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
Wire Notes Line
	3950 5050 3950 7300
Wire Notes Line
	3950 5050 900  5050
Wire Notes Line
	900  5050 900  7300
Wire Notes Line
	900  7300 3950 7300
Wire Wire Line
	5400 7100 5550 7100
Wire Wire Line
	5100 6800 5250 6800
Wire Wire Line
	7050 4650 6900 4650
Wire Wire Line
	9550 6450 10100 6450
Wire Wire Line
	1400 6250 1250 6250
Wire Wire Line
	1900 6250 2050 6250
Wire Wire Line
	2750 5200 2750 5350
Connection ~ 2700 7100
Wire Wire Line
	2650 7050 2650 7100
Wire Wire Line
	2650 7100 2750 7100
Wire Wire Line
	3650 6000 3500 6000
Wire Wire Line
	5400 5500 5400 5650
Wire Wire Line
	5400 5650 5250 5650
Wire Wire Line
	5550 5800 5550 5650
Wire Notes Line
	1200 4400 1200 2800
Wire Notes Line
	1200 4400 2800 4400
Wire Notes Line
	2800 4400 2800 2800
Wire Notes Line
	2800 2800 1200 2800
Connection ~ 9950 5550
Wire Wire Line
	9050 5550 10100 5550
Connection ~ 9950 6050
Wire Wire Line
	9050 5850 9800 5850
Wire Wire Line
	9800 5850 9800 6050
Wire Wire Line
	9200 5250 9050 5250
Wire Wire Line
	2150 3400 2300 3400
Connection ~ 2300 4000
Wire Wire Line
	2300 3850 2300 4150
Wire Wire Line
	2300 3850 2150 3850
Wire Wire Line
	9050 6000 9550 6000
Wire Wire Line
	9200 6150 9050 6150
Wire Wire Line
	9200 4650 9050 4650
Wire Wire Line
	3950 3500 3850 3500
Wire Wire Line
	2300 1500 2150 1500
Connection ~ 3850 3350
Wire Wire Line
	3850 3350 3850 3200
Wire Wire Line
	6450 5850 6450 5700
Wire Wire Line
	6450 5700 7050 5700
Connection ~ 2300 1950
Wire Wire Line
	2300 1800 2300 2100
Wire Wire Line
	2300 1800 2150 1800
Wire Notes Line
	4750 2850 4750 4450
Wire Wire Line
	9200 5100 9050 5100
Wire Wire Line
	9200 4950 9050 4950
Wire Wire Line
	7050 6450 6900 6450
Wire Wire Line
	7050 5850 6900 5850
Wire Wire Line
	7050 5400 6900 5400
Wire Wire Line
	7050 5100 6900 5100
Wire Wire Line
	9700 3700 9550 3700
Wire Wire Line
	9700 3400 9550 3400
Wire Wire Line
	9700 3100 9550 3100
Wire Wire Line
	9700 2800 9550 2800
Wire Wire Line
	9700 2500 9550 2500
Wire Wire Line
	9700 2200 9550 2200
Wire Wire Line
	9550 2050 9700 2050
Wire Wire Line
	9550 2350 9700 2350
Wire Wire Line
	9550 2650 9700 2650
Wire Wire Line
	9550 2950 9700 2950
Wire Wire Line
	9550 3250 9700 3250
Wire Wire Line
	9550 3550 9700 3550
Wire Wire Line
	6900 4950 7050 4950
Wire Wire Line
	6900 5250 7050 5250
Wire Wire Line
	6900 5550 7050 5550
Wire Wire Line
	6900 6000 7050 6000
Wire Wire Line
	6900 6600 7050 6600
Wire Wire Line
	9050 5700 9200 5700
Wire Wire Line
	2150 1950 2300 1950
Wire Wire Line
	2150 1350 2300 1350
Wire Wire Line
	2150 1650 2300 1650
Wire Wire Line
	3950 3650 3850 3650
Wire Wire Line
	9050 4800 9200 4800
Wire Wire Line
	9050 6300 9200 6300
Wire Wire Line
	2150 4000 2300 4000
Wire Wire Line
	2300 3550 2150 3550
Wire Wire Line
	2300 3250 2150 3250
Wire Wire Line
	10700 5550 10850 5550
Wire Wire Line
	10850 5550 10850 5700
Wire Notes Line
	1300 850  1300 4700
Wire Wire Line
	5250 5350 5250 5500
Wire Wire Line
	5250 5500 5100 5500
Wire Wire Line
	3500 5900 3650 5900
Wire Wire Line
	2750 7100 2750 7050
Wire Wire Line
	2700 7200 2700 7100
Wire Wire Line
	1900 6150 2050 6150
Wire Wire Line
	1250 6150 1400 6150
Wire Wire Line
	2900 5200 2900 5350
Wire Wire Line
	2600 5200 2900 5200
Connection ~ 2750 5200
Wire Wire Line
	9800 6050 10450 6050
Connection ~ 10100 6050
Wire Wire Line
	9550 6000 9550 6550
Connection ~ 9550 6450
Wire Wire Line
	5100 6650 4950 6650
Wire Wire Line
	5400 6950 5250 6950
Wire Wire Line
	5550 7250 5700 7250
Wire Wire Line
	6350 2050 6350 2150
Wire Wire Line
	6950 1600 6950 2400
Wire Wire Line
	6950 2400 6600 2400
Wire Wire Line
	6100 2400 5850 2400
Wire Wire Line
	5850 2400 5850 1700
Wire Wire Line
	5000 1500 5850 1500
Wire Wire Line
	5850 1700 5750 1700
Wire Wire Line
	7150 2100 7150 2200
Wire Wire Line
	6350 1050 6350 1150
Connection ~ 7150 1600
Wire Wire Line
	5000 1500 5000 1600
Wire Wire Line
	5000 2100 5000 2200
Wire Wire Line
	3850 3950 3950 3950
Wire Wire Line
	3900 3950 3900 3800
Wire Wire Line
	3900 3800 3950 3800
Connection ~ 3900 3950
Wire Wire Line
	3750 3350 3950 3350
Wire Wire Line
	5000 2150 5150 2150
Connection ~ 5000 2150
Wire Wire Line
	6950 1600 7550 1600
Wire Wire Line
	5250 1700 5150 1700
Wire Wire Line
	5150 1700 5150 2250
Connection ~ 5150 2150
$EndSCHEMATC
