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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "18 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OLED_FPC_CONN J_1
U 1 1 527E7D7F
P 8500 1500
F 0 "J_1" H 8500 -3050 60  0000 C CNN
F 1 "OLED_FPC_CONN" H 8500 1700 60  0000 C CNN
F 2 "" H 8500 1150 60  0000 C CNN
F 3 "" H 8500 1150 60  0000 C CNN
	1    8500 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 527EE2B1
P 8400 1500
F 0 "#PWR01" H 8400 1500 30  0001 C CNN
F 1 "GND" H 8400 1430 30  0001 C CNN
F 2 "" H 8400 1500 60  0000 C CNN
F 3 "" H 8400 1500 60  0000 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 527EE2F8
P 8200 1650
F 0 "C7" H 8200 1750 40  0000 L CNN
F 1 "1uF" H 8206 1565 40  0000 L CNN
F 2 "~" H 8238 1500 30  0000 C CNN
F 3 "~" H 8200 1650 60  0000 C CNN
	1    8200 1650
	0    -1   -1   0   
$EndComp
$Comp
L C C8
U 1 1 527EE30C
P 8200 1950
F 0 "C8" H 8200 2050 40  0000 L CNN
F 1 "1uF" H 8206 1865 40  0000 L CNN
F 2 "~" H 8238 1800 30  0000 C CNN
F 3 "~" H 8200 1950 60  0000 C CNN
	1    8200 1950
	0    -1   -1   0   
$EndComp
$Comp
L C C9
U 1 1 527EE3C0
P 8200 2300
F 0 "C9" H 8200 2400 40  0000 L CNN
F 1 "1uF" H 8206 2215 40  0000 L CNN
F 2 "~" H 8238 2150 30  0000 C CNN
F 3 "~" H 8200 2300 60  0000 C CNN
	1    8200 2300
	0    -1   -1   0   
$EndComp
$Comp
L C C10
U 1 1 527EE3D0
P 8200 2700
F 0 "C10" H 8200 2800 40  0000 L CNN
F 1 "1uF" H 8206 2615 40  0000 L CNN
F 2 "~" H 8238 2550 30  0000 C CNN
F 3 "~" H 8200 2700 60  0000 C CNN
	1    8200 2700
	0    -1   -1   0   
$EndComp
NoConn ~ 8500 2400
Text GLabel 7750 2150 0    60   Input ~ 0
+3.3v
$Comp
L GND #PWR02
U 1 1 527EE54D
P 7800 3250
F 0 "#PWR02" H 7800 3250 30  0001 C CNN
F 1 "GND" H 7800 3180 30  0001 C CNN
F 2 "" H 7800 3250 60  0000 C CNN
F 3 "" H 7800 3250 60  0000 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 527EE733
P 8150 5250
F 0 "R7" V 8230 5250 40  0000 C CNN
F 1 "390K" V 8157 5251 40  0000 C CNN
F 2 "~" V 8080 5250 30  0000 C CNN
F 3 "~" H 8150 5250 30  0000 C CNN
	1    8150 5250
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 527EE765
P 7700 5400
F 0 "C6" H 7700 5500 40  0000 L CNN
F 1 "2.2uF/16V" H 7706 5315 40  0000 L CNN
F 2 "~" H 7738 5250 30  0000 C CNN
F 3 "~" H 7700 5400 60  0000 C CNN
	1    7700 5400
	0    -1   -1   0   
$EndComp
$Comp
L C C11
U 1 1 527EE7C9
P 8200 5550
F 0 "C11" H 8200 5650 40  0000 L CNN
F 1 "10uF" H 8206 5465 40  0000 L CNN
F 2 "~" H 8238 5400 30  0000 C CNN
F 3 "~" H 8200 5550 60  0000 C CNN
	1    8200 5550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 527EE81F
P 7400 5950
F 0 "#PWR03" H 7400 5950 30  0001 C CNN
F 1 "GND" H 7400 5880 30  0001 C CNN
F 2 "" H 7400 5950 60  0000 C CNN
F 3 "" H 7400 5950 60  0000 C CNN
	1    7400 5950
	1    0    0    -1  
