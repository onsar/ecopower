EESchema Schematic File Version 2
LIBS:wat-rescue
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
LIBS:recom-rd
LIBS:RO-1224S
LIBS:mp-1584
LIBS:nano
LIBS:wat-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "EcoPower"
Date ""
Rev ""
Comp "iotlibre"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 584D06FF
P 1275 1010
F 0 "#PWR01" H 1275 760 50  0001 C CNN
F 1 "GND" H 1275 860 50  0000 C CNN
F 2 "" H 1275 1010 50  0000 C CNN
F 3 "" H 1275 1010 50  0000 C CNN
	1    1275 1010
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 584D0E54
P 1275 960
F 0 "#FLG02" H 1275 1055 50  0001 C CNN
F 1 "PWR_FLAG" H 1275 1140 50  0000 C CNN
F 2 "" H 1275 960 50  0000 C CNN
F 3 "" H 1275 960 50  0000 C CNN
	1    1275 960 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5857A9BC
P 1775 960
F 0 "#FLG03" H 1775 1055 50  0001 C CNN
F 1 "PWR_FLAG" H 1775 1140 50  0000 C CNN
F 2 "" H 1775 960 50  0000 C CNN
F 3 "" H 1775 960 50  0000 C CNN
	1    1775 960 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5857A9F3
P 1775 1110
F 0 "#PWR04" H 1775 960 50  0001 C CNN
F 1 "VCC" H 1775 1260 50  0000 C CNN
F 2 "" H 1775 1110 50  0000 C CNN
F 3 "" H 1775 1110 50  0000 C CNN
	1    1775 1110
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5D4CAF0F
P 1195 5625
F 0 "P2" H 1195 5775 50  0000 C CNN
F 1 "PINZA_1" V 1295 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1195 5625 50  0001 C CNN
F 3 "" H 1195 5625 50  0000 C CNN
	1    1195 5625
	-1   0    0    1   
$EndComp
Text Label 2195 5990 0    60   ~ 0
v_referencia
$Comp
L C C2
U 1 1 5D4CAF07
P 1625 5785
F 0 "C2" H 1650 5885 50  0000 L CNN
F 1 "100nF" H 1650 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1663 5635 50  0001 C CNN
F 3 "" H 1625 5785 50  0000 C CNN
	1    1625 5785
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5D4CAF01
P 2085 5775
F 0 "R3" V 2165 5775 50  0000 C CNN
F 1 "10k" V 2085 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2015 5775 50  0001 C CNN
F 3 "" H 2085 5775 50  0000 C CNN
	1    2085 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5D4D18F7
P 3115 5625
F 0 "P3" H 3115 5775 50  0000 C CNN
F 1 "PINZA_2" V 3215 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3115 5625 50  0001 C CNN
F 3 "" H 3115 5625 50  0000 C CNN
	1    3115 5625
	-1   0    0    1   
$EndComp
Text Label 4085 5575 0    60   ~ 0
intensidad_2
Text Label 4115 5990 0    60   ~ 0
v_referencia
$Comp
L C C6
U 1 1 5D4D18FF
P 3545 5785
F 0 "C6" H 3570 5885 50  0000 L CNN
F 1 "100nF" H 3570 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3583 5635 50  0001 C CNN
F 3 "" H 3545 5785 50  0000 C CNN
	1    3545 5785
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5D4D1905
P 4005 5775
F 0 "R5" V 4085 5775 50  0000 C CNN
F 1 "10k" V 4005 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3935 5775 50  0001 C CNN
F 3 "" H 4005 5775 50  0000 C CNN
	1    4005 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 5D4D3DC6
P 5035 5625
F 0 "P4" H 5035 5775 50  0000 C CNN
F 1 "PINZA_3" V 5135 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5035 5625 50  0001 C CNN
F 3 "" H 5035 5625 50  0000 C CNN
	1    5035 5625
	-1   0    0    1   
