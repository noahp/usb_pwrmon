EESchema Schematic File Version 2
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
LIBS:kicadlib
LIBS:usb_pwrmon-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "11 oct 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4550 2650 4550 2550
Wire Wire Line
	4550 2550 4400 2550
Wire Wire Line
	3300 2550 3150 2550
Wire Wire Line
	3150 2400 3300 2400
$Comp
L LVK12-SHUNT R1
U 1 1 51FE7DAB
P 3850 2500
F 0 "R1" H 3850 2300 60  0000 C CNN
F 1 "LVK12-SHUNT" H 3850 2700 60  0000 C CNN
F 2 "" H 3850 2500 60  0001 C CNN
F 3 "" H 3850 2500 60  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 51FE7ECB
P 4550 2650
F 0 "#PWR05" H 4550 2650 30  0001 C CNN
F 1 "GND" H 4550 2580 30  0001 C CNN
F 2 "" H 4550 2650 60  0001 C CNN
F 3 "" H 4550 2650 60  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
$Comp
L USB_MICRO_B J?
U 1 1 5271B764
P 1450 3550
F 0 "J?" H 1450 2900 60  0000 C CNN
F 1 "USB_MICRO_B" H 1450 4050 60  0000 C CNN
F 2 "" H 1450 3550 60  0000 C CNN
F 3 "" H 1450 3550 60  0000 C CNN
	1    1450 3550
	1    0    0    -1  
$EndComp
Text GLabel 1900 3250 2    60   Input ~ 0
+5v
Text GLabel 1900 3400 2    60   Input ~ 0
D+
Text GLabel 1900 3550 2    60   Input ~ 0
D-
$Comp
L GND #PWR?
U 1 1 5271B785
P 1850 3950
F 0 "#PWR?" H 1850 3950 30  0001 C CNN
F 1 "GND" H 1850 3880 30  0001 C CNN
F 2 "" H 1850 3950 60  0000 C CNN
F 3 "" H 1850 3950 60  0000 C CNN
	1    1850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3950 1850 3850
Wire Wire Line
	1850 3850 1750 3850
Wire Wire Line
	1750 3550 1900 3550
Wire Wire Line
	1900 3400 1750 3400
Wire Wire Line
	1750 3250 1900 3250
$Comp
L MKL24Z64VFM4 U?
U 1 1 5271B7E3
P 6250 3900
F 0 "U?" H 5850 3250 60  0000 C CNN
F 1 "MKL24Z64VFM4" H 5750 5300 60  0000 C CNN
F 2 "" H 6250 3900 60  0000 C CNN
F 3 "" H 6250 3900 60  0000 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
$Comp
L AD8293G80 U?
U 1 1 5271B801
P 3850 4850
F 0 "U?" H 3850 4350 60  0000 C CNN
F 1 "AD8293G80" H 3850 5200 60  0000 C CNN
F 2 "" V 3850 4600 60  0000 C CNN
F 3 "" V 3850 4600 60  0000 C CNN
	1    3850 4850
	1    0    0    -1  
$EndComp
Text GLabel 3150 2550 0    60   Input ~ 0
VLOAD-
Text GLabel 3150 2400 0    60   Input ~ 0
+5v
$Comp
L USB_FEMALE_A J?
U 1 1 5271BB2D
P 9550 2900
F 0 "J?" H 9550 2400 60  0000 C CNN
F 1 "USB_FEMALE_A" H 9550 3400 60  0000 C CNN
F 2 "" H 9900 3050 60  0000 C CNN
F 3 "" H 9900 3050 60  0000 C CNN
	1    9550 2900
	-1   0    0    1   
$EndComp
$EndSCHEMATC
