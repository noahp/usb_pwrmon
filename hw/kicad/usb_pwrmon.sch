EESchema Schematic File Version 2  date 2/22/2013 6:14:41 PM
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
Date "22 feb 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
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
P 9250 3050
F 0 "J?" H 9250 2500 60  0000 C CNN
F 1 "USB_NP_1" H 9250 3550 60  0000 C CNN
	1    9250 3050
	-1   0    0    1   
$EndComp
$Comp
L USB_NP_1 J?
U 1 1 5127F95A
P 3150 2700
F 0 "J?" H 3150 2150 60  0000 C CNN
F 1 "USB_NP_1" H 3150 3200 60  0000 C CNN
	1    3150 2700
	1    0    0    -1  
$EndComp
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
	7400 5550 7250 5550
Wire Wire Line
	7400 5250 7250 5250
Wire Wire Line
	7400 4950 7250 4950
Wire Wire Line
	7400 4650 7250 4650
Wire Wire Line
	7400 4350 7250 4350
Wire Wire Line
	7400 4050 7250 4050
Wire Wire Line
	7250 3900 7400 3900
Wire Wire Line
	7250 4200 7400 4200
Wire Wire Line
	7250 4500 7400 4500
Wire Wire Line
	7250 4800 7400 4800
Wire Wire Line
	7250 5100 7400 5100
Wire Wire Line
	7250 5400 7400 5400
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
Text GLabel 7250 5550 0    60   Input ~ 0
SEG7
Text GLabel 7250 5400 0    60   Input ~ 0
SEG6
Text GLabel 7250 5250 0    60   Input ~ 0
SEG5
Text GLabel 7250 5100 0    60   Input ~ 0
SEG4
Text GLabel 7250 4950 0    60   Input ~ 0
SEG3
Text GLabel 7250 4800 0    60   Input ~ 0
SEG2
Text GLabel 7250 4650 0    60   Input ~ 0
SEG1
Text GLabel 7250 4500 0    60   Input ~ 0
SEG0
Text GLabel 7250 4350 0    60   Input ~ 0
COM3
Text GLabel 7250 4200 0    60   Input ~ 0
COM2
Text GLabel 7250 4050 0    60   Input ~ 0
COM1
Text GLabel 7250 3900 0    60   Input ~ 0
COM0
$Comp
L LCD-S401M16KR J?
U 1 1 50FF4B2C
P 7800 4700
F 0 "J?" H 7800 3600 60  0000 C CNN
F 1 "LCD-S401M16KR" H 7800 5750 60  0000 C CNN
	1    7800 4700
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
