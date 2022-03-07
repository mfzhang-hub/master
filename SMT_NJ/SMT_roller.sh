if [ $1 -eq 2 ]   #选定左光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x11
dmsData: 0"
elif [ $1 -eq 3 ]  #选定右光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x12
dmsData: 0"   
elif [ $1 -eq 4 ]   #光通讯模块发送0x99
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0x99"  
elif [ $1 -eq 5 ]   #光通讯模块发送0x66
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0x66"  
elif [ $1 -eq 6 ]   #读取光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0"  
elif [ $1 -eq 7 ]   #左和右光通讯模块关闭
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0x10"  
elif [ $1 -eq 8 ]   #使能滚筒
then
   cd /mnt/
   source devel_isolated/setup.bash 
elif [ $1 -eq 9 ]   #滚筒转速500(正转)
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x21
dmsData: 0" 
elif [ $1 -eq 10 ]   #滚筒速度0 （停止转动）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x20
dmsData: 0" 
elif [ $1 -eq 11 ]   #滚筒转速500（反转）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x22
dmsData: 0" 
elif [ $1 -eq 12 ]   #关闭滚筒使能
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 13 ]   #左侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x31
dmsData: 0" 
elif [ $1 -eq 14 ]   #左侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x32
dmsData: 0" 
elif [ $1 -eq 15 ]   #左侧挡板停止动作
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 16 ]   #右侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0" 
elif [ $1 -eq 17 ]   #右侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x42
dmsData: 0" 
elif [ $1 -eq 18 ]   #右侧挡板停止
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 19 ]   #货物尺寸设置为500
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 500
roller_speed: 0.0
roller_height: 0"
elif [ $1 -eq 20 ]   #滚筒转速500(正转)******************上层******************
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x21
dmsData: 0" 
elif [ $1 -eq 21 ]   #滚筒速度0 （停止转动）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x20
dmsData: 0" 
elif [ $1 -eq 22 ]   #滚筒转速500（反转）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x22
dmsData: 0" 
elif [ $1 -eq 23 ]   #关闭滚筒使能
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 24 ]   #左侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x31
dmsData: 0" 
elif [ $1 -eq 25 ]   #左侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x32
dmsData: 0" 
elif [ $1 -eq 26 ]   #左侧挡板停止动作
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 27 ]   #右侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x41
dmsData: 0" 
elif [ $1 -eq 28 ]   #右侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x42
dmsData: 0"   
elif [ $1 -eq 29 ]   #平台高度设置为230mm  ************SMT***************
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 230"  
elif [ $1 -eq 30 ]   #平台高度设置为1050mm
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 1050"
elif [ $1 -eq 31 ]   #平台左伸
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x61
dmsData: 0" 
elif [ $1 -eq 32 ]   #平台右伸
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x62
dmsData: 0" 
elif [ $1 -eq 33 ]   #平台回到原点
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"   
else
   echo "less param"
fi




