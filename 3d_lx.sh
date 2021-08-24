#! /bin/bash
# create log dirs
log_root="/lx_log"
user=`users | awk '{print $1}'`
password="admin1234"
echo "current user: $user"

if [ ! -d $log_root ];then
    echo $password | sudo -S mkdir $log_root 
    echo $password | sudo -S chown $user $log_root
fi

if [ $? == 1 ]; then
    echo "日志目录失败！！ 使用root权限运行！！"
    exit
fi

for file in `find ~/lxind_ws/install/  -name "*.conf" -a -type f`;
do 
    for path in `sed -n '/\.File[[:space:]]*=[[:space:]]*\//p'  $file | egrep -o '=[[:space:]]*/.*/' | egrep -o '/.*/'`;
    do
        if [ ! -d $path ];then
            sudo -u $user mkdir -p $path 
        fi;
    done
done 

# create log dirs


export QTDIR=~/Qt5.10.1/5.10.1/gcc_64
export LD_LIBRARY_PATH=$QTDIR/lib
export PATH=$PATH:$QTDIR/bin

source /opt/ros/kinetic/setup.bash
source ~/lxind_ws/install/setup.bash

cd ~/
sh stop_process.sh

#sleep 5
#cd ~/lxind_ws/install/other/wifi
#sh run.sh &

sleep 3
cd ~/lxind_ws/install/other/mapUpdater
sh map.sh &

cd ~/lxind_ws/install/other
sh mem.sh &

sleep 5
roslaunch lxind_nav FR3303_ROLLER_QR_INFO_VIS.launch 

