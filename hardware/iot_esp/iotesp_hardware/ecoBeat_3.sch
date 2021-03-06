EESchema Schematic File Version 2
LIBS:ecoBeat_3-rescue
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
LIBS:wemos_mini
LIBS:ecomodbus
LIBS:ecoBeat_3-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Lector de pulsos"
Date "2018-02-14"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED-RESCUE-ecoBeat_3 D2
U 1 1 5A83FD4B
P 7875 2145
F 0 "D2" H 7875 2245 50  0000 C CNN
F 1 "LED" H 7875 2045 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7875 2145 50  0001 C CNN
F 3 "" H 7875 2145 50  0000 C CNN
	1    7875 2145
	-1   0    0    -1  
$EndComp
$Comp
L LED-RESCUE-ecoBeat_3 D3
U 1 1 5A83FF0F
P 7875 2450
F 0 "D3" H 7875 2550 50  0000 C CNN
F 1 "LED" H 7875 2350 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7875 2450 50  0001 C CNN
F 3 "" H 7875 2450 50  0000 C CNN
	1    7875 2450
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 5A84326B
P 2170 1070
F 0 "#FLG01" H 2170 1165 50  0001 C CNN
F 1 "PWR_FLAG" H 2180 1250 50  0000 C CNN
F 2 "" H 2170 1070 50  0000 C CNN
F 3 "" H 2170 1070 50  0000 C CNN
	1    2170 1070
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A84C7C1
P 8125 2700
F 0 "#PWR02" H 8125 2450 50  0001 C CNN
F 1 "GND" H 8125 2550 50  0000 C CNN
F 2 "" H 8125 2700 50  0000 C CNN
F 3 "" H 8125 2700 50  0000 C CNN
	1    8125 2700
	-1   0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A858B7F
P 7425 2450
F 0 "R9" V 7505 2450 50  0000 C CNN
F 1 "220" V 7425 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7355 2450 50  0001 C CNN
F 3 "" H 7425 2450 50  0000 C CNN
	1    7425 2450
	0    1    -1   0   
$EndComp
$Comp
L R R8
U 1 1 5A858C9F
P 7425 2145
F 0 "R8" V 7505 2145 50  0000 C CNN
F 1 "220" V 7425 2145 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7355 2145 50  0001 C CNN
F 3 "" H 7425 2145 50  0000 C CNN
	1    7425 2145
	0    1    -1   0   
$EndComp
$Comp
L WeMos_mini U1
U 1 1 5ABA378E
P 5470 2505
F 0 "U1" H 5470 3005 60  0000 C CNN
F 1 "WeMos_mini" H 5470 2005 60  0000 C CNN
F 2 "libreria_huellas_proyecto:D1_mini_board_oscar" H 6020 1805 60  0001 C CNN
F 3 "" H 6020 1805 60  0000 C CNN
	1    5470 2505
	1    0    0    -1  
$EndComp
NoConn ~ 4970 2155
NoConn ~ 4970 2255
$Comp
L CONN_02X05 P1
U 1 1 5D78B836
P 2800 2365
F 0 "P1" H 2800 2665 50  0000 C CNN
F 1 "CONN_02X05" H 2800 2065 50  0000 C CNN
F 2 "libreria_huellas_proyecto:D1_mini_board" H 2800 1165 50  0001 C CNN
F 3 "" H 2800 1165 50  0000 C CNN
	1    2800 2365
	1    0    0    -1  
$EndComp
Text Label 7270 2145 2    60   ~ 0
esp_d4
$Comp
L TEST_1P J1
U 1 1 5D7CA38F
P 5490 1215
F 0 "J1" H 5565 1490 50  0000 C CNN
F 1 "Test" H 5600 1415 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5690 1215 50  0001 C CNN
F 3 "" H 5690 1215 50  0001 C CNN
	1    5490 1215
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky-RESCUE-ecoBeat_3 D1
U 1 1 5D7CA61B
P 5275 1260
F 0 "D1" H 5460 1020 50  0000 C CNN
F 1 "Schottky" H 5345 1100 50  0000 C CNN
F 2 "Diodes_SMD:D_2114" H 5275 1260 50  0001 C CNN
F 3 "" H 5275 1260 50  0001 C CNN
	1    5275 1260
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 5D7CBFDF
P 6330 2755
F 0 "#PWR03" H 6330 2505 50  0001 C CNN
F 1 "GND" H 6330 2605 50  0000 C CNN
F 2 "" H 6330 2755 50  0000 C CNN
F 3 "" H 6330 2755 50  0000 C CNN
	1    6330 2755
	1    0    0    -1  