$EndComp
Text GLabel 8350 3300 0    60   Input ~ 0
OLED_~CS
Text GLabel 8350 3450 0    60   Input ~ 0
OLED_~RST
Text GLabel 8350 3600 0    60   Input ~ 0
OLED_DC/I2X_SA0
Text GLabel 8350 4050 0    60   Input ~ 0
OLED_D0/SPI_SCLK/I2C_SCK
Text GLabel 8350 4200 0    60   Input ~ 0
OLED_D1/SPI_SDIN/I2C_SDA
$Comp
L USB_FEMALE_A J3
U 1 1 52AFA7BF
P 5950 1500
F 0 "J3" H 5950 1000 60  0000 C CNN
F 1 "USB_FEMALE_A" H 5950 2000 60  0000 C CNN
F 2 "" H 6300 1650 60  0000 C CNN
F 3 "" H 6300 1650 60  0000 C CNN
	1    5950 1500
	-1   0    0    -1  
$EndComp
$Comp
L USB_FEMALE_A J2
U 1 1 52AFA7FE
P 1250 1500
F 0 "J2" H 1250 1000 60  0000 C CNN
F 1 "USB_MALE_A" H 1250 2000 60  0000 C CNN
F 2 "" H 1600 1650 60  0000 C CNN
F 3 "" H 1600 1650 60  0000 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
Text GLabel 1700 850  2    60   Input ~ 0
USB_VBUS
Text GLabel 1700 1500 2    60   Input ~ 0
USB_DM
Text GLabel 1700 1350 2    60   Input ~ 0
USB_DP
$Comp
L GND #PWR05
U 1 1 52AFAA76
P 5500 1900
F 0 "#PWR05" H 5500 1900 30  0001 C CNN
F 1 "GND" H 5500 1830 30  0001 C CNN
F 2 "" H 5500 1900 60  0000 C CNN
F 3 "" H 5500 1900 60  0000 C CNN
	1    5500 1900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 52AFABCE
P 8400 5150
F 0 "#PWR06" H 8400 5150 30  0001 C CNN
F 1 "GND" H 8400 5080 30  0001 C CNN
F 2 "" H 8400 5150 60  0000 C CNN
F 3 "" H 8400 5150 60  0000 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 52AFAE91
P 8400 3950
F 0 "#PWR07" H 8400 3950 30  0001 C CNN
F 1 "GND" H 8400 3880 30  0001 C CNN
F 2 "" H 8400 3950 60  0000 C CNN
F 3 "" H 8400 3950 60  0000 C CNN
	1    8400 3950
	1    0    0    -1  
$EndComp
$Comp
L LVK12-SHUNT R4
U 1 1 52AFA898
P 3750 1200
F 0 "R4" H 3750 1000 60  0000 C CNN
F 1 "LVK12-SHUNT" H 3750 1400 60  0000 C CNN
F 2 "~" H 3750 1200 60  0000 C CNN
F 3 "~" H 3750 1200 60  0000 C CNN
	1    3750 1200
	1    0    0    -1  
$EndComp
Text GLabel 3050 2350 0    60   Input ~ 0
ADC_OUT
Text GLabel 4400 6700 2    60   Input ~ 0
OLED_D0/SPI_SCLK/I2C_SCK
Text GLabel 4250 6850 2    60   Input ~ 0
OLED_D1/SPI_SDIN/I2C_SDA
Text GLabel 4100 6650 3    60   Input ~ 0
OLED_DC/I2X_SA0
Text GLabel 3150 4550 0    60   Input ~ 0
NRESET
$Comp
L C C2
U 1 1 52AFC29E
P 3250 4850
F 0 "C2" H 3250 4950 40  0000 L CNN
F 1 "0.1uF" H 3256 4765 40  0000 L CNN
F 2 "~" H 3288 4700 30  0000 C CNN
F 3 "~" H 3250 4850 60  0000 C CNN
	1    3250 4850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 52AFC4A1
P 3250 5150
F 0 "#PWR010" H 3250 5150 30  0001 C CNN
F 1 "GND" H 3250 5080 30  0001 C CNN
F 2 "" H 3250 5150 60  0000 C CNN
F 3 "" H 3250 5150 60  0000 C CNN
	1    3250 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8400 1500 8500 1500
Wire Wire Line
	8500 1650 8400 1650
Wire Wire Line
	8000 1650 7900 1650
Wire Wire Line
	7900 1650 7900 1800
Wire Wire Line
	7900 1800 8500 1800
Wire Wire Line
	8400 1950 8500 1950
Wire Wire Line
	8000 1950 7900 1950
Wire Wire Line
	7900 1950 7900 2100
Wire Wire Line
	7900 2100 8500 2100
Wire Wire Line
	8400 2250 8500 2250
Wire Wire Line
	8400 2700 8500 2700
