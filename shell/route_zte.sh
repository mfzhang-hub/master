#!/bin/bash

# gnome-session-properties : gnome-terminal -x

log=~/route_zte.txt
Start_Initial_Count=1 
End_Initial_Count=1 

while true
do

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

sleep 1
echo -e "\033[31m start$Start_Initial_Count \033[0m"
Start_Initial_Count=$((Start_Initial_Count+1))

if ! ping -c 1 -w 1 192.168.30.1 | grep -q "100% packet loss";then 

echo "$ttime CORRECT：与小镇7幢30网段通讯正常" >> $log 
else

echo "$ttime ERROR：与小镇7幢30网段通讯异常，执行：“ip route add default via 192.168.4.1 metric 60”指令！！！" >> $log 
ip route add default via 192.168.4.1 metric 60 &
fi

echo -e "\033[32m end$End_Initial_Count \033[0m"
End_Initial_Count=$((End_Initial_Count+1))
sleep 1
done
