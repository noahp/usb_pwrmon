EESchema Schematic File Version 2  date 2/23/2013 11:41:21 AM
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "23 feb 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2500 4150 2350 4150
Wire Wire Line
	2500 4450 2350 4450
Wire Wire Line
	2500 4900 2350 4900
Wire Wire Line
	9550 5400 9400 5400
Wire Wire Line
	9400 5850 9550 5850
Wire Wire Line
	9400 4350 9550 4350
Wire Wire Line
	5100 2350 4950 2350
Wire Wire Line
	2350 2550 2500 2550
Wire Wire Line
	7250 4200 7400 4200
Wire Wire Line
	5100 2050 4800 2050
Wire Wire Line
	4150 2050 4300 2050
Wire Wire Line
	2350 2250 2500 2250
Connection ~ 4950 2650
Wire Wire Line
	5100 2650 4950 2650
Wire Wire Line
	2350 2850 2500 2850
Wire Notes Line
	1500 1600 1500 5300
Wire Wire Line
	9400 5250 9550 5250
Wire Wire Line
	7250 6150 7400 6150
Wire Wire Line
	7250 5550 7400 5550
Wire Wire Line
	7250 5100 7400 5100
Wire Wire Line
	7250 4800 7400 4800
Wire Wire Line
	7250 4500 7400 4500
Wire Wire Line
	8500 2900 8650 2900
Wire Wire Line
	8500 2600 8650 2600
Wire Wire Line
	8500 2300 8650 2300
Wire Wire Line
	8500 2000 8650 2000
Wire Wire Line
	8500 1700 8650 1700
Wire Wire Line
	8500 1400 8650 1400
Wire Wire Line
	8650 1550 8500 1550
Wire Wire Line
	8650 1850 8500 1850
Wire Wire Line
	8650 2150 8500 2150
Wire Wire Line
	8650 2450 8500 2450
Wire Wire Line
	8650 2750 8500 2750
Wire Wire Line
	8650 3050 8500 3050
Wire Wire Line
	7400 4650 7250 4650
Wire Wire Line
	7400 4950 7250 4950
Wire Wire Line
	7400 5400 7250 5400
Wire Wire Line
	7400 6000 7250 6000
Wire Wire Line
	9550 4500 9400 4500
Wire Wire Line
	9550 4650 9400 4650
Wire Notes Line
	6100 1550 6100 3150
Wire Wire Line
	2350 2700 2500 2700
Wire Wire Line
	2500 2700 2500 3000
Connection ~ 2500 2850
Wire Wire Line
	5100 2500 4950 2500
Wire Wire Line
	4950 2500 4950 2800
Wire Wire Line
	7400 5250 6800 5250
Wire Wire Line
	6800 5250 6800 5400
Wire Wire Line
	4950 1900 4950 2050
Connection ~ 4950 2050
Wire Wire Line
	2500 2400 2350 2400
Wire Wire Line
	5100 2200 4950 2200
Wire Wire Line
	9550 4200 9400 4200
Wire Wire Line
	9550 5700 9400 5700
Wire Wire Line
	9400 5550 9900 5550
Wire Wire Line
	9900 5550 9900 5700
Wire Wire Line
	2350 4750 2500 4750
Wire Wire Line
	2500 4750 2500 5050
Connection ~ 2500 4900
Wire Wire Line
	2350 4300 2500 4300
$Comp
L GND #PWR?
U 1 1 5128F037
P 9900 5700
F 0 "#PWR?" H 9900 5700 30  0001 C CNN
F 1 "GND" H 9900 5630 30  0001 C CNN
	1    9900 5700
	1    0    0    -1  
$EndComp
Text GLabel 9550 5400 2    60   Input ~ 0
VBUS
Text GLabel 9550 5850 2    60   Input ~ 0
TX
Text GLabel 9550 5700 2    60   Input ~ 0
RX
Text GLabel 9550 4350 2    60   Input ~ 0
ICSPCLK
Text GLabel 9550 4200 2    60   Input ~ 0
ICSPDAT
Text GLabel 4950 2350 0    60   Input ~ 0
D-TRGT
Text GLabel 4950 2200 0    60   Input ~ 0
D+TRGT
Text GLabel 2500 4300 2    60   Input ~ 0
D-VCP
Text GLabel 2500 4450 2    60   Input ~ 0
D+VCP
Text GLabel 2500 2550 2    60   Input ~ 0
D-TRGT
Text GLabel 2500 2400 2    60   Input ~ 0
D+TRGT
Text GLabel 7250 4200 0    60   Input ~ 0
VBUS
Text GLabel 4950 1900 1    60   Input ~ 0
VSENSE
Text GLabel 4150 2050 0    60   Input ~ 0
VBUS
Text GLabel 2500 4150 2    60   Input ~ 0
VBUS
Text GLabel 2500 2250 2    60   Input ~ 0
VBUS
$Comp
L GND #PWR?
U 1 1 5128E890
P 6800 5400
F 0 "#PWR?" H 6800 5400 30  0001 C CNN
F 1 "GND" H 6800 5330 30  0001 C CNN
	1    6800 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E871