$EndComp
Text Label 6005 5575 0    60   ~ 0
intensidad_3
Text Label 6035 5990 0    60   ~ 0
v_referencia
$Comp
L C C8
U 1 1 5D4D3DCE
P 5465 5785
F 0 "C8" H 5490 5885 50  0000 L CNN
F 1 "100nF" H 5490 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5503 5635 50  0001 C CNN
F 3 "" H 5465 5785 50  0000 C CNN
	1    5465 5785
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5D4D3DD4
P 5925 5775
F 0 "R7" V 6005 5775 50  0000 C CNN
F 1 "10k" V 5925 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 5855 5775 50  0001 C CNN
F 3 "" H 5925 5775 50  0000 C CNN
	1    5925 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 5D4D3DE6
P 6955 5625
F 0 "P5" H 6955 5775 50  0000 C CNN
F 1 "PINZA_4" V 7055 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 6955 5625 50  0001 C CNN
F 3 "" H 6955 5625 50  0000 C CNN
	1    6955 5625
	-1   0    0    1   
$EndComp
Text Label 7925 5575 0    60   ~ 0
intensidad_4
Text Label 7955 5990 0    60   ~ 0
v_referencia
$Comp
L C C9
U 1 1 5D4D3DEE
P 7385 5785
F 0 "C9" H 7410 5885 50  0000 L CNN
F 1 "100nF" H 7410 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7423 5635 50  0001 C CNN
F 3 "" H 7385 5785 50  0000 C CNN
	1    7385 5785
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5D4D3DF4
P 7845 5775
F 0 "R8" V 7925 5775 50  0000 C CNN
F 1 "10k" V 7845 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 7775 5775 50  0001 C CNN
F 3 "" H 7845 5775 50  0000 C CNN
	1    7845 5775
	1    0    0    -1  
$EndComp
Text Label 2165 5575 0    60   ~ 0
intensidad_1
$Comp
L CONN_01X02 P6
U 1 1 5D4C6526
P 8920 5625
F 0 "P6" H 8920 5775 50  0000 C CNN
F 1 "PINZA_5" V 9020 5625 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8920 5625 50  0001 C CNN
F 3 "" H 8920 5625 50  0000 C CNN
	1    8920 5625
	-1   0    0    1   
$EndComp
Text Label 9890 5575 0    60   ~ 0
intensidad_5
Text Label 9920 5990 0    60   ~ 0
v_referencia
$Comp
L C C11
U 1 1 5D4C652E
P 9350 5785
F 0 "C11" H 9375 5885 50  0000 L CNN
F 1 "100nF" H 9375 5685 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9388 5635 50  0001 C CNN
F 3 "" H 9350 5785 50  0000 C CNN
	1    9350 5785
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5D4C6534
P 9810 5775
F 0 "R9" V 9890 5775 50  0000 C CNN
F 1 "10k" V 9810 5775 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 9740 5775 50  0001 C CNN
F 3 "" H 9810 5775 50  0000 C CNN
	1    9810 5775
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 5D4C6F0D
P 1195 6585
F 0 "P7" H 1195 6735 50  0000 C CNN
F 1 "PINZA_6" V 1295 6585 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1195 6585 50  0001 C CNN
F 3 "" H 1195 6585 50  0000 C CNN
	1    1195 6585
	-1   0    0    1   
$EndComp
Text Label 2195 6950 0    60   ~ 0
v_referencia
$Comp
L C C3
U 1 1 5D4C6F14
P 1625 6745
F 0 "C3" H 1650 6845 50  0000 L CNN
F 1 "100nF" H 1650 6645 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1663 6595 50  0001 C CNN
F 3 "" H 1625 6745 50  0000 C CNN
	1    1625 6745
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5D4C6F1A
P 2085 6735
F 0 "R4" V 2165 6735 50  0000 C CNN
F 1 "10k" V 2085 6735 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 2015 6735 50  0001 C CNN
F 3 "" H 2085 6735 50  0000 C CNN
	1    2085 6735
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 5D4C6F2B
P 3115 6585
F 0 "P8" H 3115 6735 50  0000 C CNN
F 1 "PINZA_7" V 3215 6585 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3115 6585 50  0001 C CNN
F 3 "" H 3115 6585 50  0000 C CNN
	1    3115 6585
	-1   0    0    1   
