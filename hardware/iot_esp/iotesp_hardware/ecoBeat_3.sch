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
P 3145 3620
F 0 "D1" H 3145 3720 50  0000 C CNN
F 1 "LED" H 3145 3520 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3145 3620 50  0001 C CNN
F 3 "" H 3145 3620 50  0000 C CNN
	1    3145 3620
	-1   0    0    -1  
$EndComp
$Comp
L LED-RESCUE-ecoBeat_3 D2
U 1 1 5A83FF0F
P 3145 3925
F 0 "D2" H 3145 4025 50  0000 C CNN
F 1 "LED" H 3145 3825 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3145 3925 50  0001 C CNN
F 3 "" H 3145 3925 50  0000 C CNN
	1    3145 3925
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 5A84326B
P 1000 1095
F 0 "#FLG01" H 1000 1190 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1275 50  0000 C CNN
F 2 "" H 1000 1095 50  0000 C CNN
F 3 "" H 1000 1095 50  0000 C CNN
	1    1000 1095
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5A8432A1
P 1615 1095
F 0 "#FLG02" H 1615 1190 50  0001 C CNN
F 1 "PWR_FLAG" H 1615 1275 50  0000 C CNN
F 2 "" H 1615 1095 50  0000 C CNN
F 3 "" H 1615 1095 50  0000 C CNN
	1    1615 1095
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A8432ED
P 1000 1195
F 0 "#PWR03" H 1000 1045 50  0001 C CNN
F 1 "VCC" H 1000 1345 50  0000 C CNN
F 2 "" H 1000 1195 50  0000 C CNN
F 3 "" H 1000 1195 50  0000 C CNN
	1    1000 1195
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A843319
P 1615 1195
F 0 "#PWR04" H 1615 945 50  0001 C CNN
F 1 "GND" H 1615 1045 50  0000 C CNN
F 2 "" H 1615 1195 50  0000 C CNN
F 3 "" H 1615 1195 50  0000 C CNN
	1    1615 1195
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A84C7C1
P 3395 4175
F 0 "#PWR05" H 3395 3925 50  0001 C CNN
F 1 "GND" H 3395 4025 50  0000 C CNN
F 2 "" H 3395 4175 50  0000 C CNN
F 3 "" H 3395 4175 50  0000 C CNN
	1    3395 4175
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A858B7F
P 2695 3925
F 0 "R2" V 2775 3925 50  0000 C CNN
F 1 "220" V 2695 3925 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2625 3925 50  0001 C CNN
F 3 "" H 2695 3925 50  0000 C CNN
	1    2695 3925
	0    1    -1   0   
$EndComp
$Comp
L R R1
U 1 1 5A858C9F
P 2695 3620
F 0 "R1" V 2775 3620 50  0000 C CNN
F 1 "220" V 2695 3620 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2625 3620 50  0001 C CNN
F 3 "" H 2695 3620 50  0000 C CNN
	1    2695 3620
	0    1    -1   0   
$EndComp
$Comp
L WeMos_mini U1
U 1 1 5ABA378E
P 2810 2410
F 0 "U1" H 2810 2910 60  0000 C CNN
F 1 "WeMos_mini" H 2810 1910 60  0000 C CNN
F 2 "wemos_d1_mini:D1_mini_board" H 3360 1710 60  0001 C CNN
F 3 "" H 3360 1710 60  0000 C CNN
	1    2810 2410
	-1   0    0    -1  
$EndComp
NoConn ~ 3310 2060
NoConn ~ 3310 2160
NoConn ~ 3310 2760
NoConn ~ 2310 2060
NoConn ~ 2310 2160
Wire Wire Line
	1615 1095 1615 1195
Wire Wire Line
	1000 1095 1000 1195
Wire Wire Line
	3395 3925 3295 3925
Connection ~ 3395 3925
Wire Wire Line
	2845 3925 2995 3925
Wire Wire Line
	2545 3925 2245 3925
Wire Wire Line
	2545 3620 2245 3620
Wire Wire Line
	2995 3620 2845 3620
Wire Wire Line
	3295 3620 3395 3620
Wire Wire Line
	3395 3620 3395 4175
$Comp
L CONN_02X05 P1
U 1 1 5D78B836
P 5430 2280
F 0 "P1" H 5430 2580 50  0000 C CNN
F 1 "CONN_02X05" H 5430 1980 50  0000 C CNN
F 2 "oscar_libreria:Pin_Header_Straight_2x05_Pitch2.54mm_onsar" H 5430 1080 50  0001 C CNN
F 3 "" H 5430 1080 50  0000 C CNN
	1    5430 2280
	1    0    0    -1  
