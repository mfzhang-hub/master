#!/bin/bash
cd /
sh pid.sh &
sleep 5
cd /mnt
source devel_isolated/setup.bash
rostopic pub /cmd_roller std_msgs/UInt8 "data: 7" & #左侧挡板升起
sleep 1
rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"& #左侧挡板停止动作
sleep 3
rostopic pub /cmd_roller std_msgs/UInt8 "data: 10"& #右侧挡板升起
sleep 1
rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"& #右侧挡板停止
sleep 3
source devel_isolated/setup.bash
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 1220
roller_speed: 0.0" &  #货物尺寸设置为1220,重置夹板状态
sleep 8

rostopic pub /cmd_roller std_msgs/UInt8 "data: 8"& #左侧挡板落下
sleep 1
rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"& #左侧挡板停止动作
sleep 4
source devel_isolated/setup.bash
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 800
roller_speed: 0.0" & #货物尺寸设置为800
sleep 5

rostopic pub /cmd_roller std_msgs/UInt8 "data: 41"& #滚筒转速500(正转/左转)

sleep 10

rostopic pub /cmd_roller std_msgs/UInt8 "data: 42" &  #滚筒速度0 （停止转动）

sleep 5

rostopic pub /cmd_roller std_msgs/UInt8 "data: 7"& #左侧挡板升起

sleep 5

rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"& #左侧挡板停止动作


sleep 10
rostopic pub /cmd_roller std_msgs/UInt8 "data: 11"& #右侧挡板落下

sleep 5

rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"& #右侧挡板停止
sleep 3

source devel_isolated/setup.bash
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 1220
roller_speed: 0.0" & #货物尺寸设置为1220,重置夹板状态
sleep 8
rostopic pub /cmd_roller std_msgs/UInt8 "data: 43"& #滚筒转速500（反转/右转）

sleep 8

rostopic pub /cmd_roller std_msgs/UInt8 "data: 42"& #滚筒速度0 （停止转动）

sleep 5
 rostopic pub /cmd_roller std_msgs/UInt8 "data: 10"& #右侧挡板升起
sleep 5

rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"& #右侧挡板停止
sleep 5

cd /

sh pid.sh & #执行进程清除指令（启用根目录下的pid脚本）

cd /

sh sroller.sh #重复执行此脚本（脚本防止在根目录下）