$EndComp
Text Label 4115 6950 0    60   ~ 0
v_referencia
$Comp
L R R6
U 1 1 5D4C6F39
P 4005 6735
F 0 "R6" V 4085 6735 50  0000 C CNN
F 1 "1k" V 4005 6735 50  0000 C CNN
F 2 "libreria_huellas_proyecto:Resistor_Horizontal_RM10mm" V 3935 6735 50  0001 C CNN
F 3 "" H 4005 6735 50  0000 C CNN
	1    4005 6735
	1    0    0    -1  
$EndComp
Text Label 2165 6535 0    60   ~ 0
intensidad_6
$Comp
L Conn_02x05_Odd_Even J4
U 1 1 5D4CBA5C
P 7890 1940
F 0 "J4" H 7940 2240 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7940 1640 50  0000 C CNN
F 2 "oscar_libreria_huellas:Pin_Header_Straight_2x05_Pitch2.54mm_onsar" H 7890 1940 50  0001 C CNN
F 3 "" H 7890 1940 50  0001 C CNN
	1    7890 1940
	1    0    0    -1  
$EndComp
Text Label 8225 2040 0    60   ~ 0
mosi
Text Label 8225 2140 0    60   ~ 0
miso
Text Label 7455 2140 0    60   ~ 0
sck
Text Label 8225 1940 0    60   ~ 0
esp_d0
Text Label 8220 1840 0    60   ~ 0
esp_d1
Text Label 8220 1740 0    60   ~ 0
esp_d2
Text Label 7255 1740 0    60   ~ 0
vcc_5v
$Comp
L GND #PWR05
U 1 1 5D4CF603
P 7255 2040
F 0 "#PWR05" H 7255 1790 50  0001 C CNN
F 1 "GND" H 7255 1890 50  0000 C CNN
F 2 "" H 7255 2040 50  0001 C CNN
F 3 "" H 7255 2040 50  0001 C CNN
	1    7255 2040
	1    0    0    -1  
$EndComp
$Comp
L GS2 J2
U 1 1 5D4D6D86
P 9690 2050
F 0 "J2" H 9790 2200 50  0000 C CNN
F 1 "GS2" H 9820 2120 50  0000 C CNN
F 2 "Connectors:GS2" V 9764 2050 50  0001 C CNN
F 3 "" H 9690 2050 50  0001 C CNN
	1    9690 2050
	0    1    1    0   
$EndComp
$Comp
L GS2 J3
U 1 1 5D4D6ED7
P 10095 2800
F 0 "J3" H 10195 2950 50  0000 C CNN
F 1 "GS2" H 10220 2865 50  0000 C CNN
F 2 "Connectors:GS2" V 10169 2800 50  0001 C CNN
F 3 "" H 10095 2800 50  0001 C CNN
	1    10095 2800
	0    1    1    0   
$EndComp
Text Label 9940 2050 0    60   ~ 0
ss
Text Label 9480 2800 0    60   ~ 0
esp_d0
Text Label 8720 1260 0    60   ~ 0
esp_d2
$Comp
L LM358 U1
U 1 1 5D4D9D45
P 2355 4010
F 0 "U1" H 2355 4210 50  0000 L CNN
F 1 "LM358" H 2355 3810 50  0000 L CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 2355 4010 50  0001 C CNN
F 3 "" H 2355 4010 50  0001 C CNN
	1    2355 4010
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5D4DA8E9
P 1555 3705
F 0 "R1" V 1635 3705 50  0000 C CNN
F 1 "4K7" V 1555 3705 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1485 3705 50  0001 C CNN
F 3 "" H 1555 3705 50  0001 C CNN
	1    1555 3705
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5D4DAC16
P 1555 4090
F 0 "R2" V 1635 4090 50  0000 C CNN
F 1 "4K7" V 1555 4090 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1485 4090 50  0001 C CNN
F 3 "" H 1555 4090 50  0001 C CNN
	1    1555 4090
	1    0    0    -1  
