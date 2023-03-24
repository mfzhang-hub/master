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

echo '54mI5pys5Y+377yadjEuMA==' > ~/lanxin/version

    ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9

max_size=10000000
max_size_all=10000000
max_box=100
max_ros=15

sleep 0.1
tcpdump -i eno1 src net 192.168.100.104 -w ~/lanxin/intel/front/wireshark/front_shark.pcap &
sleep 0.1
tcpdump -i eno1 src net 192.168.100.108 -w ~/lanxin/intel/back/wireshark/back_shark.pcap &
sleep 0.1

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

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
echo $ttime >> ~/lanxin/debug.log
echo "The execution is normal before the "while" loop." >> ~/lanxin/debug.log

    cd /mnt
    source devel_isolated/setup.bash 

echo $ttime >> ~/lanxin/debug.log
echo "The "source" instruction executes normally." >> ~/lanxin/debug.log
i=1
o=1
while true
do
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
echo -e "\033[31m start$i \033[0m"
i=$((i+1))
echo $ttime >> ~/lanxin/debug.log
echo ""While" starts." >> ~/lanxin/debug.log
sleep 0.1

    echo $ttime >> ~/lanxin/intel/cpu.log 
    sensors  >> ~/lanxin/intel/cpu.log 
    sleep 0.1
    echo $ttime >> ~/lanxin/intel/memory.log 
    free -m >> ~/lanxin/intel/memory.log 
    sleep 0.1
    echo $ttime >> ~/lanxin/intel/memory.log 
    df -hl >> ~/lanxin/intel/memory.log 
    sleep 0.1
    echo $ttime >> ~/lanxin/intel/front/ping_front.log 
    ping -c 1 192.168.100.104 >> ~/lanxin/intel/front/ping_front.log 
    sleep 0.01
    echo $ttime >> ~/lanxin/intel/back/ping_back.log 
    ping -c 1 192.168.100.108 >> ~/lanxin/intel/back/ping_back.log 
    sleep 0.01

    echo $ttime >> ~/lanxin/intel/front/rostopic_front.log 
    rostopic echo -n 1 /scan_front --noarr >> ~/lanxin/intel/front/rostopic_front.log &
    sleep 0.01
    echo $ttime >> ~/lanxin/intel/back/rostopic_back.log 
    rostopic echo -n 1 /scan_back --noarr >> ~/lanxin/intel/back/rostopic_back.log &
    sleep 0.01

    echo $ttime >> ~/lanxin/intel/battery.log 
    rostopic echo -n 1 /ztexing_node/dev_status  >> ~/lanxin/intel/battery.log 

echo $ttime >> ~/lanxin/debug.log
echo ""If" is executed normally before starting." >> ~/lanxin/debug.log

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


echo $ttime >> ~/lanxin/debug.log
echo "The "du" query file size is normal." >> ~/lanxin/debug.log

if [ "$size_debug_name" -gt "$max_size_all" ];then
back_file0="$debug_name-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$debug_name" "$back_file0"
touch "$debug_name"
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
#ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9 &
touch "$tcpdump_front" &
fi

if [ "$size_tcpdump_back" -gt "$max_size" ];then
back_file9="$tcpdump_back-$(date +"%Y-%m-%d-%H-%M-%S")" 
mv "$tcpdump_back" "$back_file9"
#ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9 &
touch "$tcpdump_back" &
fi

echo $ttime >> ~/lanxin/debug.log
echo ""IF" first cycle completed." >> ~/lanxin/debug.log

if [ "$size_tcpdump_front" -gt "$max_size" ];then
echo $ttime >> ~/lanxin/debug.log
ps -ef | grep "tcpdump -i eno1 src net 192.168.100.104" |grep -v grep |awk '{print $2}'| xargs kill -9 
echo "The kill 104 process is complete." >> ~/lanxin/debug.log
sleep 1
echo $ttime >> ~/lanxin/debug.log
tcpdump -i eno1 src net 192.168.100.104 -w ~/lanxin/intel/front/wireshark/front_shark.pcap &
echo "Tcpdump 104 execution begins." >> ~/lanxin/debug.log
fi

if [ "$size_tcpdump_back" -gt "$max_size" ];then
echo $ttime >> ~/lanxin/debug.log
ps -ef | grep "tcpdump -i eno1 src net 192.168.100.108" |grep -v grep |awk '{print $2}'| xargs kill -9 
echo "The kill 108 process is complete." >> ~/lanxin/debug.log
sleep 1
echo $ttime >> ~/lanxin/debug.log
tcpdump -i eno1 src net 192.168.100.108 -w ~/lanxin/intel/back/wireshark/back_shark.pcap &
echo "Tcpdump 108 execution begins." >> ~/lanxin/debug.log
fi

echo $ttime >> ~/lanxin/debug.log
echo "The second cycle of "IF" is completed." >> ~/lanxin/debug.log

count1=$(ls -lt ~/lanxin/intel/back/wireshark/ | grep "^-" | wc -l)
count2=$(ls -lt ~/lanxin/intel/front/wireshark/ | grep "^-" | wc -l)
count3=$(ls -lt ~/.ros/log/rostopic_*.log | grep "^-" | wc -l)

echo $ttime >> ~/lanxin/debug.log
echo ""Count" execution completed." >> ~/lanxin/debug.log

if [ "$count1" -gt "$max_box" ];then
 old_count1=$(ls -t ~/lanxin/intel/back/wireshark/* | tail -n +10 | head -n -1)
xargs rm $old_count1 &
fi

echo $ttime >> ~/lanxin/debug.log
echo ""The execution of the" count1 "circular query instruction has completed."." >> ~/lanxin/debug.log 

if [ "$count2" -gt "$max_box" ];then
 old_count2=$(ls -t ~/lanxin/intel/front/wireshark/* | tail -n +10 | head -n -1)
xargs rm $old_count2 &
fi

echo $ttime >> ~/lanxin/debug.log
echo ""The execution of the" count2 "circular query instruction has completed."." >> ~/lanxin/debug.log

if [ "$count3" -gt "$max_ros" ];then
 old_count3=$(ls -t ~/.ros/log/rostopic_*.log | tail -n +15 | head -n -1)
xargs rm $old_count3 &
fi

echo $ttime >> ~/lanxin/debug.log
echo ""The execution of the" count3 "circular query instruction has completed."." >> ~/lanxin/debug.log

echo -e "\033[32m end$o \033[0m"
o=$((o+1))

done
