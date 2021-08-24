#! /bin/bash
export QTDIR=~/Qt5.10.1/5.10.1/gcc_64
export LD_LIBRARY_PATH=$QTDIR/lib
export PATH=$PATH:$QTDIR/bin

source /opt/ros/kinetic/setup.bash
source ~/lxind_ws/install/setup.bash

cd ~

sh stop_process.sh
sleep 1

cd ~/lxind_ws/install/wifi
sh run.sh &

cd ~/lxind_ws/install
sh mem.sh &

roslaunch lxind_nav FR3303_ROLLER_QR_LOC.launch