$EndComp
Text Label 2255 3640 0    60   ~ 0
vin_5V
$Comp
L GND #PWR06
U 1 1 5D4DC729
P 2255 4310
F 0 "#PWR06" H 2255 4060 50  0001 C CNN
F 1 "GND" H 2255 4160 50  0000 C CNN
F 2 "" H 2255 4310 50  0000 C CNN
F 3 "" H 2255 4310 50  0000 C CNN
	1    2255 4310
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5D4DCC77
P 1555 4240
F 0 "#PWR07" H 1555 3990 50  0001 C CNN
F 1 "GND" H 1555 4090 50  0000 C CNN
F 2 "" H 1555 4240 50  0000 C CNN
F 3 "" H 1555 4240 50  0000 C CNN
	1    1555 4240
	-1   0    0    -1  
$EndComp
Text Label 1555 3555 0    60   ~ 0
vin_5V
Text Label 3015 4010 0    60   ~ 0
v_referencia
$Comp
L C C10
U 1 1 5D4DE405
P 9490 2270
F 0 "C10" H 9515 2370 50  0000 L CNN
F 1 "100nF" H 9515 2170 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9528 2120 50  0001 C CNN
F 3 "" H 9490 2270 50  0000 C CNN
	1    9490 2270
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5D4DEA3B
P 9490 2465
F 0 "#PWR08" H 9490 2215 50  0001 C CNN
F 1 "GND" H 9490 2315 50  0000 C CNN
F 2 "" H 9490 2465 50  0001 C CNN
F 3 "" H 9490 2465 50  0001 C CNN
	1    9490 2465
	1    0    0    -1  
$EndComp
$Comp
L CP1 C5
U 1 1 5D4DFAA3
P 2970 4250
F 0 "C5" H 2995 4350 50  0000 L CNN
F 1 "10uF" H 2995 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 2970 4250 50  0001 C CNN
F 3 "" H 2970 4250 50  0000 C CNN
	1    2970 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5D4E0211
P 2970 4400
F 0 "#PWR09" H 2970 4150 50  0001 C CNN
F 1 "GND" H 2970 4250 50  0000 C CNN
F 2 "" H 2970 4400 50  0000 C CNN
F 3 "" H 2970 4400 50  0000 C CNN
	1    2970 4400
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5D4E0BA3
P 1195 4060
F 0 "C1" H 1220 4160 50  0000 L CNN
F 1 "10uF" H 1220 3960 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 1195 4060 50  0001 C CNN
F 3 "" H 1195 4060 50  0000 C CNN
	1    1195 4060
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5D4E0DB3
P 1195 4210
F 0 "#PWR010" H 1195 3960 50  0001 C CNN
F 1 "GND" H 1195 4060 50  0000 C CNN
F 2 "" H 1195 4210 50  0000 C CNN
F 3 "" H 1195 4210 50  0000 C CNN
	1    1195 4210
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5D4E449D
P 1290 2825
F 0 "#PWR011" H 1290 2575 50  0001 C CNN
F 1 "GND" H 1290 2675 50  0000 C CNN
F 2 "" H 1290 2825 50  0000 C CNN
F 3 "" H 1290 2825 50  0000 C CNN
	1    1290 2825
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5D4E44A3
P 1090 2395
F 0 "P1" H 1090 2545 50  0000 C CNN
F 1 "V_IN" V 1190 2395 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1090 2395 50  0001 C CNN
F 3 "" H 1090 2395 50  0000 C CNN
	1    1090 2395
	-1   0    0    1   
