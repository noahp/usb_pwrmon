EESchema Schematic File Version 2  date 2/23/2013 11:04:50 AM
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
	3650 5050 3650 4900
Wire Wire Line
	3650 4900 4250 4900
Wire Wire Line
	7850 2850 7850 2550
Wire Wire Line
	7850 2550 8000 2550
Connection ~ 2500 2850
Wire Wire Line
	2500 3000 2500 2700
Wire Wire Line
	2500 2700 2350 2700
Wire Notes Line
	9000 1600 9000 3200
Wire Wire Line
	6400 4300 6250 4300
Wire Wire Line
	6400 4150 6250 4150
Wire Wire Line
	4250 5650 4100 5650
Wire Wire Line
	4250 5050 4100 5050
Wire Wire Line
	4250 4600 4100 4600
Wire Wire Line
	4250 4300 4100 4300
Wire Wire Line
	7800 5550 7650 5550
Wire Wire Line
	7800 5250 7650 5250
Wire Wire Line
	7800 4950 7650 4950
Wire Wire Line
	7800 4650 7650 4650
Wire Wire Line
	7800 4350 7650 4350
Wire Wire Line
	7800 4050 7650 4050
Wire Wire Line
	7650 3900 7800 3900
Wire Wire Line
	7650 4200 7800 4200
Wire Wire Line
	7650 4500 7800 4500
Wire Wire Line
	7650 4800 7800 4800
Wire Wire Line
	7650 5100 7800 5100
Wire Wire Line
	7650 5400 7800 5400
Wire Wire Line
	4100 4150 4250 4150
Wire Wire Line
	4100 4450 4250 4450
Wire Wire Line
	4100 4750 4250 4750
Wire Wire Line
	4100 5200 4250 5200
Wire Wire Line
	4100 5800 4250 5800
Wire Wire Line
	6250 4900 6400 4900
Wire Notes Line
	1500 1600 1500 5300
Wire Wire Line
	2350 2850 2500 2850
Wire Wire Line
	2350 4850 2500 4850
Wire Wire Line
	2500 4850 2500 5000
Wire Wire Line
	8000 2700 7850 2700
Connection ~ 7850 2700
$Comp
L GND #PWR?
U 1 1 5128E890
P 3650 5050
F 0 "#PWR?" H 3650 5050 30  0001 C CNN
F 1 "GND" H 3650 4980 30  0001 C CNN
	1    3650 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E871
P 7850 2850
F 0 "#PWR?" H 7850 2850 30  0001 C CNN
F 1 "GND" H 7850 2780 30  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5128E849
P 2500 5000
F 0 "#PWR?" H 2500 5000 30  0001 C CNN
F 1 "GND" H 2500 4930 30  0001 C CNN
	1    2500 5000
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
Text Notes 9100 2400 0    60   ~ 0
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
P 5900 2550
F 0 "R?" V 5980 2550 50  0000 C CNN
F 1 "R" V 5900 2550 50  0000 C CNN
	1    5900 2550
	0    -1   -1   0   
$EndComp
$Comp
L USB_NP_1 J?
U 1 1 5127F961
P 8350 2400
F 0 "J?" H 8350 1850 60  0000 C CNN
F 1 "USB_NP_1" H 8350 2900 60  0000 C CNN
	1    8350 2400
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
Text GLabel 4100 4150 0    60   Input ~ 0
SEG7
Text GLabel 4100 5800 0    60   Input ~ 0
SEG6
Text GLabel 4100 4750 0    60   Input ~ 0
SEG5
Text GLabel 4100 4600 0    60   Input ~ 0
SEG4
Text GLabel 4100 5650 0    60   Input ~ 0
SEG3
Text GLabel 4100 5050 0    60   Input ~ 0
SEG2
Text GLabel 4100 5200 0    60   Input ~ 0
SEG1
Text GLabel 6400 4900 2    60   Input ~ 0
SEG0
Text GLabel 4100 4450 0    60   Input ~ 0
COM3
Text GLabel 4100 4300 0    60   Input ~ 0
COM2
Text GLabel 6400 4150 2    60   Input ~ 0
COM1
Text GLabel 6400 4300 2    60   Input ~ 0
COM0
Text GLabel 7650 5550 0    60   Input ~ 0
SEG7
Text GLabel 7650 5400 0    60   Input ~ 0
SEG6
Text GLabel 7650 5250 0    60   Input ~ 0
SEG5
Text GLabel 7650 5100 0    60   Input ~ 0
SEG4
Text GLabel 7650 4950 0    60   Input ~ 0
SEG3
Text GLabel 7650 4800 0    60   Input ~ 0
SEG2
Text GLabel 7650 4650 0    60   Input ~ 0
SEG1
Text GLabel 7650 4500 0    60   Input ~ 0
SEG0
Text GLabel 7650 4350 0    60   Input ~ 0
COM3
Text GLabel 7650 4200 0    60   Input ~ 0
COM2
Text GLabel 7650 4050 0    60   Input ~ 0
COM1
Text GLabel 7650 3900 0    60   Input ~ 0
COM0
$Comp
L LCD-S401M16KR J?
U 1 1 50FF4B2C
P 8200 4700
F 0 "J?" H 8200 3600 60  0000 C CNN
F 1 "LCD-S401M16KR" H 8200 5750 60  0000 C CNN
	1    8200 4700
	-1   0    0    -1  
$EndComp
$Comp
L PIC16LF1933-I/SS U?
U 1 1 50FF48E1
P 5250 4800
F 0 "U?" H 5250 3550 60  0000 C CNN
F 1 "PIC16LF1933-I/SS" H 5250 5950 60  0000 C CNN
	1    5250 4800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
