EESchema Schematic File Version 2  date 2/4/2013 8:52:13 PM
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
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "5 feb 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6700 3450 6550 3450
Wire Wire Line
	6700 3300 6550 3300
Wire Wire Line
	4550 4800 4400 4800
Wire Wire Line
	4550 4200 4400 4200
Wire Wire Line
	4550 3750 4400 3750
Wire Wire Line
	4550 3450 4400 3450
Wire Wire Line
	7700 4700 7550 4700
Wire Wire Line
	7700 4400 7550 4400
Wire Wire Line
	7700 4100 7550 4100
Wire Wire Line
	7700 3800 7550 3800
Wire Wire Line
	7700 3500 7550 3500
Wire Wire Line
	7700 3200 7550 3200
Wire Wire Line
	7550 3050 7700 3050
Wire Wire Line
	7550 3350 7700 3350
Wire Wire Line
	7550 3650 7700 3650
Wire Wire Line
	7550 3950 7700 3950
Wire Wire Line
	7550 4250 7700 4250
Wire Wire Line
	7550 4550 7700 4550
Wire Wire Line
	4400 3300 4550 3300
Wire Wire Line
	4400 3600 4550 3600
Wire Wire Line
	4400 3900 4550 3900
Wire Wire Line
	4400 4350 4550 4350
Wire Wire Line
	4400 4950 4550 4950
Wire Wire Line
	6550 4050 6700 4050
Text GLabel 4400 3300 0    60   Input ~ 0
SEG7
Text GLabel 4400 4950 0    60   Input ~ 0
SEG6
Text GLabel 4400 3900 0    60   Input ~ 0
SEG5
Text GLabel 4400 3750 0    60   Input ~ 0
SEG4
Text GLabel 4400 4800 0    60   Input ~ 0
SEG3
Text GLabel 4400 4200 0    60   Input ~ 0
SEG2
Text GLabel 4400 4350 0    60   Input ~ 0
SEG1
Text GLabel 6700 4050 2    60   Input ~ 0
SEG0
Text GLabel 4400 3600 0    60   Input ~ 0
COM3
Text GLabel 4400 3450 0    60   Input ~ 0
COM2
Text GLabel 6700 3300 2    60   Input ~ 0
COM1
Text GLabel 6700 3450 2    60   Input ~ 0
COM0
Text GLabel 7550 4700 0    60   Input ~ 0
SEG7
Text GLabel 7550 4550 0    60   Input ~ 0
SEG6
Text GLabel 7550 4400 0    60   Input ~ 0
SEG5
Text GLabel 7550 4250 0    60   Input ~ 0
SEG4
Text GLabel 7550 4100 0    60   Input ~ 0
SEG3
Text GLabel 7550 3950 0    60   Input ~ 0
SEG2
Text GLabel 7550 3800 0    60   Input ~ 0
SEG1
Text GLabel 7550 3650 0    60   Input ~ 0
SEG0
Text GLabel 7550 3500 0    60   Input ~ 0
COM3
Text GLabel 7550 3350 0    60   Input ~ 0
COM2
Text GLabel 7550 3200 0    60   Input ~ 0
COM1
Text GLabel 7550 3050 0    60   Input ~ 0
COM0
$Comp
L LCD-S401M16KR J?
U 1 1 50FF4B2C
P 8100 3850
F 0 "J?" H 8100 2750 60  0000 C CNN
F 1 "LCD-S401M16KR" H 8100 4900 60  0000 C CNN
	1    8100 3850
	-1   0    0    -1  
$EndComp
$Comp
L PIC16LF1933-I/SS U?
U 1 1 50FF48E1
P 5550 3950
F 0 "U?" H 5550 2700 60  0000 C CNN
F 1 "PIC16LF1933-I/SS" H 5550 5100 60  0000 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
