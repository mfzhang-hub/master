#!/bin/bash
cd /
sh pid.sh &
sleep 5

cd /mnt
source devel_isolated/setup.bash

rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 500"  
     #平台高度设置为500mm
sleep 10

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"

sleep 5
cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x41
dmsData: 0"
sleep 2

cd  /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x31
dmsData: 0"
sleep 2

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 1000"      #平台高度设置为1000mm

sleep 10

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x61
dmsData: 0"  #平台左伸

sleep 10

cd /
sh pid.sh &
sleep 1


cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x32
dmsData: 0"     #左侧挡板落下

sleep 3
cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x21
dmsData: 0"     #滚筒转速500(正转)

sleep 5
cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x20
dmsData: 0"    #滚筒速度0 （停止转动）

sleep 2
cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0"    #右侧挡板升起

sleep 2
cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"  #平台回到原点

sleep 10

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x62
dmsData: 0"   #平台右伸

sleep 10

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x42
dmsData: 0"    #右侧挡板落下

sleep 2

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x22
dmsData: 0"     #滚筒转速500（反转）

sleep 10

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x20
dmsData: 0"      #滚筒速度0 （停止转动）

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0"      #右侧挡板升起

sleep 2

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"

sleep 10

cd /
sh pid.sh &
sleep 1

cd /mnt
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 500"   #平台高度设置为500mm

sleep 10

cd /
sh pid.sh &
sleep 1

sh SMT.sh 


