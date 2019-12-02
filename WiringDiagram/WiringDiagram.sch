EESchema Schematic File Version 4
LIBS:WiringDiagram-cache
EELAYER 30 0
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
Text Notes 7350 7500 0    71   ~ 0
[ECE_111] Tekbot Project\n
$Comp
L MCU_Module:Arduino_Nano_v3.x Mr.Nano
U 1 1 5DDE6FB9
P 5600 3600
F 0 "Mr.Nano" H 6400 2750 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6400 2650 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5750 2650 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5600 2600 50  0001 C CNN
	1    5600 3600
	1    0    0    -1  
$EndComp
Text Notes 8150 7650 0    60   ~ 0
11/27/19\n
Text Notes 9300 6700 0    60   ~ 0
ECE 111: \nUpdated wiring diagram for Tekbot\n
$Comp
L Motor:Motor_DC M?
U 1 1 5DDF1D57
P 3150 5450
F 0 "M?" V 3450 5350 50  0000 L CNN
F 1 "Motor_DC" V 3350 5200 50  0000 L CNN
F 2 "" H 3150 5360 50  0001 C CNN
F 3 "~" H 3150 5360 50  0001 C CNN
	1    3150 5450
	0    1    1    0   
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 5DDF39B9
P 3750 5450
F 0 "M?" V 4050 5350 50  0000 L CNN
F 1 "Motor_DC" V 3950 5250 50  0000 L CNN
F 2 "" H 3750 5360 50  0001 C CNN
F 3 "~" H 3750 5360 50  0001 C CNN
	1    3750 5450
	0    1    1    0   
$EndComp
$Comp
L Device:Battery Battery_Pack
U 1 1 5DDF8E16
P 3800 2000
F 0 "Battery_Pack" V 3555 2000 50  0000 C CNN
F 1 "Battery" V 3646 2000 50  0000 C CNN
F 2 "" V 3800 2060 50  0001 C CNN
F 3 "~" V 3800 2060 50  0001 C CNN
	1    3800 2000
	0    -1   -1   0   
$EndComp
$Comp
L WiringDiagram-rescue:MOMENTARY-SWITCH-SPST-SMD-5.2MM-SparkFun-Switches Kill_Switch
U 1 1 5DE2E417
P 4700 2000
F 0 "Kill_Switch" H 4700 2350 45  0000 C CNN
F 1 "MOMENTARY-SWITCH-SPST-SMD-5.2MM" H 4800 2250 45  0000 C CNN
F 2 "TACTILE_SWITCH_SMD_5.2MM" H 4700 2200 20  0001 C CNN
F 3 "" H 4700 2000 50  0001 C CNN
F 4 "SWCH-08247" H 4700 2131 60  0000 C CNN "Field4"
	1    4700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2000 4500 2000
NoConn ~ 6100 4300
NoConn ~ 6100 4200
NoConn ~ 6100 4100
NoConn ~ 6100 4000
NoConn ~ 6100 3900
NoConn ~ 6100 3800
NoConn ~ 6100 3700
NoConn ~ 6100 3600
NoConn ~ 6100 3400
NoConn ~ 6100 3100
NoConn ~ 6100 3000
NoConn ~ 5100 3400
NoConn ~ 5100 3200
NoConn ~ 5100 4200
NoConn ~ 5100 4300
NoConn ~ 2400 4750
NoConn ~ 2400 4650
NoConn ~ 2400 4450
NoConn ~ -6350 -2700
NoConn ~ 5550 550 
$Comp
L power:GND #PWR?
U 1 1 5DE218D3
P 2400 4350
F 0 "#PWR?" H 2400 4100 50  0001 C CNN
F 1 "GND" H 2405 4177 50  0000 C CNN
F 2 "" H 2400 4350 50  0001 C CNN
F 3 "" H 2400 4350 50  0001 C CNN
	1    2400 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE229EA
P 4900 2000
F 0 "#PWR?" H 4900 1750 50  0001 C CNN
F 1 "GND" V 4905 1872 50  0000 R CNN
F 2 "" H 4900 2000 50  0001 C CNN
F 3 "" H 4900 2000 50  0001 C CNN
	1    4900 2000
	0    -1   -1   0   