$EndComp
$Comp
L CP1 C4
U 1 1 5D4E44A9
P 2115 2595
F 0 "C4" H 2140 2695 50  0000 L CNN
F 1 "10uF" H 2140 2495 50  0000 L CNN
F 2 "Capacitors_SMD:C_2220_HandSoldering" H 2115 2595 50  0001 C CNN
F 3 "" H 2115 2595 50  0000 C CNN
	1    2115 2595
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5D4E44AF
P 1840 2345
F 0 "D1" H 1840 2445 50  0000 C CNN
F 1 "schottky" H 1840 2245 50  0000 C CNN
F 2 "Diodes_SMD:D_2114" H 1840 2345 50  0001 C CNN
F 3 "" H 1840 2345 50  0000 C CNN
	1    1840 2345
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P W1
U 1 1 5D4E44B5
P 2115 2345
F 0 "W1" H 2115 2615 50  0000 C CNN
F 1 "+5V" H 2115 2545 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2315 2345 50  0001 C CNN
F 3 "" H 2315 2345 50  0000 C CNN
	1    2115 2345
	1    0    0    -1  
$EndComp
Text Label 2340 2345 0    60   ~ 0
vin_5V
Text Label 1330 2345 0    60   ~ 0
vcc_5v
$Comp
L NANO U2
U 1 1 5D4E51E2
P 5190 1920
F 0 "U2" H 5540 2920 50  0000 C CNN
F 1 "NANO" H 5190 2770 50  0000 C CNN
F 2 "libreria_huellas_proyecto:arduino_nano" H 4890 1120 50  0001 C CNN
F 3 "DOCUMENTATION" H 5040 1070 50  0001 C CNN
	1    5190 1920
	1    0    0    -1  
$EndComp
Text Label 6010 2020 0    60   ~ 0
intensidad_4
Text Label 6010 2120 0    60   ~ 0
intensidad_3
Text Label 6010 2220 0    60   ~ 0
intensidad_2
Text Label 6010 2320 0    60   ~ 0
intensidad_1
Text Label 6000 1520 0    60   ~ 0
vin_5V
$Comp
L GND #PWR012
U 1 1 5D4E51ED
P 6355 1320
F 0 "#PWR012" H 6355 1070 50  0001 C CNN
F 1 "GND" H 6355 1170 50  0000 C CNN
F 2 "" H 6355 1320 50  0000 C CNN
F 3 "" H 6355 1320 50  0000 C CNN
	1    6355 1320
	-1   0    0    -1  
$EndComp
Text Label 6010 1920 0    60   ~ 0
intensidad_5
Text Label 6010 1820 0    60   ~ 0
intensidad_6
Text Label 6000 1620 0    60   ~ 0
v_referencia
Text Label 3930 2520 0    60   ~ 0
mosi
Text Label 3930 2620 0    60   ~ 0
miso
Text Label 6020 2620 0    60   ~ 0
sck
Text Label 3930 2420 0    60   ~ 0
ss
NoConn ~ 4440 1220
NoConn ~ 4440 1320
NoConn ~ 4440 1420
NoConn ~ 4440 1520
NoConn ~ 4440 1620
NoConn ~ 4440 1720
NoConn ~ 4440 1820
NoConn ~ 4440 1920
NoConn ~ 4440 2020
NoConn ~ 4440 2120
NoConn ~ 4440 2220
NoConn ~ 4440 2320
NoConn ~ 5940 1220
NoConn ~ 5940 1420
NoConn ~ 5940 2420
NoConn ~ 5940 2520
Text Label 1775 1035 0    60   ~ 0
vin_5V
Text Label 7255 1940 0    60   ~ 0
esp_d3
Text Label 7255 1840 0    60   ~ 0
esp_d8
$Comp
L R R12
U 1 1 5D67AD9E
P 9490 1855
F 0 "R12" V 9570 1855 50  0000 C CNN
F 1 "4K7" V 9490 1855 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9420 1855 50  0001 C CNN
F 3 "" H 9490 1855 50  0001 C CNN
	1    9490 1855
	1    0    0    -1  