$EndComp
Text Label 4770 1260 0    60   ~ 0
vcc_5v
Text Label 5975 2855 0    60   ~ 0
vin_5v
Text Label 5570 1260 0    60   ~ 0
vin_5v
Text Label 6975 2450 0    60   ~ 0
vin_5v
$Comp
L PWR_FLAG #FLG04
U 1 1 5DEA49F7
P 2965 1065
F 0 "#FLG04" H 2965 1160 50  0001 C CNN
F 1 "PWR_FLAG" H 2965 1245 50  0000 C CNN
F 2 "" H 2965 1065 50  0000 C CNN
F 3 "" H 2965 1065 50  0000 C CNN
	1    2965 1065
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5DEA49F9
P 2965 1165
F 0 "#PWR05" H 2965 915 50  0001 C CNN
F 1 "GND" H 2965 1015 50  0000 C CNN
F 2 "" H 2965 1165 50  0000 C CNN
F 3 "" H 2965 1165 50  0000 C CNN
	1    2965 1165
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5DEA49FF
P 2890 4570
F 0 "R1" V 2970 4570 50  0000 C CNN
F 1 "10K" V 2890 4570 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2820 4570 50  0001 C CNN
F 3 "" H 2890 4570 50  0000 C CNN
	1    2890 4570
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5DEA4A00
P 3080 4570
F 0 "R2" V 3160 4570 50  0000 C CNN
F 1 "10K" V 3080 4570 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3010 4570 50  0001 C CNN
F 3 "" H 3080 4570 50  0000 C CNN
	1    3080 4570
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5DEA4A01
P 3270 4570
F 0 "R3" V 3350 4570 50  0000 C CNN
F 1 "10K" V 3270 4570 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3200 4570 50  0001 C CNN
F 3 "" H 3270 4570 50  0000 C CNN
	1    3270 4570
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5DEA4A02
P 3460 4570
F 0 "R4" V 3540 4570 50  0000 C CNN
F 1 "10K" V 3460 4570 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3390 4570 50  0001 C CNN
F 3 "" H 3460 4570 50  0000 C CNN
	1    3460 4570
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5DEA4A03
P 4440 5505
F 0 "#PWR06" H 4440 5255 50  0001 C CNN
F 1 "GND" H 4440 5355 50  0000 C CNN
F 2 "" H 4440 5505 50  0000 C CNN
F 3 "" H 4440 5505 50  0000 C CNN
	1    4440 5505
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5DEA4A06
P 5360 4570
F 0 "R5" V 5440 4570 50  0000 C CNN
F 1 "20K" V 5360 4570 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5290 4570 50  0001 C CNN
F 3 "" H 5360 4570 50  0000 C CNN
	1    5360 4570
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5DEA4A07
P 5360 5645
F 0 "R6" V 5440 5645 50  0000 C CNN
F 1 "20K" V 5360 5645 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5290 5645 50  0001 C CNN
F 3 "" H 5360 5645 50  0000 C CNN
	1    5360 5645
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 5DEA4A08
P 5360 5795
F 0 "#PWR07" H 5360 5545 50  0001 C CNN
F 1 "GND" H 5360 5645 50  0000 C CNN
F 2 "" H 5360 5795 50  0000 C CNN
F 3 "" H 5360 5795 50  0000 C CNN
	1    5360 5795
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5DEA4A09
P 5550 4570
F 0 "R7" V 5630 4570 50  0000 C CNN
F 1 "120" V 5550 4570 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5480 4570 50  0001 C CNN
F 3 "" H 5550 4570 50  0000 C CNN
	1    5550 4570
	-1   0    0    1   
$EndComp
Text Label 6015 2155 0    60   ~ 0
esp_tx
Text Label 6015 2255 0    60   ~ 0
esp_rx
Text Label 4545 2455 0    60   ~ 0
esp_d5
Text Label 4545 2555 0    60   ~ 0
esp_d6
Text Label 6015 2655 0    60   ~ 0
esp_d4
Text Label 6015 2555 0    60   ~ 0
esp_tx2
Text Label 6015 2355 0    60   ~ 0
esp_rx2
Text Label 6015 2455 0    60   ~ 0
esp_d2
Text Label 4545 2355 0    60   ~ 0
esp_d0
Text Label 2240 4905 0    60   ~ 0
esp_rx2
Text Label 2240 5305 0    60   ~ 0
esp_tx2
Text Label 2240 5005 0    60   ~ 0
esp_d2
Text Label 2240 5205 0    60   ~ 0
esp_d0
Text Label 5975 5005 0    60   ~ 0
mb_a
Text Label 5975 5205 0    60   ~ 0
mb_b
Text Label 3145 2165 0    60   ~ 0
mb_a
Text Label 3145 2265 0    60   ~ 0
mb_b
Text Label 3135 2465 0    60   ~ 0
esp_rx
Text Label 2220 2565 0    60   ~ 0
esp_d5
Text Label 3135 2365 0    60   ~ 0
esp_d6
$Comp
L VCC #PWR08
U 1 1 5A8432ED
P 2170 1170
F 0 "#PWR08" H 2170 1020 50  0001 C CNN
F 1 "VCC" H 2170 1320 50  0000 C CNN
F 2 "" H 2170 1170 50  0000 C CNN
F 3 "" H 2170 1170 50  0000 C CNN
	1    2170 1170
	-1   0    0    1   
