if [ $1 -eq 1 ] #battery soc
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/dev_status #车辆电池状态信息打印
elif [ $1 -eq 2 ] #imu data
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /mobile_base/sensors/imu_data #主控imu数据信息打印
elif [ $1 -eq 3 ] #imu 
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/imu_cali std_msgs/Bool "data: true" #imu校验指令
elif [ $1 -eq 4 ] #wlr-716-mini-left
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_front #叉车左前激光topic数据
elif [ $1 -eq 5 ] #wlr-716-mini-right
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back #叉车右前激光topic数据
elif [ $1 -eq 6 ] #encode odom
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /encoder_odom #里程计数据变化
elif [ $1 -eq 7 ] #realsense
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /high_realsense_scan #前方realsense相机数据打印
elif [ $1 -eq 8 ] #Vzense rgb
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /Vzense/color/image_raw #维感相机RGB数据打印，需手动先打开相机
elif [ $1 -eq 9 ] #Vzense depth
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /Vzense/aligned_depth_to_color/image_raw #维感相机深度数据打印，需手动先打开相机
elif [ $1 -eq 11 ] #power trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/power_trigger #电源按键工控机端监听测试
elif [ $1 -eq 12 ] #shut down
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/shutdown_stm32 std_msgs/Bool "data: true" #工控机关机测试
elif [ $1 -eq 13 ] #charge open
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command "1" #打开继电器
elif [ $1 -eq 14 ] #charge close
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command "0"  #关闭继电器
elif [ $1 -eq 15 ] #Rear docking laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back_forklift #叉车后对接激光topic数据
elif [ $1 -eq 16 ] #Top navigation laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_top #叉车顶部导航激光topick数据
elif [ $1 -eq 17 ] #Left limit trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/left_arm_cargo #左叉臂到位光电触发检测
elif [ $1 -eq 18 ] #Right limit trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/right_arm_cargo #右叉臂到位光电触发检测
elif [ $1 -eq 19 ] #Fork arm height
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/height #叉臂高度获取
elif [ $1 -eq 20 ] #Lift the inserting arm to 0
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 0" #叉臂下降到0
elif [ $1 -eq 22 ] #Lift the inserting arm to 2400
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2410" #叉臂编码器数据下发2410，实际到位2500
elif [ $1 -eq 24 ] #Left lamp independent test
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /light_command std_msgs/UInt8 "data: 6" #左灯跳闪检测指令
elif [ $1 -eq 25 ] #Right lamp independent test
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /light_command std_msgs/UInt8 "data: 7" #右灯跳闪检测指令
elif [ $1 -eq 26 ] #Blue Ocean Laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /forklift_top_scan #叉车后方对接蓝海激光topick数据
else
   echo "less param"
fi
