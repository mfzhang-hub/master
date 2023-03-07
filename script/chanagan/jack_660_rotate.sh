#!/bin/bash

sleep 10

jackcommand_pid=`ps -ef | grep jack_command | grep -v grep | awk '{print $2}'`
 echo "find result: $jackcommand_pid "
echo "robot" | sudo -S kill -9 $jackcommand_pid 

sleep 2

cd /mnt
source devel_isolated/setup.bash

sleep 5

rostopic pub /jack_command std_msgs/UInt8 "data: 0" &

sleep 13

rostopic pub /jack_command std_msgs/UInt8 "data: 3" &

sleep 15

jackcommand_pid=`ps -ef | grep jack_command | grep -v grep | awk '{print $2}'`
 echo "find result: $jackcommand_pid "
echo "robot" | sudo -S kill -9 $jackcommand_pid 

sleep 4

rostopic pub -r 10 /mobile_base/commands/recover_velocity geometry_msgs/Twist "linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.5
  y: 0.0
  z: 0.0" &

  sleep 10

geometry_pid=`ps -ef | grep geometry_msgs | grep -v grep | awk '{print $2}'`
 echo "find result: $geometry_pid "
echo "robot" | sudo -S kill -9 $geometry_pid 

sleep 1

rostopic pub /jack_command std_msgs/UInt8 "data: 0" &
sleep 10

sleep 60

cd /root

sh jack_660.sh



