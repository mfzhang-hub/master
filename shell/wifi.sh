#!/bin/bash
while true
do
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
wifi_card=$(iw dev | grep -Po '^\s*Interface\s*\K\w+')
wifi_name=$(iwconfig $wifi_card | grep ESSID | awk -F '"' '{print $2}')
ap_name=$(iwconfig $wifi_card | grep Access | awk -F ' ' '{print $6}')
signal_strength=$(iwconfig $wifi_card | grep Signal | awk -F '=' '{print $3}' | awk '{print $1}')
gateway=$(route -n | grep 'UG[ \t]' | awk '{print $2}')
delay=$(ping -c 1 "$gateway" | grep 'time=' | awk -F '=' '{print $4}' | awk -F ' ' '{print $1}')
network_card=$(lspci | grep -i network | awk -F 'Network controller: ' '{print $2}')
previous_metric=$current_metric
current_metric=$(ip route show | grep "default via $target_gateway" | awk '{print $NF}' | sort -n | head -n 1)
connected_devices=$(iw dev $wifi_card station dump | grep "Station" | wc -l)
ap_info=$(iwlist $wifi_card scanning 1 essid "$(iwgetid -r)" 2>&1)
iwlist_ap=$(echo "$ap_info" | grep -F 'IEEE 802.11' | awk -F ':' '{print $2}')
freq=$(iwconfig $wifi_card | grep -F 'Frequency:' | awk '{print $2}' )
if [ -z "$wifi_card" ]; then
    echo "$ttime ERROR: No network card information detected.请检查硬件是否正常！！！" >> ~/interface.txt 
else
    echo "$ttime wifi_card:$wifi_card wifi_name:$wifi_name ap_name:$ap_name signal_strength:$signal_strength dbm gateway:$gateway delay:$delay ms connected_devices:$connected_devices $freq GHz network_card:$network_card " >> ~/interface.txt &

fi

if [[ "$current_metric" != "$previous_metric" ]]; then
ip route show | awk -v current="$current_metric" -v previous="$previous_metric" '($NF > previous) && ($NF < current) {print $NF}'
    echo "$ttime 网关Metric发生变化：$previous_metric -> $current_metric" >> ~/interface.txt 
fi

if [[ $iwlist_ap != *"IEEE 802.11"* ]];then
echo "$ttime 当前连接网络支持wifi6网卡(Wifi6 can be connected.)！" >> ~/interface.txt 
else
echo "$ttime ERROR：当前连接网络不支持wifi6网卡(Wifi6 cannot be connected.)！" >> ~/interface.txt 
fi

sleep 0.1
done

