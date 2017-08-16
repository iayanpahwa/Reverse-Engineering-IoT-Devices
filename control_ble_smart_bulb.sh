#!/bin/bash

#Controlling Smart LED Light bulb using Bluez gatttool utility

echo "Controlling SYSKA Smart light bulb"
sleep 3
echo "Look Mah! No App ;)"
sleep 3

#Change MAC Address, service address accordingly
while true;
do
gatttool -i hci0 -b 88:C2:55:CA:F0:36 --char-write-req -a 0x0012 -n 00100006000a030001010000000000000000 > /dev/null
sleep 3
echo "RED"
gatttool -i hci0 -b 88:C2:55:CA:F0:36 --char-write-req -a 0x0012 -n 00100006000a0300010100ff000000000000 > /dev/null
sleep 3
echo "GREEN"
gatttool -i hci0 -b 88:C2:55:CA:F0:36 --char-write-req -a 0x0012 -n 00100006000a030001010000ff0000000000 > /dev/null
sleep 3
echo "BLUE"
gatttool -i hci0 -b 88:C2:55:CA:F0:36 --char-write-req -a 0x0012 -n 00100006000a03000101000000ff00000000 > /dev/null
sleep 3
echo "WHITE"
gatttool -i hci0 -b 88:C2:55:CA:F0:36 --char-write-req -a 0x0012 -n 00100006000a0300010100ffffff00000000 > /dev/null
sleep 3
echo "OFF"
gatttool -i hci0 -b 88:C2:55:CA:F0:36 --char-write-req -a 0x0012 -n 00100006000a030001010000000000000000 > /dev/null
done
exit 0
