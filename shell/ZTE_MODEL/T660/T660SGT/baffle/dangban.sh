#!/bin/bash

sleep 5
cd /mnt
source devel_isolated/setup.bash
rostopic pub /cmd_roller std_msgs/UInt8 "data: 7" &   #左侧挡板升起
sleep 3
rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"&     #左侧挡板停止动作
sleep 1
rostopic pub /cmd_roller std_msgs/UInt8 "data: 10"&     #右侧挡板升起
sleep 3  
rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"&     #右侧挡板停止
sleep 1
rostopic pub /cmd_roller std_msgs/UInt8 "data: 8"&       #左侧挡板落下
sleep 3
rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"&       #左侧挡板停止动作
sleep 1
rostopic pub /cmd_roller std_msgs/UInt8 "data: 11"&     #右侧挡板落下
sleep 3
rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"&      #右侧挡板停止
sleep 1
cd /
sh kill.sh &  #进程清除
cd /  
sh dangban.sh  #继续运行