#!/bin/bash

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
wifi_card=$(iwconfig | grep -o '^[^ ]*')
while true
do
wifi_name=$(iwconfig $wifi_card | grep ESSID | awk -F '"' '{print $2}')
ap_name=$(iwconfig $wifi_card | grep Access | awk -F ' ' '{print $6}')
signal_strength=$(iwconfig $wifi_card | grep Signal | awk -F '=' '{print $3}' | awk '{print $1}')
gateway=$(route -n | grep 'UG[ \t]' | awk '{print $2}')
delay=$(ping -c 1 "$gateway" | grep 'time=' | awk -F '=' '{print $4}' | awk -F ' ' '{print $1}')
network_card=$(lspci | grep -i network | awk -F 'Network controller: ' '{print $2}')
if [ -z "$wifi_card" ]; then
    echo "$ttime ERROR: No network card information detected.请检查硬件是否正常！！！" >> ~/interface.txt
else
    echo "$ttime wifi_card:$wifi_card wifi_name:$wifi_name ap_name:$ap_name signal_strength:$signal_strength dbm gateway:$gateway delay:$delay ms network_card:$network_card " >> ~/interface.txt
fi

done