Wire Wire Line
	7900 2700 8000 2700
Wire Wire Line
	7800 2550 8500 2550
Connection ~ 7900 2550
Wire Wire Line
	8450 2150 8450 2700
Connection ~ 8450 2700
Connection ~ 8450 2250
Wire Wire Line
	8400 2250 8400 2300
Wire Wire Line
	8000 2300 7900 2300
Wire Wire Line
	7900 2300 7900 2700
Wire Wire Line
	8450 2150 7750 2150
Wire Wire Line
	7800 2550 7800 3250
Wire Wire Line
	8400 5250 8500 5250
Wire Wire Line
	7900 5400 8500 5400
Wire Wire Line
	7900 5250 7400 5250
Wire Wire Line
	7400 5250 7400 5950
Wire Wire Line
	7400 5400 7500 5400
Wire Wire Line
	8400 5550 8500 5550
Wire Wire Line
	7400 5550 8000 5550
Connection ~ 7400 5400
Wire Wire Line
	7400 5850 8500 5850
Connection ~ 7400 5550
Connection ~ 7400 5850
Wire Wire Line
	8500 5700 7400 5700
Connection ~ 7400 5700
Wire Wire Line
	8350 3300 8500 3300
Wire Wire Line
	8350 3450 8500 3450
Wire Wire Line
	8500 3600 8350 3600
Wire Wire Line
	8350 4050 8500 4050
Wire Wire Line
	8350 4200 8500 4200
Wire Wire Line
	7800 2850 8500 2850
Wire Wire Line
	7800 3000 8500 3000
Wire Wire Line
	7800 3150 8500 3150
Connection ~ 7800 2850
Connection ~ 7800 3000
Connection ~ 7800 3150
Wire Wire Line
	1600 1200 3050 1200
Wire Wire Line
	1700 1350 1600 1350
Wire Wire Line
	1600 1500 1700 1500
Wire Wire Line
	5600 1350 5500 1350
Wire Wire Line
	5500 1500 5600 1500
Wire Wire Line
	1600 1650 1700 1650
Wire Wire Line
	1700 1650 1700 1900
Wire Wire Line
	1600 1800 1700 1800
Connection ~ 1700 1800
Wire Wire Line
	5600 1650 5500 1650
Wire Wire Line
	5500 1650 5500 1900
Wire Wire Line
	5600 1800 5500 1800
Connection ~ 5500 1800
Wire Wire Line
	8500 4350 8400 4350
Wire Wire Line
	8400 4350 8400 5150
Wire Wire Line
	8500 4950 8400 4950
Connection ~ 8400 4950
Wire Wire Line
	8500 4800 8400 4800
Connection ~ 8400 4800
Wire Wire Line
	8400 4650 8500 4650
Connection ~ 8400 4650
Wire Wire Line
	8500 4500 8400 4500
Connection ~ 8400 4500
Wire Wire Line
	8500 5100 8400 5100
Connection ~ 8400 5100
Wire Wire Line
	8500 3900 8400 3900
Wire Wire Line
	8400 3750 8400 3950
Wire Wire Line
	8500 3750 8400 3750
Connection ~ 8400 3900
Wire Wire Line
	4450 1100 4450 2350
Wire Wire Line
	4450 1250 4300 1250
Wire Wire Line
	4300 1100 4450 1100
Connection ~ 4450 1250
Wire Wire Line
	3050 1800 4250 1800
Wire Wire Line
	3050 1100 3050 1800
Wire Wire Line
	3050 1250 3200 1250
Wire Wire Line
	3200 1100 3050 1100
Connection ~ 3050 1250
Wire Wire Line
	1700 1200 1700 850 
Connection ~ 3050 1200
Connection ~ 1700 1200
Connection ~ 4450 1200
Wire Wire Line
	3150 2350 3050 2350
Wire Wire Line
	3250 5050 3250 5150
Wire Wire Line
	3250 4550 3250 4650
Connection ~ 3250 4550
Wire Wire Line
	3150 4550 4100 4550
$Comp
L ARM_10PIN J1
U 1 1 52AFEA5F
P 1100 3400
F 0 "J1" H 1100 2400 60  0000 C CNN
F 1 "ARM_10PIN" H 1100 4050 60  0000 C CNN
F 2 "~" H 1100 3400 60  0000 C CNN
F 3 "~" H 1100 3400 60  0000 C CNN
	1    1100 3400
	1    0    0    -1  
