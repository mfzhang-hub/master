

#!/bin/bash

function delFile(){
    string=`du ~/memlog.txt`
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
    mv ~/memlog.txt ~/memlog1.txt
    fi
}

while true
do
    echo "start" >> ~/memlog.txt
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/memlog.txt
    ps -eo pid,%cpu,%mem,args --sort -%mem | head -5 >> ~/memlog.txt
    sleep 0.5
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/memlog.txt
    ps -eo pid,%cpu,%mem,args --sort -%cpu | head -5 >> ~/memlog.txt
    sleep 0.5
    echo "END" >> ~/memlog.txt
    delFile
    sleep 0.5
done
