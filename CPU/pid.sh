mem_pid=`ps -ef | grep mem.sh | grep -v grep | awk '{print $2}'`
 echo "find result: $mem_pid "
echo "admin1234" | sudo -S kill -9 $mem_pid 
run_pid=`ps -ef | grep run.sh | grep -v grep | awk '{print $2}'`
 echo "find result: $run_pid "
echo "admin1234" | sudo -S kill -9 $run_pid 
wifi_pid=`ps -ef | grep wifi_tste | grep -v grep | awk '{print $2}'`
 echo "find result: $wifi_pid "
echo "admin1234" | sudo -S kill -9 $wifi_pid 
middle_pid=`ps -ef | grep middle_node | grep -v grep | awk '{print $2}'`
 echo "find result: $middle_pid"
echo "admin1234" | sudo -S kill -9 $middle_pid 
batt_pid=`ps -ef | grep batt.sh | grep -v grep | awk '{print $2}'`
 echo "find result: $batt_pid"
echo "admin1234" | sudo -S kill -9 $batt_pid 