P 4950 2800
F 0 "#PWR?" H 4950 2800 30  0001 C CNN
F 1 "GND" H 4950 2730 30  0001 C CNN
	1    4950 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E849
P 2500 5050
F 0 "#PWR?" H 2500 5050 30  0001 C CNN
F 1 "GND" H 2500 4980 30  0001 C CNN
	1    2500 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E836
P 2500 3000
F 0 "#PWR?" H 2500 3000 30  0001 C CNN
F 1 "GND" H 2500 2930 30  0001 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
Text Notes 6150 2350 0    60   ~ 0
TARGET DEVICE
Text Notes 1050 3400 0    60   ~ 0
HOST PC
$Comp
L USB-MINI J?
U 1 1 5128E61E
P 2050 4550
F 0 "J?" H 2050 4000 60  0000 C CNN
F 1 "USB-MINI" H 2050 5100 60  0000 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5127FAE0
P 4550 2050
F 0 "R?" V 4630 2050 50  0000 C CNN
F 1 "R" V 4550 2050 50  0000 C CNN
	1    4550 2050
	0    -1   -1   0   
$EndComp
$Comp
L USB_NP_1 J?
U 1 1 5127F961
P 5450 2350
F 0 "J?" H 5450 1800 60  0000 C CNN
F 1 "USB_NP_1" H 5450 2850 60  0000 C CNN
	1    5450 2350
	-1   0    0    -1  
$EndComp
$Comp
L USB_NP_1 J?
U 1 1 5127F95A
P 2000 2550
F 0 "J?" H 2000 2000 60  0000 C CNN
F 1 "USB_NP_1" H 2000 3050 60  0000 C CNN
	1    2000 2550
	1    0    0    -1  
$EndComp
Text GLabel 7250 4500 0    60   Input ~ 0
SEG7
Text GLabel 7250 6150 0    60   Input ~ 0
SEG6
Text GLabel 7250 5100 0    60   Input ~ 0
SEG5
Text GLabel 7250 4950 0    60   Input ~ 0
SEG4
Text GLabel 7250 6000 0    60   Input ~ 0
SEG3
Text GLabel 7250 5400 0    60   Input ~ 0
SEG2
Text GLabel 7250 5550 0    60   Input ~ 0
SEG1
Text GLabel 9550 5250 2    60   Input ~ 0
SEG0
Text GLabel 7250 4800 0    60   Input ~ 0
COM3
Text GLabel 7250 4650 0    60   Input ~ 0
COM2
Text GLabel 9550 4500 2    60   Input ~ 0
COM1
Text GLabel 9550 4650 2    60   Input ~ 0
COM0
Text GLabel 8500 3050 0    60   Input ~ 0
SEG7
Text GLabel 8500 2900 0    60   Input ~ 0
SEG6
Text GLabel 8500 2750 0    60   Input ~ 0
SEG5
Text GLabel 8500 2600 0    60   Input ~ 0
SEG4
Text GLabel 8500 2450 0    60   Input ~ 0
SEG3
Text GLabel 8500 2300 0    60   Input ~ 0
SEG2
Text GLabel 8500 2150 0    60   Input ~ 0
SEG1
Text GLabel 8500 2000 0    60   Input ~ 0
SEG0
Text GLabel 8500 1850 0    60   Input ~ 0
COM3
Text GLabel 8500 1700 0    60   Input ~ 0
COM2
Text GLabel 8500 1550 0    60   Input ~ 0
COM1
Text GLabel 8500 1400 0    60   Input ~ 0
COM0
$Comp
L LCD-S401M16KR J?
U 1 1 50FF4B2C
P 9050 2200
F 0 "J?" H 9050 1100 60  0000 C CNN
F 1 "LCD-S401M16KR" H 9050 3250 60  0000 C CNN
	1    9050 2200
	-1   0    0    -1  
$EndComp
$Comp
L PIC16LF1933-I/SS U?
U 1 1 50FF48E1
P 8400 5150
F 0 "U?" H 8400 3900 60  0000 C CNN
F 1 "PIC16F1933-I/SS" H 8400 6300 60  0000 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC