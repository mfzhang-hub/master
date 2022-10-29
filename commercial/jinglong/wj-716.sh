#云南晶龙项目万集激光超市问题排查打印
#!/bin/bash

echo "Yunnan Jinglong Project reported that the laser had timeout, 
      and added scripts to check and locate the problem; 
      There may be too much data in model specific scripts!!!" 

  if [ ! -d "~/JL/WLR-716/" ];then
  mkdir -p ~/JL/WLR-716/
  fi
    if [ ! -d "~/JL/CP" ];then
  mkdir -p ~/JL/CP
  fi
    if [ ! -d "~/JL/log" ];then
  mkdir -p ~/JL/log
  fi
    if [ ! -d "~/JL/front_shark" ];then
  mkdir -p ~/JL/front_shark
  fi
    if [ ! -d "~/JL/back_shark" ];then
  mkdir -p ~/JL/back_shark
  fi
    if [ ! -d "~/JL/front_Center_shark" ];then
  mkdir -p ~/JL/front_Center_shark
  fi
     if [ ! -d "~/JL/back_Center_shark" ];then
  mkdir -p ~/JL/back_Center_shark
  fi
     if [ ! -d "~/JL/CPU" ];then
  mkdir -p ~/JL/CPU
  fi
    if [ ! -d "~/JL/log/front_shark" ];then
  mkdir -p ~/JL/log/front_shark
  fi
    if [ ! -d "~/JL/log/back_shark" ];then
  mkdir -p ~/JL/log/back_shark
  fi
    if [ ! -d "~/JL/log/front_Center_shark" ];then
  mkdir -p ~/JL/log/front_Center_shark
  fi
     if [ ! -d "~/JL/log/back_Center_shark" ];then
  mkdir -p ~/JL/log/back_Center_shark
  fi


    #rm -r ~/JL/WLR-716/*

    sleep 1
    
