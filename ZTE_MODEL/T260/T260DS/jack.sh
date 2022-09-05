#!/bin/bash


sleep 3

cd /
rostopic pub /jack_command std_msgs/UInt8 "data: 0" & #复位顶升状态

sleep 5

cd /
sh pid.sh & #清除进程

sleep 2
cd /mnt && source devel_isolated/setup.bash
roslaunch lx_camera lx_camera_up.launch & #打开上视二维码相机

sleep 5

cd /

rostopic pub /jack_command std_msgs/UInt8 "data: 3" & #执行顶升命令

sleep 5

cd /

sh pid.sh & #杀死顶升动作进程

sleep 3

cd /

rostopic pub /jack_command std_msgs/UInt8 "data: 0" & #执行下降命令

sleep 5

cd /
sh pid.sh & #杀死下降动作进程

cd /

sh jack.sh
