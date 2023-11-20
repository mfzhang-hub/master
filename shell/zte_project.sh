if [ $1 -eq 1 ] #电池信息打印
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/dev_status
elif [ $1 -eq 2 ] #imu数据查看
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /mobile_base/sensors/imu_data
elif [ $1 -eq 3 ] #imu校验指令
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/imu_cali std_msgs/Bool "data: true" 
elif [ $1 -eq 4 ] #前激光topic数据
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_front 
elif [ $1 -eq 5 ] #后激光topic数据
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back 
elif [ $1 -eq 6 ] #里程计数据打印
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /encoder_odom
elif [ $1 -eq 7 ] #realsense相机topic数据
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /realsense_scan 
elif [ $1 -eq 8 ] #前tfmini数据打印
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /tfmini_front/TFmini 
elif [ $1 -eq 9 ] #上tfmini数据打印
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /tfmini_top/TFmini
elif [ $1 -eq 10 ] #pgv二维码相机数据打印
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /pgv100_scan  
elif [ $1 -eq 11 ] #电源按键工控机端监听测试
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/power_trigger 
elif [ $1 -eq 12 ] #工控机关机指令
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/shutdown_stm32 std_msgs/Bool "data: true" 
elif [ $1 -eq 13 ] #继电器打开指令
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command std_msgs/UInt8 "data: 1"
elif [ $1 -eq 14 ] #继电器关闭指令
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command std_msgs/UInt8 "data: 0" 
elif [ $1 -eq 21 ] #上视二维码相机topic数据
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /camera_down/image_raw
elif [ $1 -eq 20 ] #上视二维码相机topic数据
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /camera_up/image_raw
elif [ $1 -eq 31 ] #自动牵引车型锁舌光电光电触发测试指令
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/draw_status
if [ $1 -eq 32 ]   #选定左光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x11
dmsData: 0"
elif [ $1 -eq 33 ]  #选定右光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x12
dmsData: 0"   
elif [ $1 -eq 34 ]   #光通讯模块发送0x99
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0x99"  
elif [ $1 -eq 35 ]   #光通讯模块发送0x66
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0x66"  
elif [ $1 -eq 36 ]   #读取光通讯模块
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0"  
elif [ $1 -eq 37 ]   #左和右光通讯模块关闭
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0
dmsData: 0x10"  
elif [ $1 -eq 38 ]   #使能滚筒
then
   cd /mnt/
   source devel_isolated/setup.bash 
elif [ $1 -eq 39 ]   #滚筒转速500(正转/左转)
then
cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x21
dmsData: 0"    
elif [ $1 -eq 40 ]   #滚筒速度0 （停止转动）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x20
dmsData: 0" 
elif [ $1 -eq 41 ]   #滚筒转速500（反转/右转）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x22
dmsData: 0" 
elif [ $1 -eq 42 ]   #关闭滚筒使能
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 43 ]   #左侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x31
dmsData: 0" 
elif [ $1 -eq 44 ]   #左侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x32
dmsData: 0" 
elif [ $1 -eq 45 ]   #左侧挡板停止动作
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 46 ]   #右侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x41
dmsData: 0" 
elif [ $1 -eq 47 ]   #右侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x42
dmsData: 0" 
elif [ $1 -eq 48 ]   #右侧挡板停止
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 49 ]   #货物尺寸设置为500
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 500
roller_speed: 0.0
roller_height: 0"
#    ******************上层******************
elif [ $1 -eq 50 ]   #滚筒转速500(正转/左转)
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x21
dmsData: 0" 
elif [ $1 -eq 51 ]   #滚筒速度0 （停止转动）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x20
dmsData: 0" 
elif [ $1 -eq 52 ]   #滚筒转速500（反转/右转）
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x22
dmsData: 0" 
elif [ $1 -eq 53 ]   #关闭滚筒使能
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 54 ]   #左侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x31
dmsData: 0" 
elif [ $1 -eq 55 ]   #左侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x32
dmsData: 0" 
elif [ $1 -eq 56 ]   #左侧挡板停止动作
then
   cd /mnt/
   source devel_isolated/setup.bash
elif [ $1 -eq 57 ]   #右侧挡板升起
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x41
dmsData: 0" 
elif [ $1 -eq 58 ]   #右侧挡板落下
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 1
cmd: 0x42
dmsData: 0"   
elif [ $1 -eq 59 ]   #平台高度设置为400mm  ************SMT***************
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 400"  
elif [ $1 -eq 60 ]   #平台高度设置为1000mm
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_command common_msgs/Roller "roller_task: 0 
cargo_size: 0
roller_speed: 0.0
roller_height: 1000"
elif [ $1 -eq 61 ]   #平台左伸
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x61
dmsData: 0" 
elif [ $1 -eq 62 ]   #平台右伸
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x62
dmsData: 0" 
elif [ $1 -eq 63 ]   #平台回到原点
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /cmd_roller common_msgs/RollerCtrlTest "num: 0
cmd: 0x63
dmsData: 0"   
elif [ $1 -eq 64 ]   #自动牵引单元对射光电状态查询
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/draw_status  
elif [ $1 -eq 65 ]   #SMT-GT自动调宽到152mm，平台升高到500mm
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 8
cargo_size: 152
roller_speed: 0.0
roller_height: 500" 
elif [ $1 -eq 66 ]   #SMT-GT自动调宽到500mm，平台升高到500mm
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 8
cargo_size: 500
roller_speed: 0.0
roller_height: 500" 
elif [ $1 -eq 67 ]   #SMT-GT自动调宽到152mm，平台升高到500mm指令暂停
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 2
cargo_size: 152
roller_speed: 0.0
roller_height: 500" 
elif [ $1 -eq 68 ]   #SMT-GT自动调宽到500mm，平台升高到500mm，指令暂停
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 2
cargo_size: 500
roller_speed: 0.0
roller_height: 500" 
else
echo "less param"
fi