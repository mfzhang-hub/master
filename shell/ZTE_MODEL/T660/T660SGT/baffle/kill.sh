sroller_pid=`ps -ef | grep cmd_roller | grep -v grep | awk '{print $2}'`
 echo "find result: $sroller_pid "
echo "robot" | sudo -S kill -9 $sroller_pid 
