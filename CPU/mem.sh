

#!/bin/bash
	if [ ! -d "~/cpu/" ];then
	mkdir -p ~/cpu/
	fi
function delFile(){
    string=`du ~/cpu/cpu.log`
    #对IFS变量 进行替换处理
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
    mv ~/cpu.log ~/cpu.log1
    fi
}

while true
do
    echo "start" >> ~/cpu/cpu.log
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    ps -eo pid,%cpu,%mem,args --sort -%mem | head -5 >> ~/cpu/cpu.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    ps -eo pid,%cpu,%mem,args --sort -%cpu | head -5 >> ~/cpu/cpu.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/cpu/cpu.log
    sensors  >> ~/cpu/cpu.log
    sleep 0.1
    echo "END" >> ~/cpu/cpu.log
    echo -e " " >> ~/cpu/cpu.log
    delFile
    sleep 0.1
done