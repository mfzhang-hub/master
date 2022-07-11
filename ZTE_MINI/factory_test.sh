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
elif [ $1 -eq 4 ] #sick 581
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_front
elif [ $1 -eq 5 ] #sick 240
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
   rostopic echo /realsense_scan 
elif [ $1 -eq 8 ] #tfmini front
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /tfmini_front/TFmini 
elif [ $1 -eq 9 ] #tfmini top
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /tfmini_top/TFmini
elif [ $1 -eq 10 ] #pgv
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /pgv100_scan  
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
   rostopic pub /charge_command std_msgs/UInt8 "data: 1"
elif [ $1 -eq 14 ] #charge close
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command std_msgs/UInt8 "data: 0" 
elif [ $1 -eq 15 ] #top camera light
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /top_camera_light_command std_msgs/UInt8 "data: 1"
elif [ $1 -eq 16 ] #top camera light
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /top_camera_light_command std_msgs/UInt8 "data: 2"
elif [ $1 -eq 17 ] #top camera light
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /top_camera_light_command std_msgs/UInt8 "data: 3"
elif [ $1 -eq 18 ] #top camera light
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /top_camera_light_command std_msgs/UInt8 "data: 0"
elif [ $1 -eq 19 ] #top camera light
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /usb_cam/image_raw
elif [ $1 -eq 20 ] #Left front laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_front
elif [ $1 -eq 21 ] #Right front laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back
elif [ $1 -eq 22 ] #Rear docking laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_back_forklift
elif [ $1 -eq 23 ] #Top navigation laser
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /scan_top
elif [ $1 -eq 24 ] #Left limit trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/left_arm_cargo
elif [ $1 -eq 25 ] #Right limit trigger
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/right_arm_cargo
elif [ $1 -eq 26 ] #Fork arm height
then
   cd /mnt/
   source devel_isolated/setup.bash
   rosparam get /forklift/height
elif [ $1 -eq 27 ] #Left fork arm tfmini ranging
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /tfmini_left/TFmini
elif [ $1 -eq 28 ] #Right fork arm tfmini ranging
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic echo /tfmini_right/TFmini
elif [ $1 -eq 29 ] #Forklift charging starts
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command "1"
elif [ $1 -eq 30 ] #Forklift charging end
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /charge_command "0"
else
   echo "less param"
fi
