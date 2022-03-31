

#!/bin/bash
save_day=10
	if [ ! -d "~/cpu/" ];then
	mkdir -p ~/cpu/
	fi
function delFile(){
    string=`du ~/cpu/cpu.log`
    string=`du ~/cpu/memory.log`
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
    size=20000000   #可修改配置
    if [ $fileSize -gt $size ] ; then
    mv ~/cpu/cpu.log ~/cpu/cpu.log1
    fi	
   if [ $fileSize -gt $size ] ; then
    mv ~/cpu/memory.log ~/cpu/memory.log1
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
%st：被虚拟机偷走的cpu" >> ~/cpu/cpu.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/memory.log
    echo "开始查询" >> ~/cpu/memory.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    echo "开始查询" >> ~/cpu/cpu.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    top -bn 1 -i -c | head -6 >> ~/cpu/cpu.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/cpu/cpu.log  
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/cpu/cpu.log 
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -user | head -8 >> ~/cpu/cpu.log 
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    sensors  >> ~/cpu/cpu.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/memory.log
    free -m >> ~/cpu/memory.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/memory.log
    df -hl >> ~/cpu/memory.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/memory.log
    echo -e "结束查询" >> ~/cpu/memory.log
    echo -e " " >> ~/cpu/memory.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    echo -e "结束查询" >> ~/cpu/cpu.log 
    echo -e " " >> ~/cpu/cpu.log
    delFile
    sleep 0.1
done
