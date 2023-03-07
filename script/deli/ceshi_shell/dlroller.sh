#!/bin/bash
cd /
sh pid.sh &
sleep 3
cd /mnt
source devel_isolated/setup.bash

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #前上辊筒上料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #前上辊筒出料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #前下辊筒进料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #前下辊筒出料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #后上辊筒进料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #后上辊筒出料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0" & #后下辊筒进料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0" & #后下辊筒出料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 1
  cargo_size: 0
  roller_speed: 0.0" & #辊筒全部进料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 2

rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 0
  cargo_size: 0
  roller_speed: 0.0" & #辊筒全部出料
sleep 2
rostopic pub /roller_command common_msgs/DLayerDRowRollerComm "frontUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
frontLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backUpper:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0
backLower:
  roller_task: 2
  cargo_size: 0
  roller_speed: 0.0" & #重置辊筒状态
sleep 1
cd /

sh pid.sh &  #执行进程清除指令

cd /

sh dlroller.sh #继续执行此脚本


