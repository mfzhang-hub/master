#!/bin/bash

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
version_logg=~/lanxin/version
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
echo '54mI5pys5Y+377yadjMuMC3mm7TmlrDkuoblkITpobnpmIjlgLzvvIwxMG1i5LiA5Liq54mI5pys5YyF55Sf5oiQ5LiA5Liq5pWw5o2u5YyF6Ieq5Yqo6KaG55uW5LmL5YmN5pWw5o2u77yM5pyA5pep5LiA5LiqcGNhcOWMheS4jeS8muWIoOmZpOOAguaWsOWinuaYr+WQpuW8gOWQr+W+queOr+asoeaVsOajgOa1i++8jOm7mOiupOWFs+mXreasoeaVsOajgOa1i++8jOWFqOWxgOaXoOe6v+aJk+WNsOOAgg==' > $version_logg
ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9
DEBUG=true
DEBUG_executions_number=false
max_size=10000000
max_size_all=10000000
max_box=100
max_ros=15
Start_Initial_Count=1 
End_Initial_Count=1 
Circulate=150000
front_ip=192.168.100.104
back_ip=192.168.100.104
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

debug_cmd " echo "$ttime The execution is normal before the "while" loop." >> $debug_name "
    cd /mnt
    source devel_isolated/setup.bash &
debug_cmd "echo "$ttime The "source" instruction executes normally." >> $debug_name "

while true
do
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
    ping -c 1 $front_ip >> $ping_front
    echo $ttime >> $ping_back
    ping -c 1 $back_ip >> $ping_back
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

if [ "$size_tcpdump_front" -gt "$max_size" ];then
back_file8="$tcpdump_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_front" "$back_file8"
touch "$tcpdump_front" &
fi

if [ "$size_tcpdump_back" -gt "$max_size" ];then
back_file9="$tcpdump_back-$(date +"%Y-%m-%d-%H-%M-%S")" 
mv "$tcpdump_back" "$back_file9"
touch "$tcpdump_back" &
fi

debug_cmd " echo "$ttime "IF" first cycle completed." >> $debug_name "

if [ "$size_tcpdump_front" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime The kill 104 process is complete." >> $debug_name "
tcpdump -i eno1 src net $front_ip -w $tcpdump_front &
debug_cmd " echo "$ttime Tcpdump 104 execution begins." >> $debug_name "
fi
if [ "$size_tcpdump_back" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime The kill 108 process is complete." >> $debug_name "
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