$EndComp
$Comp
L WiringDiagram-rescue:5V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5DE254C3
P 3600 2000
F 0 "#SUPPLY?" H 3650 2000 45  0001 L BNN
F 1 "5V" V 3653 2127 45  0000 L CNN
F 2 "XXX-00000" V 3558 2127 60  0000 L CNN
F 3 "" H 3600 2000 60  0001 C CNN
	1    3600 2000
	0    -1   -1   0   
$EndComp
$Comp
L WiringDiagram-rescue:5V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5DE2C16B
P 5800 2600
F 0 "#SUPPLY?" H 5850 2600 45  0001 L BNN
F 1 "5V" V 5900 2800 45  0000 C CNN
F 2 "XXX-00000" V 5800 3000 60  0000 C CNN
F 3 "" H 5800 2600 60  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L WiringDiagram-rescue:5V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5DE316D3
P 4200 4650
F 0 "#SUPPLY?" H 4250 4650 45  0001 L BNN
F 1 "5V" V 4150 4800 45  0000 L CNN
F 2 "XXX-00000" V 4250 4800 60  0000 L CNN
F 3 "" H 4200 4650 60  0001 C CNN
	1    4200 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5050 3000 5250
Wire Wire Line
	3800 5050 3800 5250
Wire Wire Line
	3800 5250 3950 5250
Wire Wire Line
	3950 5250 3950 5450
Wire Wire Line
	3600 5050 3600 5250
Wire Wire Line
	3600 5250 3450 5250
Wire Wire Line
	3450 5250 3450 5450
Wire Wire Line
	3200 5050 3200 5250
Wire Wire Line
	3200 5250 3350 5250
Wire Wire Line
	3350 5250 3350 5450
Wire Wire Line
	3000 5250 2850 5250
Wire Wire Line
	2850 5250 2850 5450
$Comp
L WiringDiagram-rescue:5V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5DE2DE0A
P 2150 2800
F 0 "#SUPPLY?" H 2200 2800 45  0001 L BNN
F 1 "5V" H 2150 2970 45  0000 C CNN
F 2 "XXX-00000" H 2150 3065 60  0000 C CNN
F 3 "" H 2150 2800 60  0001 C CNN
	1    2150 2800
	-1   0    0    1   
$EndComp
$Comp
L RF_Bluetooth:RN4871 Mr.HC-05
U 1 1 5DEDB761
P 2150 2200
F 0 "Mr.HC-05" H 2450 2800 50  0000 L CNN
F 1 "RN4871" H 2450 2900 50  0000 L CNN
F 2 "RF_Module:Microchip_RN4871" H 2150 1500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/50002489A.pdf" H 1650 2750 50  0001 C CNN
	1    2150 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE03E74
P 2250 1600
F 0 "#PWR?" H 2250 1350 50  0001 C CNN
F 1 "GND" V 2255 1472 50  0000 R CNN
F 2 "" H 2250 1600 50  0001 C CNN
F 3 "" H 2250 1600 50  0001 C CNN
	1    2250 1600
	-1   0    0    1   
$EndComp
NoConn ~ 2050 1600
NoConn ~ 2850 1900
NoConn ~ 2850 2000
NoConn ~ 2850 2100
NoConn ~ 2850 2300
$Comp
L WiringDiagram-rescue:2.0KOHM-0603-1_10W-5%-SparkFun-Resistors RESISTOR_2K
U 1 1 5DF0FC4D
P 3100 3100
F 0 "RESISTOR_2K" H 3100 2800 45  0000 C CNN
F 1 "2.0KOHM-0603-1_10W-5%" H 3100 2900 45  0000 C CNN
F 2 "0603" H 3100 3250 20  0001 C CNN
F 3 "" H 3100 3100 60  0001 C CNN
F 4 "RES-2K" H 3100 3000 60  0000 C CNN "Field4"
	1    3100 3100
	-1   0    0    1   
