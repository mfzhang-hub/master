#!/bin/bash

# gnome-session-properties : gnome-terminal -x

if [ ! -d "~/lanxin/intel/front" ];then
	mkdir -p ~/lanxin/intel/front
	fi
if [ ! -d "~/lanxin/intel/back" ];then
	mkdir -p ~/lanxin/intel/back
	fi
if [ ! -d "~/lanxin/intel/front/wireshark" ];then
	mkdir -p ~/lanxin/intel/front/wireshark
	fi
if [ ! -d "~/lanxin/intel/back/wireshark" ];then
	mkdir -p ~/lanxin/intel/back/wireshark
	fi

cpu=~/lanxin/intel/cpu.log
memory=~/lanxin/intel/memory.log
ping_front=~/lanxin/intel/front/ping_front.log
ping_back=~/lanxin/intel/back/ping_back.log
rostopic_front=~/lanxin/intel/front/rostopic_front.log
rostopic_back=~/lanxin/intel/back/rostopic_back.log
rostopic_battery=~/lanxin/intel/battery.log
tcpdump_front=~/lanxin/intel/front/wireshark/front_shark.pcap
tcpdump_back=~/lanxin/intel/back/wireshark/back_shark.pcap
debug_name=~/lanxin/debug.log
shutdown_time=~/lanxin/shutdowm
version_logg=~/lanxin/version
explain=~/lanxin/Explain.md
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
echo '54mI5pys5Y+377yadjQuMC3lop7liqDkuobnu4jnq6/ovpPlhaVjdHJsK2Pml7bkvJrmiZPljbDorrDlvZXliLBkZWJ1Z+aWh+S7tu+8iOazqO+8muW7uuiuruW8gOacuuiHquW+queOr+W8gOWQr++8mmdub21lLXRlcm1pbmFsIC1477yJ44CC' > $version_logg
echo "
DEBUG: debug开关，当此参数改为true时则打印下述相关执行顺序日志；
DEBUG_executions_number： 此脚本循环打印时间（单位：秒-注意：计数是start1/end1每次循环界面打印耗时正常2秒），当达到配置的数值“Circulate”时，停止打印脚本且输出“---end---”信息；
max_size： 网络数据包的单包保存大小（单位：字节，10000000=10mb）；
max_size_all： 除网络数据包之外其他的日志文件单个保存大小（单位：字节，10000000=10mb）；
max_box： 网络数据包的所在文件夹下的循环保存数量，超过这个数值会自动覆盖最早生成的文件包（正常两个包的数据间隔是3分钟）；
max_ros： 系统./ros/log下面的rostopic开头的文件所在文件夹下的循环保存数量，因为下述脚本循环执行topic指令会导致很多数据包生成；
Start_Initial_Count： 计数器初始值-默认1，请勿修改；
End_Initial_Count： 计数器结束值-默认1，请勿修改；
Circulate： 当“DEBUG_executions_number”参数改为true时会自动调用此参数-参数配置*2为循环打印输出的时间点；
front_ip： 激光Ip-此处默认配置潜入式车型前激光ip;
back_ip: 激光Ip-此处默认配置潜入式车型后激光ip;
ctrl_c_flag： “ctrl+c”终端信号检测的判定值-默认0，请勿修改" > $explain
ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9
DEBUG=true
DEBUG_executions_number=false
max_size=10000000
max_size_all=10000000
max_box=200
max_ros=15
Start_Initial_Count=1 
End_Initial_Count=1 
Circulate=150000
front_ip=192.168.100.104
back_ip=192.168.100.108
ctrl_c_flag=0
echo $ttime >> $debug_name
echo "debug:$DEBUG" >> $debug_name
echo "DEBUG_executions_number:$DEBUG_executions_number" >> $debug_name
echo "max_size:$max_size" >> $debug_name
echo "max_size_all:$max_size_all" >> $debug_name
echo "max_box:$max_box" >> $debug_name
echo "max_ros:$max_ros" >> $debug_name
echo "Start_Initial_Count:$Start_Initial_Count" >> $debug_name
echo "End_Initial_Count:$End_Initial_Count" >> $debug_name
echo "Circulate:$Circulate" >> $debug_name
echo "front_ip:$front_ip" >> $debug_name
echo "back_ip:$back_ip" >> $debug_name
echo "ctrl_c_flag:$ctrl_c_flag" >> $debug_name
sleep 0.1
tcpdump -i eno1 src net $front_ip -w $tcpdump_front &
sleep 0.1
tcpdump -i eno1 src net $back_ip -w $tcpdump_back &
sleep 0.1
debug_cmd(){
    if $DEBUG;then
    eval "$@"
    fi
}

