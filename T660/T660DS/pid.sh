lxcamera_pid=`ps -ef | grep lx_camera_up | grep -v grep | awk '{print $2}'`
 echo "find result: $mem_pid "
echo "robot" | sudo -S kill -9 $lxcamera_pid 
jackcommand_pid=`ps -ef | grep jack_command | grep -v grep | awk '{print $2}'`
 echo "find result: $jackcommand_pid "
echo "robot" | sudo -S kill -9 $jackcommand_pid 