$EndComp
$Comp
L Driver_Motor:L293D L239DNE
U 1 1 5DDED1A0
P 3200 4550
F 0 "L239DNE" V 3800 3950 50  0000 C CNN
F 1 "Motor Magic" V 3700 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3450 3800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 2900 5250 50  0001 C CNN
	1    3200 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE2A0C4
P 2900 3100
F 0 "#PWR?" H 2900 2850 50  0001 C CNN
F 1 "GND" V 2905 2972 50  0000 R CNN
F 2 "" H 2900 3100 50  0001 C CNN
F 3 "" H 2900 3100 50  0001 C CNN
	1    2900 3100
	0    1    1    0   
$EndComp
$Comp
L WiringDiagram-rescue:1KOHM-HORIZ-1_4W-1%-SparkFun-Resistors RESISTOR_1K
U 1 1 5DF0D90F
P 4150 3100
F 0 "RESISTOR_1K" H 4150 2800 45  0000 C CNN
F 1 "1KOHM-HORIZ-1_4W-1%" H 4150 2900 45  0000 C CNN
F 2 "AXIAL-0.3" H 4150 3250 20  0001 C CNN
F 3 "" H 4150 3100 60  0001 C CNN
F 4 "RES-1K" H 4150 3000 60  0000 C CNN "Field4"
	1    4150 3100
	-1   0    0    1   
$EndComp
$Comp
L WiringDiagram-rescue:5V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5DE325C8
P 4200 4450
F 0 "#SUPPLY?" H 4250 4450 45  0001 L BNN
F 1 "5V" V 4150 4600 45  0000 L CNN
F 2 "XXX-00000" V 4250 4600 60  0000 L CNN
F 3 "" H 4200 4450 60  0001 C CNN
	1    4200 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3700 3600 3700
Wire Wire Line
	3600 3700 3600 4050
Wire Wire Line
	5100 3600 3800 3600
Wire Wire Line
	3800 3600 3800 4050
Wire Wire Line
	5100 3500 3400 3500
Wire Wire Line
	3400 3500 3400 4050
Wire Wire Line
	5100 3300 2800 3300
Wire Wire Line
	2800 3300 2800 4050
$Comp
L WiringDiagram-rescue:5V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5DE2D160
P 5500 2600
F 0 "#SUPPLY?" H 5550 2600 45  0001 L BNN
F 1 "5V" V 5550 2750 45  0000 L CNN
F 2 "XXX-00000" V 5458 2727 60  0000 L CNN
F 3 "" H 5500 2600 60  0001 C CNN
	1    5500 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE07830
P 5700 4600
F 0 "#PWR?" H 5700 4350 50  0001 C CNN
F 1 "GND" V 5705 4472 50  0000 R CNN
F 2 "" H 5700 4600 50  0001 C CNN
F 3 "" H 5700 4600 50  0001 C CNN
	1    5700 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE2152F
P 5600 4600
F 0 "#PWR?" H 5600 4350 50  0001 C CNN
F 1 "GND" V 5605 4472 50  0000 R CNN
F 2 "" H 5600 4600 50  0001 C CNN
F 3 "" H 5600 4600 50  0001 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
NoConn ~ 1450 1900
NoConn ~ 1450 2000
NoConn ~ 1450 2100
NoConn ~ 1450 2200
NoConn ~ 1450 2300
NoConn ~ 1450 2400
NoConn ~ 1450 2500
NoConn ~ 5100 4000
NoConn ~ 5100 4100
Wire Wire Line
	5100 3900 3000 3900
Wire Wire Line
	3000 3900 3000 4050
Wire Wire Line
	5100 3800 3200 3800
Wire Wire Line
	3200 3800 3200 4050
Wire Wire Line
	3950 3100 3650 3100
Wire Wire Line
	4350 3100 5100 3100
Wire Wire Line
	3650 3100 3650 2500
Wire Wire Line
	3650 2500 2850 2500
Connection ~ 3650 3100
Wire Wire Line
	3650 3100 3300 3100
Wire Wire Line
	5100 3000 4700 3000
Wire Wire Line
	4700 3000 4700 2400
Wire Wire Line
	4700 2400 2850 2400
$EndSCHEMATC
