#!/bin/bash
sleep 3
cd /
sh pid.sh & #清空一次循环后台进程
sleep 5
cd /mnt
source devel_isolated/setup.bash
sleep 2
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x31
dmsData: 0" & #左侧挡板升起 
sleep 5
#rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"& #左侧挡板停止动作
#sleep 1
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0" & #右侧挡板升起
sleep 5
#rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"& #右侧挡板停止
#sleep 1
source devel_isolated/setup.bash
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 700
roller_speed: 0.0" & #货物夹板回到原点
sleep 8
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x32
dmsData: 0" & #左侧挡板落下
sleep 5
#rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"& #左侧挡板停止动作
#sleep 1
cd /mnt/
source devel_isolated/setup.bash
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 400
roller_speed: 0.0" & #货物尺寸设置为400，开始运动
sleep 8
#cd /mnt/
#   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x21
dmsData: 0"& #滚筒转速500(正转)
sleep 8
#cd /mnt/
#source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x20
dmsData: 0" & #滚筒速度0 （停止转动）
sleep 2
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x31
dmsData: 0" & #左侧挡板升起
sleep 5
#rostopic pub /cmd_roller std_msgs/UInt8 "data: 9"& #左侧挡板停止动作
#sleep 1
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x42
dmsData: 0" & #右侧挡板落下
#sleep 5
#rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"& #右侧挡板停止
sleep 5
cd /mnt/
source devel_isolated/setup.bash
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 700
roller_speed: 0.0" & #货物夹板回到原点
sleep 8
cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x22
dmsData: 0" & #滚筒转速500（反转）
sleep 8
cd /mnt/
source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x20
dmsData: 0" & #滚筒速度0 （停止转动)
sleep 2
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0" & #右侧挡板升起
sleep 5
#rostopic pub /cmd_roller std_msgs/UInt8 "data: 12"& #右侧挡板停止
#sleep 1
cd /
sh pid.sh & #清空一次循环后台进程
cd /
sh T260roller.sh #继续执行此脚本

