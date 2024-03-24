
#说明：以下测试指令中兴程序会存在卡死情况，后台进程一直无法清空会导致问题，需要单独执行kill.sh或者pid.sh脚本清理后台进程
#目前对于每个指令前会进行辊筒状态信号重置

if [ $1 -eq 2 ]   #前上辊筒上料
then
   cd /mnt/
   source devel_isolated/setup.bash

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 3 ]  #前上辊筒出料 
then
   cd /mnt/
   source devel_isolated/setup.bash
    rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 4 ]   #前下辊筒进料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 5 ]   #前下辊筒出料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 6 ]   #后上辊筒进料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 7 ]   #后上辊筒出料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 8 ]   #后下辊筒进料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 9 ]   #后下辊筒出料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 10 ]   #辊筒全部进料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
elif [ $1 -eq 11 ]   #辊筒全部出料
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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

rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
  elif [ $1 -eq 12 ]   #重置辊筒状态
then
   cd /mnt/
   source devel_isolated/setup.bash
   rostopic pub /roller_dlayer_drow_command common_msgs/DLayerDRowRollerComm "frontUpper:
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
  #elif [ $1 -eq 13 ]   #清理后台进程，此项单独增加，目前未做测试，禁用
#then
  # DLROLLER_pid=`ps -ef | grep roller_command | grep -v grep | awk '{print $2}'`
 #echo "find result: $DLROLLER_pid "
#echo "robot" | sudo -S kill -9 $DLROLLER_pid & #清理后台进程，此项单独增加，目前未做测试，禁用
else
   echo "deli roller"
fi



