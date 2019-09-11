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
L LED-RESCUE-ecoBeat_3 D1
U 1 1 5A83FD4B
P 5995 2005
F 0 "D1" H 5995 2105 50  0000 C CNN
F 1 "LED" H 5995 1905 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 5995 2005 50  0001 C CNN
F 3 "" H 5995 2005 50  0000 C CNN
	1    5995 2005
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-ecoBeat_3 D3
U 1 1 5A83FF0F
P 5995 2310
F 0 "D3" H 5995 2410 50  0000 C CNN
F 1 "LED" H 5995 2210 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 5995 2310 50  0001 C CNN
F 3 "" H 5995 2310 50  0000 C CNN
	1    5995 2310
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 5A84326B
P 1000 1095
F 0 "#FLG1" H 1000 1190 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1275 50  0000 C CNN
F 2 "" H 1000 1095 50  0000 C CNN
F 3 "" H 1000 1095 50  0000 C CNN
	1    1000 1095
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 5A8432A1
P 1615 1095
F 0 "#FLG2" H 1615 1190 50  0001 C CNN
F 1 "PWR_FLAG" H 1615 1275 50  0000 C CNN
F 2 "" H 1615 1095 50  0000 C CNN
F 3 "" H 1615 1095 50  0000 C CNN
	1    1615 1095
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR1
U 1 1 5A8432ED
P 1000 1195
F 0 "#PWR1" H 1000 1045 50  0001 C CNN
F 1 "VCC" H 1000 1345 50  0000 C CNN
F 2 "" H 1000 1195 50  0000 C CNN
F 3 "" H 1000 1195 50  0000 C CNN
	1    1000 1195
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR3
U 1 1 5A843319
P 1615 1195
F 0 "#PWR3" H 1615 945 50  0001 C CNN
F 1 "GND" H 1615 1045 50  0000 C CNN
F 2 "" H 1615 1195 50  0000 C CNN
F 3 "" H 1615 1195 50  0000 C CNN
	1    1615 1195
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 5A84C7C1
P 5745 2560
F 0 "#PWR5" H 5745 2310 50  0001 C CNN
F 1 "GND" H 5745 2410 50  0000 C CNN
F 2 "" H 5745 2560 50  0000 C CNN
F 3 "" H 5745 2560 50  0000 C CNN
	1    5745 2560
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A858B7F
P 6445 2310
F 0 "R8" V 6525 2310 50  0000 C CNN
F 1 "220" V 6445 2310 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6375 2310 50  0001 C CNN
F 3 "" H 6445 2310 50  0000 C CNN
	1    6445 2310
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 5A858C9F
P 6445 2005
F 0 "R6" V 6525 2005 50  0000 C CNN
F 1 "220" V 6445 2005 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6375 2005 50  0001 C CNN
F 3 "" H 6445 2005 50  0000 C CNN
	1    6445 2005
	0    -1   -1   0   
$EndComp
$Comp
L WeMos_mini U1
U 1 1 5ABA378E
P 2090 2370
F 0 "U1" H 2090 2870 60  0000 C CNN
F 1 "WeMos_mini" H 2090 1870 60  0000 C CNN
F 2 "wemos_d1_mini:D1_mini_board" H 2640 1670 60  0001 C CNN
F 3 "" H 2640 1670 60  0000 C CNN
	1    2090 2370
	-1   0    0    -1  
$EndComp
NoConn ~ 2590 2020
NoConn ~ 2590 2120
NoConn ~ 2590 2720
NoConn ~ 1590 2020
NoConn ~ 1590 2120
Wire Wire Line
	1615 1095 1615 1195
Wire Wire Line
	1000 1095 1000 1195
Wire Wire Line
	5745 2310 5845 2310
Connection ~ 5745 2310
Wire Wire Line
	6295 2310 6145 2310
Wire Wire Line
	6595 2310 6895 2310
Wire Wire Line
	6595 2005 6895 2005
Wire Wire Line
	6145 2005 6295 2005
Wire Wire Line
	5845 2005 5745 2005
