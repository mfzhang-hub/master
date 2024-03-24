#!/bin/bash
    echo "西丽终端三色灯异常测试"
	if [ ! -d "~/ZTE/driver/" ];then
	mkdir -p ~/ZTE/driver/
	fi
    if [ ! -d "~/ZTE/transition" ];then
	mkdir -p ~/ZTE/transition
	fi
    if [ ! -d "~/ZTE/driver_loggr" ];then
	mkdir -p ~/ZTE/driver_loggr
	fi
    if [ ! -d "~/ZTE/computer" ];then
	mkdir -p ~/ZTE/computer
	fi

    rm -r ~/ZTE/transition/* 
function delFile(){
    string=`du ~/ZTE/driver/cpu.log`
    string=`du ~/ZTE/driver/memory.log`
    string=`du ~/ZTE/driver/start.log`
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
    size=40

    if [ $fileSize -gt $size ] ; then
    mv ~/ZTE/driver/cpu.log ~/ZTE/driver/cpu.log1 
    sleep 0.1
    mv ~/ZTE/driver/memory.log ~/ZTE/driver/memory.log1 
    sleep 0.1
    mv ~/ZTE/driver/start.log ~/ZTE/driver/start.log1
    sleep 0.1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/ZTE/driver/* ~/ZTE/transition &
    sleep 1
    tar -zcPvf ~/ZTE/driver_loggr/driver_loggr-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/ZTE/transition &
    sleep 0.1
    dir=~/ZTE/driver_loggr
    #find ~/ZTE/driver_loggr -mtime +1 -name "driver_loggr-$(date +%Y-%m-%d-%H-%M-%S).tar.gz" -exec rm -rf {} \;
    ls -1t $dir/* | awk 'NR>300 {print "rm -r "$0}' | bash 
    sleep 1
    rm -r ~/ZTE/transition/* 
    fi
    if [ $fileSize -gt $size ] ; then
    cp -r /var/log/syslog ~/ZTE/computer &
    cp -r /var/log/kern.log ~/ZTE/computer &
    fi
    
    echo "深圳西丽基地三色灯车辆排查数据打印！！！未定位" >> ~/ZTE/driver/cpu.log &
    echo "深圳西丽基地三色灯车辆排查数据打印！！！未定位" >> ~/ZTE/driver/memory.log &
    echo "深圳西丽基地三色灯车辆排查数据打印！！！未定位" >> ~/ZTE/driver/start.log &

}
while true
do
    sleep 0.1
    cd /mnt
    source devel_isolated/setup.bash 
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
	
    echo $ttime >> ~/ZTE/driver/cpu.log
    top -bn 1 -i -c | head -6 >> ~/ZTE/driver/cpu.log &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/cpu.log 
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/ZTE/driver/cpu.log  &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/cpu.log 
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/ZTE/driver/cpu.log  &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -user | head -8 >> ~/ZTE/driver/cpu.log &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/cpu.log
    sensors  >> ~/ZTE/driver/cpu.log &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/memory.log
    free -m  >> ~/ZTE/driver/memory.log &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/memory.log
    df -hl  >> ~/ZTE/driver/memory.log &
    sleep 0.01
    echo $ttime >> ~/ZTE/driver/start.log
    ps -ef | grep start >> ~/ZTE/driver/start.log &
    sleep 0.1
    
    delFile
    sleep 0.01
done