$EndComp
Text GLabel 1650 2900 2    60   Input ~ 0
+3.3v
Text GLabel 1700 3050 2    60   Input ~ 0
SWDIO
Text GLabel 1700 3350 2    60   Input ~ 0
SWCLK
Text GLabel 1700 4250 2    60   Input ~ 0
NRESET
Wire Wire Line
	1700 4250 1600 4250
Wire Wire Line
	1700 3350 1600 3350
Wire Wire Line
	1600 3050 1700 3050
Wire Wire Line
	1650 2900 1550 2900
$Comp
L GND #PWR011
U 1 1 52AFECEC
P 1650 4150
F 0 "#PWR011" H 1650 4150 30  0001 C CNN
F 1 "GND" H 1650 4080 30  0001 C CNN
F 2 "" H 1650 4150 60  0000 C CNN
F 3 "" H 1650 4150 60  0000 C CNN
	1    1650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3200 1650 4150
Wire Wire Line
	1650 4100 1550 4100
Wire Wire Line
	1650 3500 1550 3500
Connection ~ 1650 4100
Wire Wire Line
	1550 3200 1650 3200
Connection ~ 1650 3500
NoConn ~ 1600 3650
NoConn ~ 1550 3800
NoConn ~ 1600 3950
Text GLabel 5100 5750 2    60   Input ~ 0
ADC_OUT
$Comp
L LED D1
U 1 1 52AFF3AE
P 3250 6200
F 0 "D1" H 3250 6300 50  0000 C CNN
F 1 "LED" H 3250 6100 50  0000 C CNN
F 2 "~" H 3250 6200 60  0000 C CNN
F 3 "~" H 3250 6200 60  0000 C CNN
	1    3250 6200
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 52AFF3C5
P 3250 6750
F 0 "R3" V 3330 6750 40  0000 C CNN
F 1 "330R" V 3257 6751 40  0000 C CNN
F 2 "~" V 3180 6750 30  0000 C CNN
F 3 "~" H 3250 6750 30  0000 C CNN
	1    3250 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 52AFF96F
P 3250 7100
F 0 "#PWR012" H 3250 7100 30  0001 C CNN
F 1 "GND" H 3250 7030 30  0001 C CNN
F 2 "" H 3250 7100 60  0000 C CNN
F 3 "" H 3250 7100 60  0000 C CNN
	1    3250 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6500 3250 6400
Text Notes 650  4800 0    60   ~ 0
nReset has internal pull-up, sec 6.2.2.1 of manual
Text GLabel 4850 3250 0    60   Input ~ 0
USB_VBUS
$Comp
L GND #PWR013
U 1 1 52B00219
P 4950 3850
F 0 "#PWR013" H 4950 3850 30  0001 C CNN
F 1 "GND" H 4950 3780 30  0001 C CNN
F 2 "" H 4950 3850 60  0000 C CNN
F 3 "" H 4950 3850 60  0000 C CNN
	1    4950 3850
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 52B0021F
P 4950 3550
F 0 "C4" H 4950 3650 40  0000 L CNN
F 1 "1uF" H 4956 3465 40  0000 L CNN
F 2 "~" H 4988 3400 30  0000 C CNN
F 3 "~" H 4950 3550 60  0000 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3850 4950 3750
$Comp
L GND #PWR014
U 1 1 52AFBB94
P 1700 1900
F 0 "#PWR014" H 1700 1900 30  0001 C CNN
F 1 "GND" H 1700 1830 30  0001 C CNN
F 2 "" H 1700 1900 60  0000 C CNN
F 3 "" H 1700 1900 60  0000 C CNN
	1    1700 1900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 52D1FA15
P 2600 5750
F 0 "SW1" H 2750 5860 50  0000 C CNN
F 1 "SW_PUSH" H 2600 5670 50  0000 C CNN
F 2 "" H 2600 5750 60  0000 C CNN
F 3 "" H 2600 5750 60  0000 C CNN
	1    2600 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 52D1FA3B
P 2200 5850
F 0 "#PWR015" H 2200 5850 30  0001 C CNN
F 1 "GND" H 2200 5780 30  0001 C CNN
F 2 "" H 2200 5850 60  0000 C CNN
F 3 "" H 2200 5850 60  0000 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5850 2200 5750
Wire Wire Line
	2200 5750 2300 5750