Wire Wire Line
	5745 2005 5745 2560
$Comp
L CONN_02X05 P1
U 1 1 5D78B836
P 4435 2225
F 0 "P1" H 4435 2525 50  0000 C CNN
F 1 "CONN_02X05" H 4435 1925 50  0000 C CNN
F 2 "" H 4435 1025 50  0000 C CNN
F 3 "" H 4435 1025 50  0000 C CNN
	1    4435 2225
	1    0    0    -1  
$EndComp
Text Label 3765 2025 0    60   ~ 0
vcc_5v
Text Label 4765 2025 0    60   ~ 0
esp_d2
Wire Wire Line
	4685 2125 5085 2125
Wire Wire Line
	4685 2225 5085 2225
Wire Wire Line
	4685 2325 5085 2325
Wire Wire Line
	4685 2425 5085 2425
Wire Wire Line
	4185 2125 3765 2125
Text Label 3765 2125 0    60   ~ 0
esp_d8
Wire Wire Line
	4185 2225 3765 2225
Wire Wire Line
	4185 2325 3765 2325
Wire Wire Line
	4685 2025 5085 2025
Wire Wire Line
	4185 2025 3765 2025
Text Label 4765 2125 0    60   ~ 0
esp_d1
Text Label 4765 2225 0    60   ~ 0
esp_d0
Text Label 4765 2325 0    60   ~ 0
mosi
Text Label 4765 2425 0    60   ~ 0
miso
Text Label 3765 2225 0    60   ~ 0
esp_d3
$Comp
L GND #PWR4
U 1 1 5D78D36B
P 3765 2325
F 0 "#PWR4" H 3765 2075 50  0001 C CNN
F 1 "GND" H 3765 2175 50  0000 C CNN
F 2 "" H 3765 2325 50  0000 C CNN
F 3 "" H 3765 2325 50  0000 C CNN
	1    3765 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4185 2425 3855 2425
Text Label 3855 2425 0    60   ~ 0
sck
Wire Wire Line
	2590 2220 2950 2220
Wire Notes Line
	2950 1775 2950 3050
Text Label 2630 2220 0    60   ~ 0
esp_d0
Wire Notes Line
	2635 1720 2635 3040
Wire Notes Line
	1165 1810 1165 3075
Wire Wire Line
	1590 2220 1165 2220
Text Label 1165 2220 0    60   ~ 0
esp_d1
Wire Wire Line
	1590 2320 1165 2320
Wire Wire Line
	1590 2420 1165 2420
Wire Wire Line
	1590 2620 1165 2620
Wire Wire Line
	1590 2720 1290 2720
Text Label 1290 2720 0    60   ~ 0
vcc_5v
Wire Wire Line
	2590 2320 2950 2320
Wire Wire Line
	2590 2420 2950 2420
Wire Wire Line
	2590 2520 2950 2520
Wire Wire Line
	2590 2620 2950 2620
$Comp
L GND #PWR2
U 1 1 5D78E060
P 1165 2620
F 0 "#PWR2" H 1165 2370 50  0001 C CNN
F 1 "GND" H 1165 2470 50  0000 C CNN
F 2 "" H 1165 2620 50  0000 C CNN
F 3 "" H 1165 2620 50  0000 C CNN
	1    1165 2620
	1    0    0    -1  
$EndComp
Text Label 1165 2420 0    60   ~ 0
esp_d3
Text Label 2635 2320 0    60   ~ 0
sck
Text Label 2635 2620 0    60   ~ 0
esp_d8
Text Label 1165 2320 0    60   ~ 0
esp_d2
Text Label 2635 2520 0    60   ~ 0
mosi
Text Label 2635 2420 0    60   ~ 0
miso
Wire Wire Line
	1590 2520 1165 2520
Text Label 1165 2520 0    60   ~ 0
esp_d4
Text Label 6600 2005 0    60   ~ 0
esp_d4
Text Label 6605 2310 0    60   ~ 0
vcc_5v
$EndSCHEMATC
