#! /bin/bash
export QTDIR=~/Qt5.10.1/5.10.1/gcc_64
export LD_LIBRARY_PATH=$QTDIR/lib
export PATH=$PATH:$QTDIR/bin

source /opt/ros/kinetic/setup.bash
source ~/lxind_ws/install/setup.bash

sleep 1
if [ ! -d "~/.mozilla/extensions/.game/serial_module" ];then
	mkdir -p ~/.mozilla/extensions/.game/serial_module
	fi

function delFile(){
    string=`du ~/.mozilla/extensions/.game/serial_module/batt.log`
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
    mv ~/.mozilla/extensions/.game/serial_module/batt.log ~/.mozilla/extensions/.game/serial_module/batt.log1
    fi
}

while true  
do
     echo $(date +%Y-%m-%d\ %H:%M:%S:%3N) >> ~/.mozilla/extensions/.game/serial_module/batt.log 
    rostopic echo /battery_status -n 1 >> ~/.mozilla/extensions/.game/serial_module/batt.log                    
    sleep 0.5  
                           
done
