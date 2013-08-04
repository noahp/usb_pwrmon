EESchema Schematic File Version 2  date 8/4/2013 11:56:05 AM
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
Date "4 aug 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TST P4
U 1 1 512A24D2
P 4850 2750
F 0 "P4" H 4850 3050 40  0000 C CNN
F 1 "VLOAD-" H 4850 3000 30  0000 C CNN
F 2 "" H 4850 2750 60  0001 C CNN
F 3 "" H 4850 2750 60  0001 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
$Comp
L TST P3
U 1 1 512A24CC
P 4700 2900
F 0 "P3" H 4700 3200 40  0000 C CNN
F 1 "ADC_IN" H 4700 3150 30  0000 C CNN
F 2 "" H 4700 2900 60  0001 C CNN
F 3 "" H 4700 2900 60  0001 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
$Comp
L TST P2
U 1 1 512A24C9
P 5150 2450
F 0 "P2" H 5150 2750 40  0000 C CNN
F 1 "VBUS" H 5150 2700 30  0000 C CNN
F 2 "" H 5150 2450 60  0001 C CNN
F 3 "" H 5150 2450 60  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
$Comp
L TST P1
U 1 1 512A24C5
P 5000 2600
F 0 "P1" H 5000 2900 40  0000 C CNN
F 1 "VLOAD+" H 5000 2850 30  0000 C CNN
F 2 "" H 5000 2600 60  0001 C CNN
F 3 "" H 5000 2600 60  0001 C CNN
	1    5000 2600
	1    0    0    -1  
$EndComp
Text GLabel 6750 4250 2    60   Input ~ 0
ADC_SNS_1
$Comp
L C C1
U 1 1 512A23CC
P 6600 4500
F 0 "C1" H 6650 4600 50  0000 L CNN
F 1 "C" H 6650 4400 50  0000 L CNN
F 2 "" H 6600 4500 60  0001 C CNN
F 3 "" H 6600 4500 60  0001 C CNN
	1    6600 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 512A235F
P 5550 5350
F 0 "#PWR01" H 5550 5350 30  0001 C CNN
F 1 "GND" H 5550 5280 30  0001 C CNN
F 2 "" H 5550 5350 60  0001 C CNN
F 3 "" H 5550 5350 60  0001 C CNN
	1    5550 5350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 512A232E
P 4700 4150
F 0 "R2" V 4780 4150 50  0000 C CNN
F 1 "R" V 4700 4150 50  0000 C CNN
F 2 "" H 4700 4150 60  0001 C CNN
F 3 "" H 4700 4150 60  0001 C CNN
	1    4700 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 512A2310
P 5500 3500
F 0 "R3" V 5580 3500 50  0000 C CNN
F 1 "R" V 5500 3500 50  0000 C CNN
F 2 "" H 5500 3500 60  0001 C CNN
F 3 "" H 5500 3500 60  0001 C CNN
	1    5500 3500
	0    -1   -1   0   
$EndComp
$Comp
L TST P8
U 1 1 5128FA79
P 5300 2300
F 0 "P8" H 5300 2600 40  0000 C CNN
F 1 "GND" H 5300 2550 30  0000 C CNN
F 2 "" H 5300 2300 60  0001 C CNN
F 3 "" H 5300 2300 60  0001 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 513DD91F
P 6350 4500
F 0 "R4" V 6430 4500 50  0000 C CNN
F 1 "R" V 6350 4500 50  0000 C CNN
F 2 "" H 6350 4500 60  0001 C CNN
F 3 "" H 6350 4500 60  0001 C CNN
	1    6350 4500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 513DD995
P 6350 4850
F 0 "#PWR02" H 6350 4850 30  0001 C CNN
F 1 "GND" H 6350 4780 30  0001 C CNN
F 2 "" H 6350 4850 60  0001 C CNN
F 3 "" H 6350 4850 60  0001 C CNN
	1    6350 4850
	1    0    0    -1  