uptime -s >> $shutdown_time 

debug_cmd " echo "$ttime The execution is normal before the "while" loop." >> $debug_name "
    cd /mnt
    source devel_isolated/setup.bash 
debug_cmd "echo "$ttime The "source" instruction executes normally." >> $debug_name "

trap 'ctrl_c_flag=1' INT

while true
do
if [ $ctrl_c_flag -eq 1 ]; then
echo "$ttime The current terminal detects a ctrl+c shutdown signal. " >> $debug_name
break
fi

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
echo -e "\033[31m start$Start_Initial_Count \033[0m"
Start_Initial_Count=$((Start_Initial_Count+1))
debug_cmd " echo " $ttime "Start $Start_Initial_Count Cycles."" >> $debug_name "
debug_cmd " echo "$ttime "While" starts." >> $debug_name "
sleep 0.1
    echo $ttime >> $cpu 
    sensors  >> $cpu
    echo $ttime >> $memory
    free -m >> $memory
    echo $ttime >> $memory
    df -hl >> $memory
    echo $ttime >> $ping_front
    ping -c 1 -w 1 $front_ip >> $ping_front
    echo $ttime >> $ping_back
    ping -c 1 -w 1 $back_ip >> $ping_back
    echo $ttime >> $rostopic_front
    rostopic echo -n 1 /scan_front --noarr >> $rostopic_front &
    echo $ttime >> $rostopic_back 
    rostopic echo -n 1 /scan_back --noarr >> $rostopic_back &
    echo $ttime >> $rostopic_battery
    rostopic echo -n 1 /ztexing_node/dev_status  >> $rostopic_battery 
debug_cmd " echo "$ttime "If" is executed normally before starting." >> $debug_name "

size_cpu=$(du -b "$cpu" | awk '{print $1}') 
size_memory=$(du -b "$memory" | awk '{print $1}') 
size_ping_front=$(du -b "$ping_front" | awk '{print $1}') 
size_ping_back=$(du -b "$ping_back" | awk '{print $1}') 
size_rostopic_front=$(du -b "$rostopic_front" | awk '{print $1}') 
size_rostopic_back=$(du -b "$rostopic_back" | awk '{print $1}') 
size_rostopic_battery=$(du -b "$rostopic_battery" | awk '{print $1}') 
size_tcpdump_front=$(du -b "$tcpdump_front" | awk '{print $1}') 
size_tcpdump_back=$(du -b "$tcpdump_back" | awk '{print $1}') 
size_debug_name=$(du -b "$debug_name" | awk '{print $1}') 


debug_cmd " echo "$ttime The "du" query file size is normal." >> $debug_name "

if [ "$size_debug_name" -gt "$max_size_all" ];then
back_file0="$debug_name-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$debug_name" "$back_file0"
touch "$debug_name"
echo $ttime >> $debug_name
echo "debug:$DEBUG" >> $debug_name
echo "DEBUG_executions_number:$DEBUG_executions_number" >> $debug_name
echo "max_size:$max_size" >> $debug_name
echo "max_size_all:$max_size_all" >> $debug_name
echo "max_box:$max_box" >> $debug_name
echo "max_ros:$max_ros" >> $debug_name
echo "Start_Initial_Count:$Start_Initial_Count" >> $debug_name
echo "End_Initial_Count:$End_Initial_Count" >> $debug_name
echo "Circulate:$Circulate" >> $debug_name
echo "front_ip:$front_ip" >> $debug_name
echo "back_ip:$back_ip" >> $debug_name
echo "ctrl_c_flag:$ctrl_c_flag" >> $debug_name
fi

