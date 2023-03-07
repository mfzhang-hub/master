#!/bin/bash
#dos2unix lanxin_camera.sh
sleep 0.1

ip route add default via 192.168.4.1 metric 60 &

sleep 0.1


if [ ! -d "~/.game/" ];then
	mkdir -p ~/.game/
	fi

sleep 0.1
#mv ~/.game/kill.log ~/.game/kill.log1
#mv ~/.game/camera_up.log ~/.game/camera_up.log1
#mv ~/.game/camera_down.log ~/.game/camera_down.log1

echo "version = v1.1" > ~/.game/version 
sleep 0.1

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

echo -e "\033[32m 1 ok \033[0m"

echo $ttime >> ~/.game/grep.log
ps -ef | grep lx_camera_up >> ~/.game/grep.log 
ps -ef | grep lx_camera_down >> ~/.game/grep.log 

echo -e "\033[32m 2 ok \033[0m"


sleep 0.1
echo $ttime >> ~/.game/usb.log
lsusb >> ~/.game/usb.log
sleep 0.1
echo $ttime >> ~/.game/kill.log
ps -ef | grep lx_camera_up |grep -v grep |awk '{print $2}'| xargs kill -9 >> ~/.game/kill.log 
ps -ef | grep lx_camera_down |grep -v grep |awk '{print $2}'| xargs kill -9 >> ~/.game/kill.log 

sleep 1

cd /mnt/
source devel_isolated/setup.bash &

echo -e "\033[32m 3 ok \033[0m"

:<<!
echo -e "\n" >> ~/.game/camera_up.log
echo -e " START CAMERA_UP " >> ~/.game/camera_up.log
echo -e "\n" >> ~/.game/camera_up.log
echo $ttime >> ~/.game/camera_up.log
roslaunch lx_camera lx_camera_up.launch >> ~/.game/camera_up.log &
!
echo -e "\033[32m 4 ok \033[0m"

echo -e "\n" >> ~/.game/camera_down.log
echo -e "START CAMERA_DOWN" >> ~/.game/camera_down.log
echo -e "\n" >> ~/.game/camera_down.log
echo $ttime >> ~/.game/camera_down.log
roslaunch lx_camera lx_camera_down.launch >> ~/.game/camera_down.log &

echo -e "\033[32m 5 ok \033[0m"
cd /root/.game
sleep 1
#grep -o "START CAMERA_UP" camera_up.log | wc -l > ~/.game/frequency_up_start.log &
#grep -o "鏈壘鍒扮浉鏈洪┍鍔紝璇疯仈绯荤‖浠朵汉鍛樻鏌ラ摼鎺ユ槸鍚︽甯?!!" camera_up.log | wc -l > ~/.game/frequency_up_bad.log &
grep -o "START CAMERA_DOWN" camera_down.log | wc -l > ~/.game/frequency_down_start.log &
grep -o "鏈壘鍒扮浉鏈洪┍鍔紝璇疯仈绯荤‖浠朵汉鍛樻鏌ラ摼鎺ユ槸鍚︽甯?!!" camera_down.log | wc -l > ~/.game/frequency_down_bad.log &

