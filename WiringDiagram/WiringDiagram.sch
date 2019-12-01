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
P 7100 4700
F 0 "Mr.Nano" H 7900 3850 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 7900 3750 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 7250 3750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7100 3700 50  0001 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
Text Notes 8150 7650 0    60   ~ 0
11/27/19\n
Text Notes 7000 6750 0    60   ~ 0
ECE 111: \nUpdated wiring diagram for Tekbot\n
$Comp
L Motor:Motor_DC M?
U 1 1 5DDF1D57
P 4650 6550
F 0 "M?" V 4950 6450 50  0000 L CNN
F 1 "Motor_DC" V 4850 6300 50  0000 L CNN
F 2 "" H 4650 6460 50  0001 C CNN
F 3 "~" H 4650 6460 50  0001 C CNN
	1    4650 6550
	0    1    1    0   
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 5DDF39B9
P 5250 6550
F 0 "M?" V 5550 6450 50  0000 L CNN
F 1 "Motor_DC" V 5450 6350 50  0000 L CNN
F 2 "" H 5250 6460 50  0001 C CNN
F 3 "~" H 5250 6460 50  0001 C CNN
	1    5250 6550
	0    1    1    0   
$EndComp
$Comp
L Device:Battery Battery_Pack
U 1 1 5DDF8E16
P 6250 2600
F 0 "Battery_Pack" V 6005 2600 50  0000 C CNN
F 1 "Battery" V 6096 2600 50  0000 C CNN
F 2 "" V 6250 2660 50  0001 C CNN
F 3 "~" V 6250 2660 50  0001 C CNN
	1    6250 2600
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-SMD-5.2MM Kill_Switch
U 1 1 5DE2E417
P 5350 2600
F 0 "Kill_Switch" H 5350 2950 45  0000 C CNN
F 1 "MOMENTARY-SWITCH-SPST-SMD-5.2MM" H 5450 2850 45  0000 C CNN
F 2 "TACTILE_SWITCH_SMD_5.2MM" H 5350 2800 20  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
F 4 "SWCH-08247" H 5350 2731 60  0000 C CNN "Field4"
	1    5350 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 2600 5550 2600
NoConn ~ 7600 5400
NoConn ~ 7600 5300
NoConn ~ 7600 5200
NoConn ~ 7600 5100
NoConn ~ 7600 5000
NoConn ~ 7600 4900
NoConn ~ 7600 4800
NoConn ~ 7600 4700
NoConn ~ 7600 4500
NoConn ~ 7600 4200
NoConn ~ 7600 4100
NoConn ~ 6600 4500
NoConn ~ 6600 4300
NoConn ~ 6600 5300
NoConn ~ 6600 5400
NoConn ~ 3900 5850
NoConn ~ 3900 5750
NoConn ~ 3900 5550
NoConn ~ -6350 -2700
NoConn ~ 5550 550 
$Comp
L power:GND #PWR?
U 1 1 5DE218D3
P 3900 5450
F 0 "#PWR?" H 3900 5200 50  0001 C CNN
F 1 "GND" H 3905 5277 50  0000 C CNN
F 2 "" H 3900 5450 50  0001 C CNN
F 3 "" H 3900 5450 50  0001 C CNN
	1    3900 5450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE229EA
P 5150 2600
F 0 "#PWR?" H 5150 2350 50  0001 C CNN
F 1 "GND" V 5155 2472 50  0000 R CNN
F 2 "" H 5150 2600 50  0001 C CNN
F 3 "" H 5150 2600 50  0001 C CNN
	1    5150 2600
	0    1    1    0   
$EndComp
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY?
U 1 1 5DE254C3
P 6450 2600
F 0 "#SUPPLY?" H 6500 2600 45  0001 L BNN
F 1 "5V" V 6503 2727 45  0000 L CNN
F 2 "XXX-00000" V 6408 2727 60  0000 L CNN
F 3 "" H 6450 2600 60  0001 C CNN
	1    6450 2600
	0    1    1    0   
$EndComp
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY?
U 1 1 5DE2C16B
P 7300 3700
F 0 "#SUPPLY?" H 7350 3700 45  0001 L BNN
F 1 "5V" V 7400 3900 45  0000 C CNN
F 2 "XXX-00000" V 7300 4100 60  0000 C CNN
F 3 "" H 7300 3700 60  0001 C CNN
	1    7300 3700
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY?
U 1 1 5DE316D3
P 5700 5750
F 0 "#SUPPLY?" H 5750 5750 45  0001 L BNN
F 1 "5V" V 5650 5900 45  0000 L CNN
F 2 "XXX-00000" V 5750 5900 60  0000 L CNN
F 3 "" H 5700 5750 60  0001 C CNN
	1    5700 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6150 4500 6350
Wire Wire Line
	5300 6150 5300 6350
Wire Wire Line
	5300 6350 5450 6350
Wire Wire Line
	5450 6350 5450 6550
Wire Wire Line
	5100 6150 5100 6350
Wire Wire Line
	5100 6350 4950 6350
Wire Wire Line
	4950 6350 4950 6550
Wire Wire Line
	4700 6150 4700 6350
Wire Wire Line
	4700 6350 4850 6350
Wire Wire Line
	4850 6350 4850 6550
Wire Wire Line
	4500 6350 4350 6350
Wire Wire Line
	4350 6350 4350 6550
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY?
U 1 1 5DE2DE0A
P 3650 3900
F 0 "#SUPPLY?" H 3700 3900 45  0001 L BNN
F 1 "5V" H 3650 4070 45  0000 C CNN
F 2 "XXX-00000" H 3650 4165 60  0000 C CNN
F 3 "" H 3650 3900 60  0001 C CNN
	1    3650 3900
	-1   0    0    1   
