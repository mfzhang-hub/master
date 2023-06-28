Convenient_instructions:
{
./mini-zte.sh1   电池充电及整车信息
./mini-zte.sh2   imu数据显示
./mini-zte.sh3   imu数据校准
./mini-zte.sh4   左前激光数据打印
./mini-zte.sh5   右前激光数据打印
./mini-zte.sh6   里程计数据查看
./mini-zte.sh7   前方realsense相机数据查看
./mini-zte.sh8   维感相机rgb数据查看
./mini-zte.sh9   维感相机depth数据查看
./mini-zte.sh11  电源按键检测
./mini-zte.sh12  工控机关机测试
./mini-zte.sh13  打开继电器
./mini-zte.sh14  关闭继电器
./mini-zte.sh22  叉根避障激光数据打印
./mini-zte.sh23  顶部导航激光数据打印
./mini-zte.sh24  左叉臂限位光电触发检测
./mini-zte.sh25  右叉臂限位光电触发检测
./mini-zte.sh26  叉臂高度获取
./mini-zte.sh27  叉臂高度回归零点
./mini-zte.sh28  叉臂高度升至2300mm（2.3m叉车高度使用）
./mini-zte.sh29  叉臂高度升至2500mm（2.5m叉车高度使用）
./mini-zte.sh30  叉臂高度升至2200mm（通用测试程序限制2200高度）
}

The following instructions shall be executed before execution:      //执行下述指令前需执行：
{
   cd /mnt/
   source devel_isolated/setup.bash
}

The camera needs to be turned on manually before the VZense camera data is printed. The command is as follows:     //维感相机数据打印前需先手动打开相机，指令如下：
{
   roslaunch vzense_camera vzense_camera.launch
}

Manual_command:
{
rostopic echo /ztexing_node/dev_status                                    电池充电及整车信息
rostopic echo /mobile_base/sensors/imu_data                               imu数据显示
rostopic pub /ztexing_node/imu_cali std_msgs/Bool "data: true"            imu数据校准
rostopic echo /scan_front                                                 左前激光数据打印
rostopic echo /scan_back                                                  右前激光数据打印
rostopic echo /encoder_odom                                               里程计数据查看
rostopic echo /high_realsense_scan                                        前方realsense相机数据查看
rostopic echo /Vzense/color/image_raw                                     维感相机rgb数据查看
rostopic echo /Vzense/aligned_depth_to_color/image_raw                    维感相机depth数据查看
rostopic echo /ztexing_node/power_trigger                                 电源按键检测
rostopic pub /ztexing_node/shutdown_stm32 std_msgs/Bool "data: true"      工控机关机测试
rostopic pub /charge_command "1"                                          打开继电器
rostopic pub /charge_command "0"                                          关闭继电器
rostopic echo /scan_back_forklift                                         叉根避障激光数据打印
rostopic echo /scan_top                                                   顶部导航激光数据打印
rosparam get /forklift/left_arm_cargo                                     左叉臂限位光电触发检测
rosparam get /forklift/right_arm_cargo                                    右叉臂限位光电触发检测
rosparam get /forklift/height                                             叉臂高度获取
rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 0"      叉臂高度回归零点
rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2300"   叉臂高度升至2300mm（2.3m叉车高度使用）
rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2500"   叉臂高度升至2500mm（2.5m叉车高度使用）
rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: 2200"   叉臂高度升至2400mm（通用测试程序限制2400高度，软件限制高度）
}