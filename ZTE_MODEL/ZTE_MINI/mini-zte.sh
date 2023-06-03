if [ $1 -eq 1 ] #battery soc
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/dev_status
elif [ $1 -eq 2 ] #imu data
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /mobile_base/sensors/imu_data
elif [ $1 -eq 3 ] #imu 
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/imu_cali std_msgs/Bool "data: true" 
elif [ $1 -eq 4 ] #wlr-716-mini-left
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_front
elif [ $1 -eq 5 ] #wlr-716-mini-right
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back
elif [ $1 -eq 6 ] #encode odom
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /encoder_odom
elif [ $1 -eq 7 ] #realsense
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /high_realsense_scan
elif [ $1 -eq 8 ] #Vzense rgb
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /Vzense/color/image_raw 
elif [ $1 -eq 9 ] #Vzense depth
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /Vzense/aligned_depth_to_color/image_raw
elif [ $1 -eq 11 ] #power trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /ztexing_node/power_trigger 
elif [ $1 -eq 12 ] #shut down
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/shutdown_stm32 std_msgs/Bool "data: true" 
elif [ $1 -eq 13 ] #charge open
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command "1"
elif [ $1 -eq 14 ] #charge close
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command "0" 
elif [ $1 -eq 15 ] #Rear docking laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back_forklift
elif [ $1 -eq 16 ] #Top navigation laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_top
elif [ $1 -eq 17 ] #Left limit trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/left_arm_cargo
elif [ $1 -eq 18 ] #Right limit trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/right_arm_cargo
elif [ $1 -eq 19 ] #Fork arm height
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/height
elif [ $1 -eq 20 ] #Lift the inserting arm to 0
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 0"
elif [ $1 -eq 21 ] #Lift the inserting arm to 2300
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2300"   
elif [ $1 -eq 22 ] #Lift the inserting arm to 2500
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2500"
elif [ $1 -eq 23 ] #Lift the inserting arm to 2200
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2400"
elif [ $1 -eq 24 ] #Left lamp independent test
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /light_command std_msgs/UInt8 "data: 6"
elif [ $1 -eq 25 ] #Right lamp independent test
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /light_command std_msgs/UInt8 "data: 7"
elif [ $1 -eq 26 ] #Blue Ocean Laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /forklift_top_scan
else
   echo "less param"
fi