$EndComp
$Comp
L RF_Bluetooth:RN4871 Mr.HC-05
U 1 1 5DEDB761
P 3650 3300
F 0 "Mr.HC-05" H 3950 3900 50  0000 L CNN
F 1 "RN4871" H 3950 4000 50  0000 L CNN
F 2 "RF_Module:Microchip_RN4871" H 3650 2600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/50002489A.pdf" H 3150 3850 50  0001 C CNN
	1    3650 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE03E74
P 3750 2700
F 0 "#PWR?" H 3750 2450 50  0001 C CNN
F 1 "GND" V 3755 2572 50  0000 R CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "" H 3750 2700 50  0001 C CNN
	1    3750 2700
	-1   0    0    1   
$EndComp
NoConn ~ 3550 2700
NoConn ~ 4350 3000
NoConn ~ 4350 3100
NoConn ~ 4350 3200
NoConn ~ 4350 3400
$Comp
L SparkFun-Resistors:2.0KOHM-0603-1_10W-5% R?
U 1 1 5DF0FC4D
P 4900 3600
F 0 "R?" H 4900 3900 45  0000 C CNN
F 1 "2.0KOHM-0603-1_10W-5%" H 4900 3816 45  0000 C CNN
F 2 "0603" H 4900 3750 20  0001 C CNN
F 3 "" H 4900 3600 60  0001 C CNN
F 4 "RES-2K" H 4900 3721 60  0000 C CNN "Field4"
	1    4900 3600
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D L239DNE
U 1 1 5DDED1A0
P 4700 5650
F 0 "L239DNE" V 5300 5050 50  0000 C CNN
F 1 "Motor Magic" V 5200 5050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 4900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4400 6350 50  0001 C CNN
	1    4700 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE2A0C4
P 6150 3600
F 0 "#PWR?" H 6150 3350 50  0001 C CNN
F 1 "GND" V 6155 3472 50  0000 R CNN
F 2 "" H 6150 3600 50  0001 C CNN
F 3 "" H 6150 3600 50  0001 C CNN
	1    6150 3600
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Resistors:1KOHM-HORIZ-1_4W-1% R?
U 1 1 5DF0D90F
P 5950 3600
F 0 "R?" H 5950 3900 45  0000 C CNN
F 1 "1KOHM-HORIZ-1_4W-1%" H 5950 3816 45  0000 C CNN
F 2 "AXIAL-0.3" H 5950 3750 20  0001 C CNN
F 3 "" H 5950 3600 60  0001 C CNN
F 4 "RES-1K" H 5950 3721 60  0000 C CNN "Field4"
	1    5950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3600 5450 3600
Wire Wire Line
	4350 3600 4700 3600
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY?
U 1 1 5DE325C8
P 5700 5550
F 0 "#SUPPLY?" H 5750 5550 45  0001 L BNN
F 1 "5V" V 5650 5700 45  0000 L CNN
F 2 "XXX-00000" V 5750 5700 60  0000 L CNN
F 3 "" H 5700 5550 60  0001 C CNN
	1    5700 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 5000 4700 5000
Wire Wire Line
	4700 5000 4700 5150
Wire Wire Line
	6600 4900 4500 4900
Wire Wire Line
	4500 4900 4500 5150
Wire Wire Line
	6600 4800 5100 4800
Wire Wire Line
	5100 4800 5100 5150
Wire Wire Line
	6600 4700 5300 4700
Wire Wire Line
	5300 4700 5300 5150
Wire Wire Line
	6600 4600 4900 4600
Wire Wire Line
	4900 4600 4900 5150
Wire Wire Line
	6600 4400 4300 4400
Wire Wire Line
	4300 4400 4300 5150
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY?
U 1 1 5DE2D160
P 7000 3700
F 0 "#SUPPLY?" H 7050 3700 45  0001 L BNN
F 1 "5V" V 7050 3850 45  0000 L CNN
F 2 "XXX-00000" V 6958 3827 60  0000 L CNN
F 3 "" H 7000 3700 60  0001 C CNN
	1    7000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3500 4550 3500
Wire Wire Line
	4550 3500 4550 4100
Wire Wire Line
	4550 4100 6600 4100
Wire Wire Line
	5450 3600 5450 4200
Wire Wire Line
	5450 4200 6600 4200
Connection ~ 5450 3600
Wire Wire Line
	5450 3600 5100 3600
$Comp
L power:GND #PWR?
U 1 1 5DE07830
P 7200 5700
F 0 "#PWR?" H 7200 5450 50  0001 C CNN
F 1 "GND" V 7205 5572 50  0000 R CNN
F 2 "" H 7200 5700 50  0001 C CNN
F 3 "" H 7200 5700 50  0001 C CNN
	1    7200 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE2152F
P 7100 5700
F 0 "#PWR?" H 7100 5450 50  0001 C CNN
F 1 "GND" V 7105 5572 50  0000 R CNN
F 2 "" H 7100 5700 50  0001 C CNN
F 3 "" H 7100 5700 50  0001 C CNN
	1    7100 5700
	1    0    0    -1  
$EndComp
NoConn ~ 2950 3000
NoConn ~ 2950 3100
NoConn ~ 2950 3200
NoConn ~ 2950 3300
NoConn ~ 2950 3400
NoConn ~ 2950 3500
NoConn ~ 2950 3600
NoConn ~ 6600 5100
NoConn ~ 6600 5200
$EndSCHEMATC