$EndComp
Text Label 3175 4060 0    60   ~ 0
vin_5v
Text Label 4440 4520 0    60   ~ 0
vin_5v
Text Label 5360 4060 0    60   ~ 0
vin_5v
Text Label 2130 2165 0    60   ~ 0
vcc_5v
Text Label 2170 1120 0    60   ~ 0
vcc_5v
$Comp
L MAX_485 U2
U 1 1 5DEA4A0A
P 4440 5105
F 0 "U2" H 4560 5550 50  0000 L CNN
F 1 "MAX_485" H 4560 5470 50  0000 L CNN
F 2 "SMD_Packages:SOIC-8-N" H 4440 5105 50  0001 C CIN
F 3 "" H 4440 5105 50  0000 C CNN
	1    4440 5105
	1    0    0    -1  
$EndComp
NoConn ~ 4970 2855
Text Label 2130 2265 0    60   ~ 0
vcc_5v
Wire Wire Line
	8125 2450 8025 2450
Connection ~ 8125 2450
Wire Wire Line
	7575 2450 7725 2450
Wire Wire Line
	7275 2450 6975 2450
Wire Wire Line
	7275 2145 6975 2145
Wire Wire Line
	7725 2145 7575 2145
Wire Wire Line
	8025 2145 8125 2145
Wire Wire Line
	8125 2145 8125 2700
Wire Wire Line
	3050 2265 3450 2265
Wire Wire Line
	3050 2365 3450 2365
Wire Wire Line
	3050 2465 3450 2465
Wire Wire Line
	3050 2565 3450 2565
Wire Wire Line
	2550 2265 2130 2265
Wire Wire Line
	2550 2365 2130 2365
Wire Wire Line
	2550 2465 2130 2465
Wire Wire Line
	3050 2165 3450 2165
Wire Wire Line
	2550 2565 2220 2565
Wire Wire Line
	5970 2355 6330 2355
Wire Notes Line
	6330 1910 6330 3185
Wire Notes Line
	6015 1855 6015 3175
Wire Notes Line
	4545 1945 4545 3210
Wire Wire Line
	4970 2355 4545 2355
Wire Wire Line
	4970 2455 4545 2455
Wire Wire Line
	4970 2555 4545 2555
Wire Wire Line
	5970 2455 6330 2455
Wire Wire Line
	5970 2555 6330 2555
Wire Wire Line
	5970 2655 6330 2655
Wire Wire Line
	5970 2755 6330 2755
Wire Wire Line
	5425 1260 5830 1260
Wire Wire Line
	2550 2165 2130 2165
Wire Wire Line
	5125 1260 4770 1260
Wire Wire Line
	5490 1215 5490 1260
Connection ~ 5490 1260
Wire Wire Line
	2965 1065 2965 1165
Wire Wire Line
	3175 4235 3175 4060
Wire Wire Line
	2890 4235 3460 4235
Wire Wire Line
	3460 4235 3460 4420
Wire Wire Line
	3270 4420 3270 4235
Connection ~ 3270 4235
Wire Wire Line
	2890 4235 2890 4420
Connection ~ 3175 4235
Wire Wire Line
	3080 4420 3080 4235
Connection ~ 3080 4235
Wire Wire Line
	2890 4720 2890 4905
Connection ~ 2890 4905
Wire Wire Line
	3080 4720 3080 5005
Connection ~ 3080 5005
Wire Wire Line
	3270 4720 3270 5205
Connection ~ 3270 5205
Wire Wire Line
	3460 4720 3460 5305
Connection ~ 3460 5305
Wire Wire Line
	5360 4720 5360 5005
Connection ~ 5360 5005
Wire Wire Line
	5360 5495 5360 5205
Connection ~ 5360 5205
Wire Wire Line
	5550 4720 5550 5005
Connection ~ 5550 5005
Wire Wire Line
	5550 4420 5550 4305
Wire Wire Line
	5550 4305 5730 4305
Wire Wire Line
	5730 4305 5730 5205
Connection ~ 5730 5205
Wire Wire Line
	5360 4420 5360 4060
Wire Wire Line
	2240 5005 4040 5005
Wire Wire Line
	2240 4905 4040 4905
Wire Wire Line
	2240 5305 4040 5305
Wire Wire Line
	4040 5205 2240 5205
Wire Wire Line
	5970 2155 6330 2155
Wire Wire Line
	5970 2255 6330 2255
Wire Wire Line
	4840 5005 6485 5005
Wire Notes Line
	6485 4965 6485 5250
Wire Wire Line
	4840 5205 6485 5205
Wire Wire Line
	2170 1070 2170 1170
Wire Wire Line
	4440 4705 4440 4520
Wire Wire Line
	5970 2855 6275 2855
Text Label 2965 1140 0    60   ~ 0
GND
Text Label 2130 2365 0    60   ~ 0
GND
Text Label 2130 2465 0    60   ~ 0
GND
Text Label 3135 2565 0    60   ~ 0
esp_tx
NoConn ~ 4970 2655
NoConn ~ 4970 2755
$EndSCHEMATC
