EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:akhil_full_adder-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L akhil_full_adder U1
U 1 1 62222EC4
P 2400 5000
F 0 "U1" H 5250 6800 60  0000 C CNN
F 1 "akhil_full_adder" H 5250 7000 60  0000 C CNN
F 2 "" H 5250 6950 60  0000 C CNN
F 3 "" H 5250 6950 60  0000 C CNN
	1    2400 5000
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_3 U5
U 1 1 62222F42
P 4000 3150
F 0 "U5" H 4000 3150 60  0000 C CNN
F 1 "adc_bridge_3" H 4000 3300 60  0000 C CNN
F 2 "" H 4000 3150 60  0000 C CNN
F 3 "" H 4000 3150 60  0000 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_2 U6
U 1 1 62222F77
P 6400 3150
F 0 "U6" H 6400 3150 60  0000 C CNN
F 1 "dac_bridge_2" H 6450 3300 60  0000 C CNN
F 2 "" H 6400 3150 60  0000 C CNN
F 3 "" H 6400 3150 60  0000 C CNN
	1    6400 3150
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 62222FB7
P 3400 3900
F 0 "v3" H 3200 4000 60  0000 C CNN
F 1 "pulse" H 3200 3850 60  0000 C CNN
F 2 "R1" H 3100 3900 60  0000 C CNN
F 3 "" H 3400 3900 60  0000 C CNN
	1    3400 3900
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 62223016
P 3050 3900
F 0 "v2" H 2850 4000 60  0000 C CNN
F 1 "pulse" H 2850 3850 60  0000 C CNN
F 2 "R1" H 2750 3900 60  0000 C CNN
F 3 "" H 3050 3900 60  0000 C CNN
	1    3050 3900
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 622230CF
P 2650 3900
F 0 "v1" H 2450 4000 60  0000 C CNN
F 1 "pulse" H 2450 3850 60  0000 C CNN
F 2 "R1" H 2350 3900 60  0000 C CNN
F 3 "" H 2650 3900 60  0000 C CNN
	1    2650 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 62223104
P 2650 4350
F 0 "#PWR01" H 2650 4100 50  0001 C CNN
F 1 "GND" H 2650 4200 50  0000 C CNN
F 2 "" H 2650 4350 50  0001 C CNN
F 3 "" H 2650 4350 50  0001 C CNN
	1    2650 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 62223130
P 3050 4350
F 0 "#PWR02" H 3050 4100 50  0001 C CNN
F 1 "GND" H 3050 4200 50  0000 C CNN
F 2 "" H 3050 4350 50  0001 C CNN
F 3 "" H 3050 4350 50  0001 C CNN
	1    3050 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 62223150
P 3400 4350
F 0 "#PWR03" H 3400 4100 50  0001 C CNN
F 1 "GND" H 3400 4200 50  0000 C CNN
F 2 "" H 3400 4350 50  0001 C CNN
F 3 "" H 3400 4350 50  0001 C CNN
	1    3400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3450 2650 3100
Wire Wire Line
	2650 3100 3400 3100
Wire Wire Line
	3050 3450 3050 3200
Wire Wire Line
	3050 3200 3400 3200
Wire Wire Line
	3400 3450 3400 3300
Text GLabel 7100 3100 2    60   Output Italic 0
Sum
Text GLabel 7500 3200 2    60   Output Italic 0
Carry
Wire Wire Line
	6950 3100 7100 3100
Wire Wire Line
	6950 3200 7500 3200
$Comp
L plot_v1 U7
U 1 1 62223285
P 7000 3050
F 0 "U7" H 7000 3550 60  0000 C CNN
F 1 "plot_v1" H 7200 3400 60  0000 C CNN
F 2 "" H 7000 3050 60  0000 C CNN
F 3 "" H 7000 3050 60  0000 C CNN
	1    7000 3050
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U8
U 1 1 622232FA
P 7400 3050
F 0 "U8" H 7400 3550 60  0000 C CNN
F 1 "plot_v1" H 7600 3400 60  0000 C CNN
F 2 "" H 7400 3050 60  0000 C CNN
F 3 "" H 7400 3050 60  0000 C CNN
	1    7400 3050
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 62223369
P 2750 3100
F 0 "U2" H 2750 3600 60  0000 C CNN
F 1 "plot_v1" H 2950 3450 60  0000 C CNN
F 2 "" H 2750 3100 60  0000 C CNN
F 3 "" H 2750 3100 60  0000 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 622233B0
P 3150 3100
F 0 "U3" H 3150 3600 60  0000 C CNN
F 1 "plot_v1" H 3350 3450 60  0000 C CNN
F 2 "" H 3150 3100 60  0000 C CNN
F 3 "" H 3150 3100 60  0000 C CNN
	1    3150 3100
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U4
U 1 1 62223479
P 3500 3450
F 0 "U4" H 3500 3950 60  0000 C CNN
F 1 "plot_v1" H 3700 3800 60  0000 C CNN
F 2 "" H 3500 3450 60  0000 C CNN
F 3 "" H 3500 3450 60  0000 C CNN
	1    3500 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3450 3450 3450
Wire Wire Line
	3450 3450 3450 3400
Wire Wire Line
	3450 3400 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3150 2900 3150 3200
Connection ~ 3150 3200
Wire Wire Line
	2750 2900 2750 3100
Connection ~ 2750 3100
Text GLabel 2500 3250 0    60   Input ~ 0
A
Text GLabel 2850 3300 0    60   Input ~ 0
B
Text GLabel 3300 3350 0    60   Input ~ 0
Cin
Wire Wire Line
	2500 3250 2650 3250
Connection ~ 2650 3250
Wire Wire Line
	2850 3300 3050 3300
Connection ~ 3050 3300
Wire Wire Line
	3300 3350 3400 3350
Connection ~ 3400 3350
Wire Wire Line
	7000 2850 7000 3100
Connection ~ 7000 3100
Wire Wire Line
	7400 2850 7400 3200
Connection ~ 7400 3200
$EndSCHEMATC
