if [ $1 -eq 2 ]   #选定左光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 110"
elif [ $1 -eq 3 ]  #选定右光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 111"   
elif [ $1 -eq 4 ]   #光通讯模块发送0x99
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 10 /cmd_roller std_msgs/UInt8 "data: 2"  
elif [ $1 -eq 5 ]   #光通讯模块发送0x66
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 10 /cmd_roller std_msgs/UInt8 "data: 20"  
elif [ $1 -eq 6 ]   #读取光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 10 /cmd_roller std_msgs/UInt8 "data: 200"  
elif [ $1 -eq 7 ]   #左和右光通讯模块关闭
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 3"  
elif [ $1 -eq 8 ]   #使能滚筒
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 4" 
elif [ $1 -eq 9 ]   #滚筒转速500(正转)
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 41" 
elif [ $1 -eq 10 ]   #滚筒速度0 （停止转动）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 42" 
elif [ $1 -eq 11 ]   #滚筒转速500（反转）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 43" 
elif [ $1 -eq 12 ]   #关闭滚筒使能
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 6" 
elif [ $1 -eq 13 ]   #左侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 7" 
elif [ $1 -eq 14 ]   #左侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 8" 
elif [ $1 -eq 15 ]   #左侧挡板停止动作
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 9" 
elif [ $1 -eq 16 ]   #右侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 10" 
elif [ $1 -eq 17 ]   #右侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 11" 
elif [ $1 -eq 18 ]   #右侧挡板停止
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 12" 
elif [ $1 -eq 19 ]   #货物尺寸设置为500
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller std_msgs/UInt8 "data: 13" 
elif [ $1 -eq 29 ]   #平台高度设置为400mm  ************SMT***************
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 500"  
elif [ $1 -eq 30 ]   #平台高度设置为1000mm
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 1000"
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