if [ "$size_cpu" -gt "$max_size_all" ];then
back_file1="$cpu-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$cpu" "$back_file1"
touch "$cpu"
fi

if [ "$size_memory" -gt "$max_size_all" ];then
back_file2="$memory-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$memory" "$back_file2"
touch "$memory"
fi

if [ "$size_ping_front" -gt "$max_size_all" ];then
back_file3="$ping_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_front" "$back_file3"
touch "$ping_front"
fi

if [ "$size_ping_back" -gt "$max_size_all" ];then
back_file4="$ping_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_back" "$back_file4"
touch "$ping_back"
fi

if [ "$size_rostopic_front" -gt "$max_size_all" ];then
back_file5="$rostopic_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_front" "$back_file5"
touch "$rostopic_front"
fi

if [ "$size_rostopic_back" -gt "$max_size_all" ];then
back_file6="$rostopic_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_back" "$back_file6"
touch "$rostopic_back"
fi

if [ "$size_rostopic_battery" -gt "$max_size_all" ];then
back_file7="$rostopic_battery-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_battery" "$back_file7"
touch "$rostopic_battery"
fi

debug_cmd " echo "$ttime "IF" first cycle completed." >> $debug_name "

if [ "$size_tcpdump_front" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime The kill 104 process is complete." >> $debug_name "
back_file9="$tcpdump_front-$(date +"%Y-%m-%d-%H-%M-%S")" 
mv "$tcpdump_front" "$back_file9"
touch "$tcpdump_front" 
tcpdump -i eno1 src net $front_ip -w $tcpdump_front &
debug_cmd " echo "$ttime Tcpdump 104 execution begins." >> $debug_name "
fi
if [ "$size_tcpdump_back" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime The kill 108 process is complete." >> $debug_name "
back_file8="$tcpdump_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_back" "$back_file8"
touch "$tcpdump_back" 
tcpdump -i eno1 src net $back_ip -w $tcpdump_back &
debug_cmd " echo "$ttime Tcpdump 108 execution begins." >> $debug_name "
fi
debug_cmd " echo "$ttime The second cycle of "IF" is completed." >> $debug_name "
count1=$(ls -lt ~/lanxin/intel/back/wireshark/ | grep "^-" | wc -l)
count2=$(ls -lt ~/lanxin/intel/front/wireshark/ | grep "^-" | wc -l)
count3=$(ls -lt ~/.ros/log/rostopic_*.log | grep "^-" | wc -l)
debug_cmd " echo "$ttime "Count" execution completed." >> $debug_name "
if [ "$count1" -gt "$max_box" ];then
 old_count1=$(ls -t ~/lanxin/intel/back/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count1 &
fi
debug_cmd " echo "$ttime "The execution of the" count1 "circular query instruction has completed."." >> $debug_name "
if [ "$count2" -gt "$max_box" ];then
 old_count2=$(ls -t ~/lanxin/intel/front/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count2 &
fi
debug_cmd " echo "$ttime "The execution of the" count2 "circular query instruction has completed."." >> $debug_name "
if [ "$count3" -gt "$max_ros" ];then
 old_count3=$(ls -t ~/.ros/log/rostopic_*.log | tail -n +$max_ros | head -n -1)
xargs rm $old_count3 &
fi
debug_cmd " echo "$ttime "The execution of the" count3 "circular query instruction has completed."." >> $debug_name "
echo -e "\033[32m end$End_Initial_Count \033[0m"
End_Initial_Count=$((End_Initial_Count+1))
debug_cmd " echo " $ttime "End $End_Initial_Count Cycles."" >> $debug_name "
if [ "$DEBUG_executions_number" = true ]; then
if [[ $End_Initial_Count -ge $Circulate ]];then 
ps -ef | grep "tcpdump -i eno1 src net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
ps -ef | grep "tcpdump -i eno1 src net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime End printing when the number of cycles reaches the judgment threshold." >> $debug_name "
debug_cmd " echo "$ttime ------------------------------------------------------------END-------------------------------------------------------------------" >> $debug_name "
kill -s SIGINT $$
break
fi
fi

done
trap - INT