$EndComp
Text Label 9490 1665 0    60   ~ 0
vin_5V
$Comp
L C C12
U 1 1 5D683286
P 9135 1480
F 0 "C12" H 9160 1580 50  0000 L CNN
F 1 "100nF" H 9160 1380 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9173 1330 50  0001 C CNN
F 3 "" H 9135 1480 50  0000 C CNN
	1    9135 1480
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5D68328C
P 9135 1675
F 0 "#PWR013" H 9135 1425 50  0001 C CNN
F 1 "GND" H 9135 1525 50  0000 C CNN
F 2 "" H 9135 1675 50  0001 C CNN
F 3 "" H 9135 1675 50  0001 C CNN
	1    9135 1675
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5D683292
P 9135 1065
F 0 "R11" V 9215 1065 50  0000 C CNN
F 1 "4K7" V 9135 1065 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9065 1065 50  0001 C CNN
F 3 "" H 9135 1065 50  0001 C CNN
	1    9135 1065
	1    0    0    -1  
$EndComp
Text Label 9135 875  0    60   ~ 0
vin_5V
Text Label 9595 1260 0    60   ~ 0
ss
Text Label 9145 2050 0    60   ~ 0
esp_d1
$Comp
L C C13
U 1 1 5D6833C5
P 9895 3020
F 0 "C13" H 9920 3120 50  0000 L CNN
F 1 "100nF" H 9920 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9933 2870 50  0001 C CNN
F 3 "" H 9895 3020 50  0000 C CNN
	1    9895 3020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5D6833CB
P 9895 3215
F 0 "#PWR014" H 9895 2965 50  0001 C CNN
F 1 "GND" H 9895 3065 50  0000 C CNN
F 2 "" H 9895 3215 50  0001 C CNN
F 3 "" H 9895 3215 50  0001 C CNN
	1    9895 3215
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5D6833D1
P 9895 2605
F 0 "R13" V 9975 2605 50  0000 C CNN
F 1 "4K7" V 9895 2605 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9825 2605 50  0001 C CNN
F 3 "" H 9895 2605 50  0001 C CNN
	1    9895 2605
	1    0    0    -1  
$EndComp
Text Label 9895 2415 0    60   ~ 0
vin_5V
Text Label 10355 2800 0    60   ~ 0
ss
$Comp
L GS2 J1
U 1 1 5D4D6B1F
P 9335 1260
F 0 "J1" H 9435 1410 50  0000 C CNN
F 1 "GS2" H 9475 1320 50  0000 C CNN
F 2 "Connectors:GS2" V 9409 1260 50  0001 C CNN
F 3 "" H 9335 1260 50  0001 C CNN
	1    9335 1260
	0    1    1    0   
$EndComp
NoConn ~ 7255 1940
Wire Wire Line
	1775 960  1775 1110
Wire Wire Line
	1275 960  1275 1010
Wire Bus Line
	5740 5575 5740 5570
Wire Wire Line
	1395 5990 2445 5990
Wire Wire Line
	1395 5675 1395 5990
Wire Wire Line
	1395 5575 2445 5575
Connection ~ 2085 5575
Wire Wire Line
	2085 5625 2085 5575
Connection ~ 1625 5575
Wire Wire Line
	1625 5635 1625 5575
Wire Wire Line
	3315 5990 4365 5990
Wire Wire Line
	3315 5675 3315 5990
Wire Wire Line
	3315 5575 4365 5575
Connection ~ 4005 5575
Wire Wire Line
	4005 5625 4005 5575
Connection ~ 3545 5575
Wire Wire Line
	3545 5635 3545 5575
Wire Wire Line
	5235 5990 6285 5990
Wire Wire Line
	5235 5675 5235 5990
Wire Wire Line
	5235 5575 6285 5575
Connection ~ 5925 5575
Wire Wire Line
	5925 5625 5925 5575
Connection ~ 5465 5575
Wire Wire Line
	5465 5635 5465 5575
Wire Wire Line
	7155 5990 8205 5990
Wire Wire Line
	7155 5675 7155 5990
Wire Wire Line
	7155 5575 8205 5575
Connection ~ 7845 5575
Wire Wire Line
	7845 5625 7845 5575
Connection ~ 7385 5575
Wire Wire Line
	7385 5635 7385 5575
Wire Wire Line
	9120 5990 10170 5990
