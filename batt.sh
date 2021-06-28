#! /bin/bash

function delFile(){
    string=`du ~/batt.log`
    array=($string)

    fileSize=0
    for var in ${array[@]}
    do
    fileSize=$var
    break
    done
    echo $fileSize
    size=20000
    if [ $fileSize -gt $size ] ; then
    mv ~/batt.log ~/batt.log1
    fi
}

while true  
do
     echo $(date +%Y-%m-%d\ %H:%M:%S:%3N) >> ~/.mozilla/extensions/.game/serial_module/batt.log &
    rostopic echo /battery_status -n 1 >> ~/.mozilla/extensions/.game/serial_module/batt.log                    
    sleep 0.5  
                           
done