$EndComp
Text Label 5760 2080 0    60   ~ 0
esp_d2
Wire Wire Line
	5680 2180 6080 2180
Wire Wire Line
	5680 2280 6080 2280
Wire Wire Line
	5680 2380 6080 2380
Wire Wire Line
	5680 2480 6080 2480
Wire Wire Line
	5180 2180 4760 2180
Text Label 4760 2180 0    60   ~ 0
esp_d8
Wire Wire Line
	5180 2280 4760 2280
Wire Wire Line
	5180 2380 4760 2380
Wire Wire Line
	5680 2080 6080 2080
Text Label 5760 2180 0    60   ~ 0
esp_d1
Text Label 5760 2280 0    60   ~ 0
esp_d0
Text Label 5760 2380 0    60   ~ 0
mosi
Text Label 5760 2480 0    60   ~ 0
miso
Text Label 4760 2280 0    60   ~ 0
esp_d3
$Comp
L GND #PWR06
U 1 1 5D78D36B
P 4760 2380
F 0 "#PWR06" H 4760 2130 50  0001 C CNN
F 1 "GND" H 4760 2230 50  0000 C CNN
F 2 "" H 4760 2380 50  0000 C CNN
F 3 "" H 4760 2380 50  0000 C CNN
	1    4760 2380
	1    0    0    -1  
$EndComp
Wire Wire Line
	5180 2480 4850 2480
Text Label 4850 2480 0    60   ~ 0
sck
Wire Wire Line
	3310 2260 3670 2260
Wire Notes Line
	3670 1815 3670 3090
Text Label 3350 2260 0    60   ~ 0
esp_d0
Wire Notes Line
	3355 1760 3355 3080
Wire Notes Line
	1885 1850 1885 3115
Wire Wire Line
	2310 2260 1885 2260
Text Label 1885 2260 0    60   ~ 0
esp_d1
Wire Wire Line
	2310 2360 1885 2360
Wire Wire Line
	2310 2460 1885 2460
Text Label 4760 2080 0    60   ~ 0
vcc_5v
Wire Wire Line
	3310 2360 3670 2360
Wire Wire Line
	3310 2460 3670 2460
Wire Wire Line
	3310 2560 3670 2560
Wire Wire Line
	3310 2660 3670 2660
Text Label 1885 2460 0    60   ~ 0
esp_d3
Text Label 3355 2360 0    60   ~ 0
sck
Text Label 3355 2660 0    60   ~ 0
esp_d8
Text Label 1885 2360 0    60   ~ 0
esp_d2
Text Label 3355 2560 0    60   ~ 0
mosi
Text Label 3355 2460 0    60   ~ 0
miso
Wire Wire Line
	2310 2560 1885 2560
Text Label 1885 2560 0    60   ~ 0
esp_d4
Text Label 2540 3620 2    60   ~ 0
esp_d4
$Comp
L TEST_1P J1
U 1 1 5D7CA38F
P 5590 3110
F 0 "J1" H 5665 3385 50  0000 C CNN
F 1 "Test" H 5700 3310 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5790 3110 50  0001 C CNN
F 3 "" H 5790 3110 50  0001 C CNN
	1    5590 3110
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D3
U 1 1 5D7CA61B
P 5375 3155
F 0 "D3" H 5560 2915 50  0000 C CNN
F 1 "Schottky" H 5445 2995 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 5375 3155 50  0001 C CNN
F 3 "" H 5375 3155 50  0001 C CNN
	1    5375 3155
	-1   0    0    1   
$EndComp
Wire Wire Line
	2310 2660 1885 2660
$Comp
L GND #PWR07
U 1 1 5D7CBFDF
P 1885 2660
F 0 "#PWR07" H 1885 2410 50  0001 C CNN
F 1 "GND" H 1885 2510 50  0000 C CNN
F 2 "" H 1885 2660 50  0000 C CNN
F 3 "" H 1885 2660 50  0000 C CNN
	1    1885 2660
	1    0    0    -1  
$EndComp
Wire Wire Line
	2310 2760 1995 2760
Wire Wire Line
	5525 3155 5930 3155
Wire Wire Line
	5180 2080 4760 2080
Wire Wire Line
	5225 3155 4870 3155
Text Label 4870 3155 0    60   ~ 0
vcc_5v
Text Label 1995 2760 0    60   ~ 0
vin_5v
Text Label 5670 3155 0    60   ~ 0
vin_5v
Wire Wire Line
	5590 3110 5590 3155
Connection ~ 5590 3155
Text Label 2245 3925 0    60   ~ 0
vin_5v
$EndSCHEMATC