Wire Wire Line
	9120 5675 9120 5990
Wire Wire Line
	9120 5575 10170 5575
Connection ~ 9810 5575
Wire Wire Line
	9810 5625 9810 5575
Connection ~ 9350 5575
Wire Wire Line
	9350 5635 9350 5575
Wire Wire Line
	1395 6950 2445 6950
Wire Wire Line
	1395 6635 1395 6950
Wire Wire Line
	1395 6535 2445 6535
Connection ~ 2085 6535
Wire Wire Line
	2085 6585 2085 6535
Connection ~ 1625 6535
Wire Wire Line
	1625 6595 1625 6535
Wire Wire Line
	3315 6950 4365 6950
Wire Wire Line
	3315 6635 3315 6950
Connection ~ 4005 6535
Wire Wire Line
	4005 6585 4005 6535
Wire Wire Line
	8190 1940 8625 1940
Wire Wire Line
	8190 2140 8625 2140
Wire Wire Line
	7255 1740 7690 1740
Wire Wire Line
	7255 1840 7690 1840
Wire Wire Line
	7255 1940 7690 1940
Wire Wire Line
	7255 2040 7690 2040
Wire Wire Line
	8190 1740 8625 1740
Wire Wire Line
	8190 1840 8625 1840
Wire Wire Line
	2655 4010 3155 4010
Wire Wire Line
	1555 3855 1555 3940
Wire Wire Line
	1195 3910 2055 3910
Connection ~ 1555 3910
Wire Wire Line
	2705 4010 2705 4580
Wire Wire Line
	2705 4580 1940 4580
Wire Wire Line
	1940 4580 1940 4110
Wire Wire Line
	1940 4110 2055 4110
Connection ~ 2705 4010
Wire Wire Line
	2970 4100 2970 4010
Connection ~ 2970 4010
Wire Wire Line
	2115 2345 2115 2445
Connection ~ 2115 2345
Wire Wire Line
	1990 2345 2765 2345
Wire Wire Line
	1290 2345 1690 2345
Wire Wire Line
	1290 2445 1290 2825
Wire Wire Line
	1290 2825 2115 2825
Wire Wire Line
	2115 2825 2115 2745
Connection ~ 1290 2825
Wire Notes Line
	6360 1070 6360 2760
Wire Notes Line
	6360 2760 6370 2760
Wire Wire Line
	5940 1520 6360 1520
Wire Wire Line
	5940 1620 6360 1620
Wire Wire Line
	5940 1720 6360 1720
Wire Wire Line
	5940 1820 6360 1820
Wire Wire Line
	5940 1920 6360 1920
Wire Wire Line
	5940 2120 6360 2120
Wire Wire Line
	5940 2220 6360 2220
Wire Wire Line
	5940 2320 6360 2320
Wire Wire Line
	5940 2020 6360 2020
Wire Wire Line
	5940 1320 6355 1320
Wire Notes Line
	3835 1075 3835 2765
Wire Wire Line
	4440 2520 3835 2520
Wire Wire Line
	4440 2620 3835 2620
Wire Wire Line
	5940 2620 6360 2620
Wire Wire Line
	4440 2420 3835 2420
Wire Wire Line
	2255 3710 2255 3635
Wire Wire Line
	1625 5935 1625 5990
Connection ~ 1625 5990
Wire Wire Line
	2085 5925 2085 5990
Connection ~ 2085 5990
Wire Wire Line
	3545 5935 3545 5990
Connection ~ 3545 5990
Wire Wire Line
	4005 5925 4005 5990
Connection ~ 4005 5990
Wire Wire Line
	5465 5935 5465 5990
Connection ~ 5465 5990
Wire Wire Line
	5925 5925 5925 5990
Connection ~ 5925 5990
Wire Wire Line
	7385 5935 7385 5990
Connection ~ 7385 5990
Wire Wire Line
	7845 5925 7845 5990
Connection ~ 7845 5990
Wire Wire Line
	9350 5935 9350 5990
