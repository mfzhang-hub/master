#!/bin/bash
#dos2unix lanxin_camera.sh

sleep 0.1

if [ ! -d "~/.game/" ];then
	mkdir -p ~/.game/
	fi
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
sleep 0.1
echo $ttime >> ~/.game/kill.log
count=1000
int=1
while (($int<=$count))
do 
#ps -ef | grep lx_camera_up |grep -v grep |awk '{print $2}'| xargs kill -9 >> ~/.game/kill.log 
ps -ef | grep lx_camera_down |grep -v grep |awk '{print $2}'| xargs kill -9 >> ~/.game/kill.log
echo $int
let "int++"
done

sleep 0.1

ip route add default via 192.168.4.1 metric 60 

sleep 0.1
#mv ~/.game/kill.log ~/.game/kill.log1
#mv ~/.game/camera_up.log ~/.game/camera_up.log1
#mv ~/.game/camera_down.log ~/.game/camera_down.log1

echo "version = v2" > ~/.game/version 
sleep 0.1

echo -e "\033[32m 1 ok \033[0m"

echo $ttime >> ~/.game/grep.log
ps -ef | grep lx_camera_up >> ~/.game/grep.log 
ps -ef | grep lx_camera_down >> ~/.game/grep.log 

echo -e "\033[32m 2 ok \033[0m"


sleep 8
echo $ttime >> ~/.game/usb.log
lsusb >> ~/.game/usb.log


sleep 1

echo -e "\033[32m 3 ok \033[0m"

cd /mnt/
source devel_isolated/setup.bash 

#sleep 60

:<<!
echo -e "\n" >> ~/.game/camera_up.log
echo -e " START CAMERA_UP " >> ~/.game/camera_up.log
echo -e "\n" >> ~/.game/camera_up.log
echo $ttime >> ~/.game/camera_up.log
sleep 0.1
roslaunch lx_camera lx_camera_up.launch >> ~/.game/camera_up.log &
!

echo -e "\033[32m 4 ok \033[0m"

sleep 60

echo -e "\n" >> ~/.game/camera_down.log
echo -e "START CAMERA_DOWN" >> ~/.game/camera_down.log
echo -e "\n" >> ~/.game/camera_down.log
echo $ttime >> ~/.game/camera_down.log
sleep 0.1
roslaunch lx_camera lx_camera_down.launch >> ~/.game/camera_down.log &

while true
do
sleep 3
echo -e "\033[32m Read Refresh OK  \033[0m" 
echo  $ttime Read Refresh OK >> ~/.game/frequency_refresh_time
cd /root/.game/
grep -o "START CAMERA_UP" camera_up.log | wc -l > ~/.game/frequency_up_start.log 
grep -o "未找到相机驱动，请联系硬件人员检查链接是否正常!!!" camera_up.log | wc -l > ~/.game/frequency_up_bad.log 
grep -o "START CAMERA_UP" camera_up.log | wc -l > ~/.game/frequency_up_start.log 
grep -o "请联系出厂设置人员检查配置是否正确!!!" camera_up.log | wc -l > ~/.game/frequency_up_configure.log
grep -o "Interface claimed successfully"  camera_down.log | wc -l > ~/.game/frequency_down_suuess.log 
grep -o "START CAMERA_DOWN" camera_down.log | wc -l > ~/.game/frequency_down_start.log 
grep -o "未找到相机驱动，请联系硬件人员检查链接是否正常!!!" camera_down.log | wc -l > ~/.game/frequency_down_bad.log 
grep -o "START CAMERA_DOWN" camera_down.log | wc -l > ~/.game/frequency_down_start.log 
#grep -o "UsbCmdSendFAILED" camera_down.log | wc -l > ~/.game/frequency_down_configure.log
grep -o "请联系出厂设置人员检查配置是否正确!!!" camera_down.log | wc -l > ~/.game/frequency_down_configure.log 
grep -o "Interface claimed successfully"  camera_down.log | wc -l > ~/.game/frequency_down_suuess.log
done


