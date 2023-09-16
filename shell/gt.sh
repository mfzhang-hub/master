#!/bin/bash

cd /mnt
cd /mnt && source devel_isolated/setup.bash

Start_Initial_Count=1 
End_Initial_Count=1 
start_start=$Start_Initial_Count
end_end=$End_Initial_Count

while true 
do
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

echo -e "\033[31m start$Start_Initial_Count \033[0m"
Start_Initial_Count=$((Start_Initial_Count+1))

rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 8
cargo_size: 500
roller_speed: 0.0
roller_height: 500"  & #回到500mm位置

tail -f /root/.ros/log/zte/ztexing_node/ lgrep "cargo size" >> ~GT.log &

sleep 15

rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 2
cargo_size: 500
roller_speed: 0.0
roller_height: 500"  & #暂时500执行任务

tail -f /root/.ros/log/zte/ztexing_node/ lgrep "cargo size" >> ~GT.log &

sleep 15

rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 8
cargo_size: 152
roller_speed: 0.0
roller_height: 500"  & #回到152mm位置

tail -f /root/.ros/log/zte/ztexing_node/ lgrep "cargo size" >> ~GT.log &

sleep 15

rostopic pub -r 1 /roller_command common_msgs/Roller "roller_task: 2
cargo_size: 152
roller_speed: 0.0
roller_height: 500"  & #暂时152执行任务

tail -f /root/.ros/log/zte/ztexing_node/ lgrep "cargo size" >> ~GT.log &

sleep 15


echo -e "\033[32m end$End_Initial_Count \033[0m"
End_Initial_Count=$((End_Initial_Count+1))

done