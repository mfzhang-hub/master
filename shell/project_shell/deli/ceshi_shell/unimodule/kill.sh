DLROLLER_pid=`ps -ef | grep roller_command | grep -v grep | awk '{print $2}'`
 echo "find result: $DLROLLER_pid "
echo "robot" | sudo -S kill -9 $DLROLLER_pid