Text GLabel 5500 1350 0    60   Input ~ 0
USB_DP
Text GLabel 5500 1500 0    60   Input ~ 0
USB_DM
$Comp
L MKL02ZXVFG4 U2
U 1 1 530D3511
P 4100 5750
F 0 "U2" H 3650 5150 60  0000 C CNN
F 1 "MKL02ZXVFG4" H 4800 5150 60  0000 C CNN
F 2 "~" H 4100 5750 60  0000 C CNN
F 3 "~" H 4100 5750 60  0000 C CNN
	1    4100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4550 4100 4850
Text GLabel 3850 4750 0    60   Input ~ 0
SWDIO
Wire Wire Line
	3850 4750 3950 4750
Wire Wire Line
	3950 4750 3950 4850
Text GLabel 4250 4750 1    60   Input ~ 0
SWCLK
Wire Wire Line
	4250 4750 4250 4850
Wire Wire Line
	4400 6550 4400 6700
Wire Wire Line
	4250 6550 4250 6850
Text GLabel 3950 6650 3    60   Input ~ 0
OLED_~CS
Wire Wire Line
	3950 6650 3950 6550
Text GLabel 6550 4950 0    60   Input ~ 0
USB_VBUS
Wire Wire Line
	5100 5750 5000 5750
$Comp
L R R5
U 1 1 530D3EF7
P 6650 5300
F 0 "R5" V 6730 5300 40  0000 C CNN
F 1 "25K" V 6657 5301 40  0000 C CNN
F 2 "~" V 6580 5300 30  0000 C CNN
F 3 "~" H 6650 5300 30  0000 C CNN
	1    6650 5300
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 530D3EFD
P 6650 6000
F 0 "R6" V 6730 6000 40  0000 C CNN
F 1 "25K" V 6657 6001 40  0000 C CNN
F 2 "~" V 6580 6000 30  0000 C CNN
F 3 "~" H 6650 6000 30  0000 C CNN
	1    6650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4950 6650 4950
Wire Wire Line
	6650 4950 6650 5050
Wire Wire Line
	6650 5550 6650 5750
$Comp
L GND #PWR016
U 1 1 530D4021
P 6650 6300
F 0 "#PWR016" H 6650 6300 30  0001 C CNN
F 1 "GND" H 6650 6230 30  0001 C CNN
F 2 "" H 6650 6300 60  0000 C CNN
F 3 "" H 6650 6300 60  0000 C CNN
	1    6650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 6300 6650 6250
Text GLabel 3250 5450 0    60   Input ~ 0
+3.3v
Wire Wire Line
	3250 5450 3350 5450
$Comp
L GND #PWR017
U 1 1 530D4149
P 3250 5600
F 0 "#PWR017" H 3250 5600 30  0001 C CNN
F 1 "GND" H 3250 5530 30  0001 C CNN
F 2 "" H 3250 5600 60  0000 C CNN
F 3 "" H 3250 5600 60  0000 C CNN
	1    3250 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 5600 3350 5600
Text GLabel 6550 5650 0    60   Input ~ 0
VBUS_SENSE
Wire Wire Line
	6550 5650 6650 5650
Connection ~ 6650 5650
Text GLabel 5100 5900 2    60   Input ~ 0
VBUS_SENSE
Wire Wire Line
	5100 5900 5000 5900
Wire Wire Line
	3250 7000 3250 7100
Wire Wire Line
	3250 6000 3250 5900
Wire Wire Line
	3250 5900 3350 5900
Wire Wire Line
	2900 5750 3350 5750
Wire Wire Line
	4850 3250 5250 3250
Wire Wire Line
	4950 3250 4950 3350
$Comp
L AAT3221 U3
U 1 1 530D4982
P 5800 3500
F 0 "U3" H 5800 3300 60  0000 C CNN
F 1 "AAT3221" H 5800 3900 60  0000 C CNN
F 2 "~" H 5800 3500 60  0000 C CNN
F 3 "~" H 5800 3500 60  0000 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
Connection ~ 4950 3250
NoConn ~ 6350 3550
Wire Wire Line
	5250 3550 5100 3550
Wire Wire Line
	5100 3550 5100 3250
Connection ~ 5100 3250
$Comp
L GND #PWR018
U 1 1 530D4BC5
P 5200 3400
F 0 "#PWR018" H 5200 3400 30  0001 C CNN
F 1 "GND" H 5200 3330 30  0001 C CNN
F 2 "" H 5200 3400 60  0000 C CNN
F 3 "" H 5200 3400 60  0000 C CNN
	1    5200 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 3400 5250 3400