function delFile(){
    string=`du ~/JL/WLR-716/ping_front.log`
    string=`du ~/JL/WLR-716/ping_back.log`
    string=`du ~/JL/WLR-716/ping_front_Center.log`
    string=`du ~/JL/WLR-716/ping_back_Center.log`
    string=`du ~/JL/WLR-716/rostopic_front.log`
    string=`du ~/JL/WLR-716/rostopic_back.log`
    string='du ~/JL/WLR-716/rostopic_front_Center.log'
    string='du ~/JL/WLR-716/rostopic_back_Center.log'
    string=`du ~/JL/WLR-716/battery.log`
    string=`du ~/JL/WLR-716/ping_lanxin_lan1.log`
    string=`du ~/JL/WLR-716/ping_lanxin_lan2.log`
    string=`du ~/JL/WLR-716/PS.log`
    string=`du ~/JL/CPU/cpu.log`
    string=`du ~/JL/CPU/memery.log`
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


    if [ $fileSize -gt $size ] ; then
    mv ~/JL/WLR-716/ping_front.log ~/JL/WLR-716/ping_front.log1 
    mv ~/JL/WLR-716/ping_back.log ~/JL/WLR-716/ping_back.log1 
    mv ~/JL/WLR-716/ping_front_Center.log ~/JL/WLR-716/ping_front_Center.log1
    mv ~/JL/WLR-716/ping_back_Center.log ~/JL/WLR-716/ping_back_Center.log1
    mv ~/JL/WLR-716/rostopic_front.log ~/JL/WLR-716/rostopic_front.log1
    mv ~/JL/WLR-716/rostopic_back.log ~/JL/WLR-716/rostopic_back.log1
    mv ~/JL/WLR-716/battery.log ~/JL/WLR-716/battery.log1
    mv ~/JL/WLR-716/ping_lanxin_lan1.log ~/JL/WLR-716/ping_lanxin_lan1.log1
    mv ~/JL/WLR-716/ping_lanxin_lan2.log ~/JL/WLR-716/ping_lanxin_lan2.log1
    mv ~/JL/WLR-716/PS.log ~/JL/WLR-716/PS.log1
    mv ~/JL/CPU/cpu.log ~/JL/CPU/cpu.log1
    mv ~/JL/CPU/memery.log ~/JL/CPU/memery.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/JL/WLR-716/* ~/JL/CP &
    sleep 1
    tar -zcPvf ~/JL/log/log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/JL/CP &
    tar -zcPvf ~/JL/log/front_shark/front_wireshark1-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/JL/front_shark &
    tar -zcPvf ~/JL/log/back_shark/back_wireshark2-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/JL/back_shark &
    tar -zcPvf ~/JL/log/front_Center_shark/back_wireshark2-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/JL/front_Center_shark &
    tar -zcPvf ~/JL/log/back_Center_shark/back_wireshark2-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/JL/back_Center_shark &
    sleep 1
    dir=~/JL/log
    dir_front_shark=~/JL/log/front_shark
    dir_back_shark=~/JL/log/back_shark
    dir_front_Center_shark=~/JL/log/front_Center_shark
    dir_back_Center_shark=~/JL/log/back_Center_shark
    dir_ros=~/.ros/log

    #find ~/JL/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz" -exec rm -rf {} \;
    ls -1t $dir/* | awk 'NR>100 {print "rm -r "$0}' | bash 
    ls -1t $dir_front_shark/* | awk 'NR>150 {print "rm -r "$0}' | bash 
    ls -1t $dir_back_shark/* | awk 'NR>150 {print "rm -r "$0}' | bash 
    ls -1t $dir_front_Center_shark/* | awk 'NR>150 {print "rm -r "$0}' | bash 
    ls -1t $dir_back_Center_shark/* | awk 'NR>150 {print "rm -r "$0}' | bash 
    ls -1t $dir_ros/rostopic_*.log | awk 'NR>10 {print "rm -r "$0}' | bash 

    sleep 0.1
    ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9
    sleep 1
    rm -r ~/JL/CP/* 
    rm -r ~/JL/front_shark/*
    rm -r ~/JL/back_shark/*
    rm -r ~/JL/front_Center_shark/*
    rm -r ~/JL/back_Center_shark/*

    fi
    

}
while true
do
    sleep 0.1
    cd /mnt
    source devel_isolated/setup.bash 
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

#The system program data command printing starts.
    echo $ttime >> ~/JL/WLR-716/ping_front.log
    ping -c 1 192.168.100.104 >> ~/JL/WLR-716/ping_front.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/ping_back.log
    ping -c 1 192.168.100.108 >> ~/JL/WLR-716/ping_back.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/ping_front_Center.log
    ping -c 1 192.168.100.101 >> ~/JL/WLR-716/ping_front_Center.log
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/ping_back_Center.log
    ping -c 1 192.168.100.102 >> ~/JL/WLR-716/ping_back_Center.log
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/rostopic_front.log
    rostopic echo -n 1 /scan_front --noarr >> ~/JL/WLR-716/rostopic_front.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/rostopic_back.log
    rostopic echo -n 1 /scan_back --noarr >> ~/JL/WLR-716/rostopic_back.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/rostopic_front_Center.log
    rostopic echo -n 1 /front_mid_scan --noarr >> ~/JL/WLR-716/rostopic_front_Center.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/rostopic_back_Center.log
    rostopic echo -n 1 /back_mid_scan --noarr >> ~/JL/WLR-716/rostopic_back_Center.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/battery.log
    rostopic echo -n 1 /ztexing_node/dev_status >> ~/JL/WLR-716/battery.log &
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/ping_lanxin_lan1.log
    ping -c 1 192.168.100.111 >> ~/JL/WLR-716/ping_lanxin_lan1.log
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/ping_lanxin_lan2.log             # No data possible
    echo "No data possible" >> ~/JL/WLR-716/ping_lanxin_lan2.log
    ping -c 1 192.168.100.110 >> ~/JL/WLR-716/ping_lanxin_lan2.log  # No data possible
    sleep 0.01
    echo $ttime >> ~/JL/WLR-716/PS.log 
    ps -ef | grep wlr >>~/JL/WLR-716/PS.log

#CPU and memory data command printing starts.
    echo $ttime >> ~/JL/CPU/cpu.log
    top -bn 1 -i -c | head -6 >> ~/JL/CPU/cpu.log
    sleep 0.01
    echo $ttime >> ~/JL/CPU/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/JL/CPU/cpu.log  
    sleep 0.01
    echo $ttime >> ~/JL/CPU/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/JL/CPU/cpu.log
    sleep 0.01
    echo $ttime >> ~/JL/CPU/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -user | head -8 >> ~/JL/CPU/cpu.log 
    sleep 0.01
    echo $ttime >> ~/JL/CPU/cpu.log
    sensors  >> ~/JL/CPU/cpu.log
    sleep 0.01
    echo $ttime >> ~/JL/CPU/memery.log
    free -m >> ~/JL/CPU/memery.log
    sleep 0.01
    echo $ttime >> ~/JL/CPU/memery.log
    df -hl >> ~/JL/CPU/memery.log

#Network packet capture command printing starts.
    sleep 0.1
    tcpdump -i eno1 src net 192.168.100.104 -w ~/JL/front_shark/front_shark-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    tcpdump -i eno1 src net 192.168.100.108 -w ~/JL/back_shark/back_shark-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    tcpdump -i eno1 src net 192.168.100.101 -w ~/JL/front_Center_shark/front_Center_shark-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    tcpdump -i eno1 src net 192.168.100.102 -w ~/JL/back_Center_shark/back_Center_shark-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    delFile
    sleep 0.01
done