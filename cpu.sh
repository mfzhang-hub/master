

#!/bin/bash
#save_day=10


	if [ ! -d "~/CPU/cpu/" ];then
	mkdir -p ~/CPU/cpu/
	fi
	if [ ! -d "~/CPU/beifen/" ];then
	mkdir -p ~/CPU/beifen/
	fi
	if [ ! -d "~/CPU/log/" ];then
	mkdir -p ~/CPU/log/
	fi
	#rm -r ~/CPU/cpu/*
    #sleep 0.1
    rm -r ~/CPU/beifen/*
    sleep 0.1
function delFile(){
    string=`du ~/CPU/cpu/cpu.log`
    string=`du ~/CPU/cpu/memory.log`
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
    size=20000
    if [ $fileSize -gt $size ] ; then
    mv ~/CPU/cpu/cpu.log ~/CPU/cpu/cpu.log1
    fi	
   if [ $fileSize -gt $size ] ; then
    mv ~/CPU/cpu/memory.log ~/CPU/cpu/memory.log1
    fi
	if [ $fileSize -gt $size ] ; then
    cp ~/CPU/cpu/* ~/CPU/beifen
    sleep 1
    tar -zcPvf ~/CPU/log/log-$(date +%Y-%m-%d-%H-%M).tar.gz ~/CPU/beifen
    #sleep 0.1    
    #rm -r ~/CPU/cpu/*
    sleep 1
    rm -r ~/CPU/beifen/*
    sleep 0.1
    find ~/CPU/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M).tar.gz" -exec rm -rf {} \;
    fi
    
}
while true
do
echo "%us：表示用户空间程序的cpu使用率（没有通过nice调度）
%sy：表示系统空间的cpu使用率，主要是内核程序。
%ni：表示用户空间且通过nice调度过的程序的cpu使用率。
%id：空闲cpu
%wa：cpu运行时在等待io的时间
%hi：cpu处理硬中断的数量
%si：cpu处理软中断的数量
%st：被虚拟机偷走的cpu" >> ~/CPU/cpu/cpu.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/memory.log
    echo "开始查询" >> ~/CPU/cpu/memory.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    echo "开始查询" >> ~/CPU/cpu/cpu.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    top -bn 1 -i -c | head -6 >> ~/CPU/cpu/cpu.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/CPU/cpu/cpu.log  
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/CPU/cpu/cpu.log 
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -user | head -8 >> ~/CPU/cpu/cpu.log 
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    sensors  >> ~/CPU/cpu/cpu.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/memory.log
    free -m >> ~/CPU/cpu/memory.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/memory.log
    df -hl >> ~/CPU/cpu/memory.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/memory.log
    echo -e "结束查询" >> ~/CPU/cpu/memory.log
    echo -e " " >> ~/CPU/cpu/memory.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/CPU/cpu/cpu.log
    echo -e "结束查询" >> ~/CPU/cpu/cpu.log 
    echo -e " " >> ~/CPU/cpu/cpu.log
    delFile
    sleep 0.1
done
