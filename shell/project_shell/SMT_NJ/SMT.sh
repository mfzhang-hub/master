#!/bin/bash
cd /
sleep 3

sroller_pid=`ps -ef | grep cmd_roller | grep -v grep | awk '{print $2}'`
 echo "find result: $sroller_pid "
echo "robot" | sudo -S kill -9 $sroller_pid 
ROLLER_pid=`ps -ef | grep roller_command | grep -v grep | awk '{print $2}'`
 echo "find result: $ROLLER_pid "
echo "robot" | sudo -S kill -9 $ROLLER_pid 

sleep 5

cd /mnt
source devel_isolated/setup.bash

rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 200"   #平台高度设置为200mm触发下限位

sleep 10

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"     #平台回到原点

sleep 5

cd /
sleep 1

rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 400"  
     #平台高度设置为400mm
sleep 10

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"           #平台回到原点

sleep 5
cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x41
dmsData: 0"
sleep 2            #右侧挡板升起

cd  /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x31
dmsData: 0"
sleep 2             #左侧挡板升起

cd /
sleep 1

cd /mnt
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 1000"      #平台高度设置为1000mm

sleep 10

cd /
sleep 1

rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 1100"   #平台高度设置为1100mm触发上限位

sleep 10

cd /
sleep 1


cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x61
dmsData: 0"  #平台左伸

sleep 10

cd /
sleep 1


cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x32
dmsData: 0"     #左侧挡板落下

sleep 3
cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x21
dmsData: 0"     #滚筒转速500(正转)

sleep 5
cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x20
dmsData: 0"    #滚筒速度0 （停止转动）

sleep 2
cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0"    #右侧挡板升起

sleep 2
cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"  #平台回到原点

sleep 10

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x62
dmsData: 0"   #平台右伸

sleep 10

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x42
dmsData: 0"    #右侧挡板落下

sleep 2

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x22
dmsData: 0"     #滚筒转速500（反转）

sleep 10

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x20
dmsData: 0"      #滚筒速度0 （停止转动）

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0"      #右侧挡板升起

sleep 2

cd /
sleep 1

cd /mnt
rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"   #平台回到原点

sleep 10

cd /
sleep 1

cd /mnt
rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 400"   #平台高度设置为400mm

sleep 10

cd /
sleep 1

sroller_pid=`ps -ef | grep cmd_roller | grep -v grep | awk '{print $2}'`
 echo "find result: $sroller_pid "
echo "robot" | sudo -S kill -9 $sroller_pid 
ROLLER_pid=`ps -ef | grep roller_command | grep -v grep | awk '{print $2}'`
 echo "find result: $ROLLER_pid "
echo "robot" | sudo -S kill -9 $ROLLER_pid 

sleep 2

sh SMT.sh 