$Comp
L C C5
U 1 1 530D4D67
P 6650 3550
F 0 "C5" H 6650 3650 40  0000 L CNN
F 1 "1uF" H 6656 3465 40  0000 L CNN
F 2 "~" H 6688 3400 30  0000 C CNN
F 3 "~" H 6650 3550 60  0000 C CNN
	1    6650 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 530D4D6D
P 6650 3850
F 0 "#PWR019" H 6650 3850 30  0001 C CNN
F 1 "GND" H 6650 3780 30  0001 C CNN
F 2 "" H 6650 3850 60  0000 C CNN
F 3 "" H 6650 3850 60  0000 C CNN
	1    6650 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 3350 6650 3250
Wire Wire Line
	6350 3250 6750 3250
Wire Wire Line
	6650 3750 6650 3850
Text GLabel 6750 3250 2    60   Input ~ 0
+3.3v
Connection ~ 6650 3250
Text GLabel 5100 5450 2    60   Input ~ 0
SERIAL_RX
Text GLabel 5100 5600 2    60   Input ~ 0
SERIAL_TX
Wire Wire Line
	4100 6650 4100 6550
Text GLabel 4400 4750 1    60   Input ~ 0
OLED_~RST
Wire Wire Line
	4400 4750 4400 4850
Wire Wire Line
	5100 5450 5000 5450
Wire Wire Line
	5000 5600 5100 5600
$Comp
L TST P1
U 1 1 530D5889
P 1000 5850
F 0 "P1" H 1000 6150 40  0000 C CNN
F 1 "TX" H 1000 6100 30  0000 C CNN
F 2 "~" H 1000 5850 60  0000 C CNN
F 3 "~" H 1000 5850 60  0000 C CNN
	1    1000 5850
	1    0    0    -1  
$EndComp
$Comp
L TST P2
U 1 1 530D5896
P 1150 5850
F 0 "P2" H 1150 6150 40  0000 C CNN
F 1 "RX" H 1150 6100 30  0000 C CNN
F 2 "~" H 1150 5850 60  0000 C CNN
F 3 "~" H 1150 5850 60  0000 C CNN
	1    1150 5850
	1    0    0    -1  
$EndComp
$Comp
L TST P3
U 1 1 530D589C
P 1300 5850
F 0 "P3" H 1300 6150 40  0000 C CNN
F 1 "GND" H 1300 6100 30  0000 C CNN
F 2 "~" H 1300 5850 60  0000 C CNN
F 3 "~" H 1300 5850 60  0000 C CNN
	1    1300 5850
	1    0    0    -1  
$EndComp
Text GLabel 1000 5950 3    60   Input ~ 0
SERIAL_TX
Text GLabel 1150 5950 3    60   Input ~ 0
SERIAL_RX
$Comp
L GND #PWR020
U 1 1 530D58B0
P 1300 5950
F 0 "#PWR020" H 1300 5950 30  0001 C CNN
F 1 "GND" H 1300 5880 30  0001 C CNN
F 2 "" H 1300 5950 60  0000 C CNN
F 3 "" H 1300 5950 60  0000 C CNN
	1    1300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5850 1300 5950
Wire Wire Line
	1150 5950 1150 5850
Wire Wire Line
	1000 5850 1000 5950
Text GLabel 2950 5950 0    60   Input ~ 0
SW_SNS
Wire Wire Line
	2950 5950 3050 5950
Wire Wire Line
	3050 5950 3050 5750
Connection ~ 3050 5750
$Comp
L MAX9938 U?
U 1 1 5378C729
P 3700 2200
F 0 "U?" H 3700 1900 60  0000 C CNN
F 1 "MAX9938" H 3700 2500 60  0000 C CNN
F 2 "~" H 3650 2200 60  0000 C CNN
F 3 "~" H 3650 2200 60  0000 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2350 4250 2350
Wire Wire Line
	4250 1800 4250 2050
$Comp
L GND #PWR?
U 1 1 5378C94F
P 3050 2200
F 0 "#PWR?" H 3050 2200 30  0001 C CNN
F 1 "GND" H 3050 2130 30  0001 C CNN
F 2 "" H 3050 2200 60  0000 C CNN
F 3 "" H 3050 2200 60  0000 C CNN
	1    3050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2200 3150 2200
Wire Wire Line
	3050 2200 3050 2050
Wire Wire Line
	3050 2050 3150 2050
Wire Wire Line
	5600 1200 4450 1200
$EndSCHEMATC