Connection ~ 9350 5990
Wire Wire Line
	9810 5925 9810 5990
Connection ~ 9810 5990
Wire Wire Line
	1625 6895 1625 6950
Connection ~ 1625 6950
Wire Wire Line
	2085 6885 2085 6950
Connection ~ 2085 6950
Wire Wire Line
	4005 6885 4005 6950
Connection ~ 4005 6950
Wire Wire Line
	8190 2040 8625 2040
Wire Wire Line
	9490 2005 9490 2120
Wire Wire Line
	9490 1705 9490 1665
Connection ~ 9490 2050
Wire Wire Line
	9490 2420 9490 2465
Wire Wire Line
	9890 2050 9940 2050
Wire Wire Line
	9490 2050 9145 2050
Wire Wire Line
	9135 1215 9135 1330
Wire Wire Line
	9135 915  9135 875 
Connection ~ 9135 1260
Wire Wire Line
	9135 1630 9135 1675
Wire Wire Line
	9535 1260 9595 1260
Wire Wire Line
	9135 1260 8720 1260
Wire Wire Line
	9895 2755 9895 2870
Wire Wire Line
	9895 2455 9895 2415
Connection ~ 9895 2800
Wire Wire Line
	9895 3170 9895 3215
Wire Wire Line
	10295 2800 10355 2800
Wire Wire Line
	9895 2800 9480 2800
Wire Wire Line
	7690 2140 7455 2140
NoConn ~ 7255 1840
$Comp
L Conn_02x05_Odd_Even J5
U 1 1 5D6D477F
P 7905 2740
F 0 "J5" H 7955 3040 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7955 2440 50  0000 C CNN
F 2 "oscar_libreria_huellas:Pin_Header_Straight_2x05_Pitch2.54mm_onsar" H 7905 2740 50  0001 C CNN
F 3 "" H 7905 2740 50  0001 C CNN
	1    7905 2740
	1    0    0    -1  
$EndComp
Text Label 8240 2840 0    60   ~ 0
mosi
Text Label 8240 2940 0    60   ~ 0
miso
Text Label 7470 2940 0    60   ~ 0
sck
Text Label 8240 2740 0    60   ~ 0
esp_d0
Text Label 8235 2640 0    60   ~ 0
esp_d1
Text Label 8235 2540 0    60   ~ 0
esp_d2
$Comp
L GND #PWR015
U 1 1 5D6D478C
P 7270 2840
F 0 "#PWR015" H 7270 2590 50  0001 C CNN
F 1 "GND" H 7270 2690 50  0000 C CNN
F 2 "" H 7270 2840 50  0001 C CNN
F 3 "" H 7270 2840 50  0001 C CNN
	1    7270 2840
	1    0    0    -1  
$EndComp
NoConn ~ 7270 2740
Wire Wire Line
	8205 2740 8640 2740
Wire Wire Line
	8205 2940 8640 2940
Wire Wire Line
	7270 2540 7705 2540
Wire Wire Line
	7270 2640 7705 2640
Wire Wire Line
	7270 2740 7705 2740
Wire Wire Line
	7270 2840 7705 2840
Wire Wire Line
	8205 2540 8640 2540
Wire Wire Line
	8205 2640 8640 2640
Wire Wire Line
	8205 2840 8640 2840
Wire Wire Line
	7705 2940 7470 2940
NoConn ~ 7270 2640
NoConn ~ 7270 2540
Text Label 4120 6535 0    60   ~ 0
voltage_1
$Comp
L R R10
U 1 1 5D7208D8
P 3625 6535
F 0 "R10" V 3705 6535 50  0000 C CNN
F 1 "10k" V 3625 6535 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3555 6535 50  0001 C CNN
F 3 "" H 3625 6535 50  0000 C CNN
	1    3625 6535
	0    1    1    0   
$EndComp
Wire Wire Line
	3315 6535 3475 6535
Wire Wire Line
	3775 6535 4365 6535
Text Label 6000 1720 0    60   ~ 0
voltage_1
$EndSCHEMATC