$EndComp
Text GLabel 5550 3700 0    60   Input ~ 0
VBUS
$Comp
L R R1
U 1 1 513DDCF4
P 4050 4050
F 0 "R1" V 4130 4050 50  0000 C CNN
F 1 "R" V 4050 4050 50  0000 C CNN
F 2 "" H 4050 4050 60  0001 C CNN
F 3 "" H 4050 4050 60  0001 C CNN
	1    4050 4050
	-1   0    0    1   
$EndComp
Text GLabel 4050 3700 0    60   Input ~ 0
VLOAD+
Text GLabel 4050 4400 0    60   Input ~ 0
VLOAD-
$Comp
L GND #PWR03
U 1 1 513DE10D
P 4450 4600
F 0 "#PWR03" H 4450 4600 30  0001 C CNN
F 1 "GND" H 4450 4530 30  0001 C CNN
F 2 "" H 4450 4600 60  0001 C CNN
F 3 "" H 4450 4600 60  0001 C CNN
	1    4450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4700 5550 5350
Wire Wire Line
	6350 4750 6350 4850
Wire Wire Line
	5550 3700 5550 3800
Connection ~ 6350 4250
Wire Wire Line
	4050 3700 4050 3800
Wire Wire Line
	6150 4250 6750 4250
Wire Wire Line
	4950 4150 5050 4150
Text GLabel 4950 4350 0    60   Input ~ 0
VLOAD+
Wire Wire Line
	5050 4350 4950 4350
Wire Wire Line
	4450 4150 4450 4600
Text Notes 3600 4100 0    60   ~ 0
shunt
Wire Wire Line
	5000 4150 5000 3500
Wire Wire Line
	5000 3500 5250 3500
Connection ~ 5000 4150
Wire Wire Line
	5750 3500 6350 3500
Wire Wire Line
	6350 3500 6350 4250
Wire Wire Line
	6600 4300 6600 4250
Connection ~ 6600 4250
Wire Wire Line
	6600 4700 6600 4800
Wire Wire Line
	6600 4800 6350 4800
Connection ~ 6350 4800
Wire Wire Line
	4050 4400 4050 4300
$Comp
L AD8591 U1
U 1 1 51FE785A
P 5350 4250
F 0 "U1" H 5350 3950 60  0000 C CNN
F 1 "AD8591" H 5300 4600 60  0000 C CNN
F 2 "~" H 5350 4250 60  0000 C CNN
F 3 "~" H 5350 4250 60  0000 C CNN
	1    5350 4250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 51FE78C0
P 5650 5000
F 0 "R5" V 5730 5000 40  0000 C CNN
F 1 "R" V 5657 5001 40  0000 C CNN
F 2 "~" V 5580 5000 30  0000 C CNN
F 3 "~" H 5650 5000 30  0000 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5250 5550 5250
Connection ~ 5550 5250
Wire Wire Line
	5650 4750 5650 4650
Text GLabel 5450 2300 2    60   Input ~ 0
GND
Wire Wire Line
	5450 2300 5300 2300
Text GLabel 5300 2450 2    60   Input ~ 0
VBUS
Wire Wire Line
	5300 2450 5150 2450
Text GLabel 5150 2600 2    60   Input ~ 0
VLOAD+
Wire Wire Line
	5150 2600 5000 2600
Text GLabel 4850 2900 2    60   Input ~ 0
ADC_IN
Wire Wire Line
	5000 2750 4850 2750
Wire Wire Line
	4850 2900 4700 2900
Text GLabel 5000 2750 2    60   Input ~ 0
VLOAD-
$Comp
L GND #PWR04
U 1 1 51FE7BC3
P 5300 2350
F 0 "#PWR04" H 5300 2350 30  0001 C CNN
F 1 "GND" H 5300 2280 30  0001 C CNN
F 2 "" H 5300 2350 60  0001 C CNN
F 3 "" H 5300 2350 60  0001 C CNN
	1    5300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2300 5300 2350
$EndSCHEMATC
