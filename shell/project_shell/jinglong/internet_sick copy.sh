#!/bin/bash
	if [ ! -d "~/DL/SICK/" ];then
	mkdir -p ~/DL/SICK/
	fi
    if [ ! -d "~/DL/beifen" ];then
	mkdir -p ~/DL/beifen
	fi
    if [ ! -d "~/DL/logger/log" ];then
	mkdir -p ~/DL/logger/log
	fi
    if [ ! -d "~/DL/front_shark" ];then
	mkdir -p ~/DL/front_shark
	fi
    if [ ! -d "~/DL/back_shark" ];then
	mkdir -p ~/DL/back_shark
	fi
    if [ ! -d "~/DL/logger/back" ];then
	mkdir -p ~/DL/logger/back
	fi
    if [ ! -d "~/DL/logger/front" ];then
	mkdir -p ~/DL/logger/front
	fi
    if [ ! -d "~/DL/logger/computer" ];then
	mkdir -p ~/DL/logger/computer
	fi

    #rm -r ~/DL/SICK/*

    sleep 1
    
    rm -r ~/DL/beifen/* 
function delFile(){
    string=`du ~/DL/SICK/cpu.log`
    string=`du ~/DL/SICK/memory.log`
    string=`du ~/DL/SICK/ping_front.log`
    string=`du ~/DL/SICK/ping_back.log`
    string=`du ~/DL/SICK/rostopic_front.log`
    string=`du ~/DL/SICK/rostopic_back.log`
    string=`du ~/DL/SICK/battery.log`
    OLD_IFS="$IFS"
    IFS=" "
    array=($string)
    IFS="$OLD_IFS"

    fileSize=0
    for var in ${array[@]}
    do
    fileSize=$var
    break
    done
    echo $fileSize
    size=20
    size1=3


    if [ $fileSize -gt $size ] ; then
    mv ~/DL/SICK/ping_front.log ~/DL/SICK/ping_front.log1 
    sleep 0.1
    mv ~/DL/SICK/ping_back.log ~/DL/SICK/ping_back.log1 
    sleep 0.1
    mv ~/DL/SICK/rostopic_front.log ~/DL/SICK/rostopic_front.log1
    sleep 0.1
    mv ~/DL/SICK/rostopic_back.log ~/DL/SICK/rostopic_back.log1
    sleep 0.1
    mv ~/DL/SICK/battery.log ~/DL/SICK/battery.log1
    sleep 0.1
    mv ~/DL/SICK/cpu.log ~/DL/SICK/cpu.log1
    sleep 0.1
    mv ~/DL/SICK/cpu.log ~/DL/SICK/cpu.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/DL/SICK/* ~/DL/beifen &
    sleep 1
    tar -zcPvf ~/DL/logger/log/log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/DL/beifen &
    tar -zcPvf ~/DL/logger/front/front_wireshark-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/DL/front_shark &
    tar -zcPvf ~/DL/logger/back/back_wireshark-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/DL/back_shark &
    sleep 0.1
    dir=~/DL/logger/log
    dir_back=~/DL/logger/back
    dir_front=~/DL/logger/front
    dir_ros=~/.ros/log
    #find ~/DL/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz" -exec rm -rf {} \;
    ls -1t $dir/* | awk 'NR>100 {print "rm -r "$0}' | bash
    ls -1t $dir_back/* | awk 'NR>100 {print "rm -r "$0}' | bash 
    ls -1t $dir_front/* | awk 'NR>100 {print "rm -r "$0}' | bash 
    ls -1t $dir_ros/rostopic_*.log | awk 'NR>10 {print "rm -r "$0}' | bash 
    sleep 0.1
    ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9
    sleep 1
    rm -r ~/DL/beifen/* 
    rm -r ~/DL/front_shark/*
    rm -r ~/DL/back_shark/*
    fi
}
while true
do
    sleep 0.1
    cd /mnt
    source devel_isolated/setup.bash 
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
	top -bn 1 -i -c | head -6 >> ~/DL/SICK/cpu.log
    sleep 0.1
    echo $ttime >> ~/DL/SICK/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/DL/SICK/cpu.log  
    sleep 0.1
    echo $ttime >> ~/DL/SICK/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/DL/SICK/cpu.log 
    sleep 0.1
    echo $ttime >> ~/DL/SICK/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -user | head -8 >> ~/DL/SICK/cpu.log 
    sleep 0.1
    echo $ttime >> ~/DL/SICK/cpu.log
    sensors  >> ~/DL/SICK/cpu.log
    sleep 0.1
    echo $ttime >> ~/DL/SICK/memory.log
    free -m >> ~/DL/SICK/memory.log
    sleep 0.1
    echo $ttime >>~/DL/SICK/memory.log
    df -hl >> ~/DL/SICK/memory.log
    sleep 0.1
    echo $ttime >> ~/DL/SICK/ping_front.log
    ping -c 1 192.168.100.104 >> ~/DL/SICK/ping_front.log &
    sleep 0.01
    echo $ttime >> ~/DL/SICK/ping_back.log
    ping -c 1 192.168.100.108 >> ~/DL/SICK/ping_back.log &
    sleep 0.01
    echo $ttime >> ~/DL/SICK/rostopic_front.log
    rostopic echo -n 1 /scan_front --noarr >> ~/DL/SICK/rostopic_front.log &
    sleep 0.01
    echo $ttime >> ~/DL/SICK/rostopic_back.log
    rostopic echo -n 1 /scan_back --noarr >> ~/DL/SICK/rostopic_back.log &
    sleep 0.01
    echo $ttime >> ~/DL/SICK/battery.log
    rostopic echo -n 1 /ztexing_node/dev_status  >> ~/DL/SICK/battery.log &
    sleep 0.01
    tcpdump -i eno1 src net 192.168.100.104 -w ~/DL/front_shark/front_shark-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    tcpdump -i eno1 src net 192.168.100.108 -w ~/DL/back_shark/back_shark-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    delFile
    sleep 0.01
done