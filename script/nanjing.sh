#!/bin/bash

# gnome-session-properties : gnome-terminal -x

#全局激光器配置开关

front_switch=1 #前激光配置开关；也可用作叉车左前激光配置，但需修改此处绑定的ip地址！！！
back_switch=1 #后激光配置开关；也可用作叉车右前激光配置，但需修改此处绑定的ip地址！！！
forklift_switch=0 #叉根激光配置开关
top_switch=0 #叉车顶部激光配置开关
forklift_scan_switch=0 #叉车蓝海激光配置开关
2T_Central_front_laser=0 #2T全向AGV前中激光配置开关，暂未维护！！！
2T_Central_back_laser=0 ##2T全向AGV后中激光配置开关，暂未维护！！！


#文件夹创建判断

if [ $front_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/front/ping" ];then
	mkdir -p ~/lanxin/intel/front/ping
	fi
fi

if [ $back_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/back/ping" ];then
	mkdir -p ~/lanxin/intel/back/ping
	fi
fi

if [ $front_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/front/wireshark" ];then
	mkdir -p ~/lanxin/intel/front/wireshark
	fi
fi

if [ $back_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/back/wireshark" ];then
	mkdir -p ~/lanxin/intel/back/wireshark
	fi
fi

if [ ! -d "~/lanxin/debug" ];then
	mkdir -p ~/lanxin/debug
	fi

if [ ! -d "~/lanxin/intel/computer/memory" ];then
	mkdir -p ~/lanxin/intel/computer/memory
	fi

if [ $front_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/front/rostopic" ];then
	mkdir -p ~/lanxin/intel/front/rostopic
	fi
fi

if [ $back_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/back/rostopic" ];then
	mkdir -p ~/lanxin/intel/back/rostopic
	fi
fi

if [ ! -d "~/lanxin/intel/computer/cpu" ];then
	mkdir -p ~/lanxin/intel/computer/cpu
	fi

if [ ! -d "~/lanxin/intel/computer/battery" ];then
	mkdir -p ~/lanxin/intel/computer/battery
	fi

if [ $forklift_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/forklift/ping" ];then
	mkdir -p ~/lanxin/intel/forklift/ping
	fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/forklift/rostopic" ];then
	mkdir -p ~/lanxin/intel/forklift/rostopic
	fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/forklift/wireshark" ];then
	mkdir -p ~/lanxin/intel/forklift/wireshark
	fi
fi

if [ $top_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/top/ping" ];then
	mkdir -p ~/lanxin/intel/top/ping
	fi
fi

if [ $top_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/top/rostopic" ];then
	mkdir -p ~/lanxin/intel/top/rostopic
	fi
fi

if [ $top_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/top/wireshark" ];then
	mkdir -p ~/lanxin/intel/top/wireshark
	fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/forklift_scan/rostopic" ];then
	mkdir -p ~/lanxin/intel/forklift_scan/rostopic
	fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/forklift_scan/wireshark" ];then
	mkdir -p ~/lanxin/intel/forklift_scan/wireshark
	fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/forklift_scan/ping" ];then
	mkdir -p ~/lanxin/intel/forklift_scan/ping
	fi
fi
sleep 1

#文件路径定义

cpu=~/lanxin/intel/computer/cpu/cpu.log
memory=~/lanxin/intel/computer/memory/memory.log
ping_front=~/lanxin/intel/front/ping/ping_front.log
ping_back=~/lanxin/intel/back/ping/ping_back.log
rostopic_front=~/lanxin/intel/front/rostopic/rostopic_front.log
rostopic_back=~/lanxin/intel/back/rostopic/rostopic_back.log
rostopic_battery=~/lanxin/intel/computer/battery/battery.log
tcpdump_front=~/lanxin/intel/front/wireshark/front_shark.pcap
tcpdump_back=~/lanxin/intel/back/wireshark/back_shark.pcap
debug_name=~/lanxin/debug/debug.log
shutdown_time=~/lanxin/shutdowm
version_logg=~/lanxin/version
explain=~/lanxin/Explain.md
ping_forklift=~/lanxin/intel/forklift/ping/ping_forklift.log
rostopic_forklift=~/lanxin/intel/forklift/rostopic/rostopic_forklift.log
tcpdump_forklift=~/lanxin/intel/forklift/wireshark/forklift_shark.pcap
ping_top=~/lanxin/intel/top/ping/ping_top.log
rostopic_top=~/lanxin/intel/top/rostopic/rostopic_top.log
tcpdump_top=~/lanxin/intel/top/wireshark/top_shark.pcap
ping_forklift_scan=~/lanxin/intel/forklift_scan/ping/ping_forklift_scan.log
rostopic_forklift_scan=~/lanxin/intel/forklift_scan/rostopic/rostopic_forklift_scan.log
tcpdump_forklift_scan=~/lanxin/intel/forklift_scan/wireshark/forklift_scan_shark.pcap

#调试开关
debug_cmd(){
    if $DEBUG;then
    eval "$@"
    fi
}

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

#判断tcpdump执行文件是否存在，存在则重命名防止pcap文件信息覆盖

if [ $front_switch -eq 1 ]; then
if [ -f "$tcpdump_front" ]; then
new_name1="$tcpdump_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_front" "$new_name1"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_front”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_front”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

if [ $back_switch -eq 1 ]; then
if [ -f "$tcpdump_back" ]; then
new_name2="$tcpdump_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_back" "$new_name2"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_back”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_back”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ -f "$tcpdump_forklift" ]; then
new_name3="$tcpdump_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_forklift" "$new_name3"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_forklift”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_forklift”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ -f "$tcpdump_top" ]; then
new_name4="$tcpdump_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_top" "$new_name4"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_top”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_top”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ -f "$tcpdump_forklift_scan" ]; then
new_name5="$tcpdump_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_forklift_scan" "$new_name5"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_forklift_scan”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_forklift_scan”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

#版本号输出

echo '54mI5pys5Y+377yadjgt5aKe5Yqg5Y+J6L2m5bem5Y+z5r+A5YWJ5Zmo' > $version_logg

#配置开关说明

echo "
DEBUG: debug开关，当此参数改为true时则打印下述相关执行顺序日志；
DEBUG_executions_number： 此脚本循环打印时间（单位：秒-注意：计数是start1/end1每次循环界面打印耗时正常2秒），当达到配置的数值“Circulate”时，停止打印脚本且输出“---end---”信息；
max_size： 网络数据包的单包保存大小（单位：字节，10000000=10mb）；
max_size_all： 除网络数据包之外其他的日志文件单个保存大小（单位：字节，10000000=10mb）；
max_box： 网络数据包的所在文件夹下的循环保存数量，超过这个数值会自动覆盖最早生成的文件包（正常两个包的数据间隔是3分钟）；
max_ros： 系统./ros/log下面的rostopic开头的文件所在文件夹下的循环保存数量，因为下述脚本循环执行topic指令会导致很多数据包生成；
max_debug： 作为debug日志及computer的相关日志的存储限制数量参数；
Start_Initial_Count： 计数器初始值-默认1，请勿修改；
End_Initial_Count： 计数器结束值-默认1，请勿修改；
Circulate： 当“DEBUG_executions_number”参数改为true时会自动调用此参数-参数配置*2为循环打印输出的时间点；
front_ip： 激光Ip-此处默认配置潜入式车型前激光ip;
back_ip: 激光Ip-此处默认配置潜入式车型后激光ip;
forklift_ip：激光Ip-此处默认配置叉车叉根激光ip;
top_ip： 激光Ip-此处默认配置叉车顶部导航激光ip;
forklift_scan_ip： 激光Ip-此处默认配置叉车叉尖蓝海激光ip;
ctrl_c_flag： “ctrl+c”终端信号检测的判定值-默认0，请勿修改;
front_switch：“前激光所有日志打印开关，当开关为1时则启用前激光相关的配置文件，当为0时则关闭执行-默认1；
back_switch：“潜入式车型后激光/叉车右前激光所有日志打印开关，当开关为1时则启用潜入式车型后激光/叉车右前激光相关的配置文件，当为0时则关闭执行-默认1”；
forklift_switch：“叉车叉根激光所有日志打印开关，当开关为1时则启用叉车叉根激光相关的配置文件，当为0时则关闭执行-默认0”
top_switch： “叉车顶部导航激光所有日志打印开关，当开关为1时则启用叉车顶部导航激光相关的配置文件，当为0时则关闭执行-默认0”
forklift_scan_switch： “叉车蓝海激光所有日志打印开关，当开关为1时则启用叉车蓝海激光相关的配置文件，当为0时则关闭执行-默认0” " > $explain

#终止tcpdump进程

ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9

#功能开关

DEBUG=true
DEBUG_executions_number=false
max_size=10000000
max_size_all=10000000
max_box=200
max_ros=15
max_debug=50
Start_Initial_Count=1 
End_Initial_Count=1 
Circulate=150000
start_start=$Start_Initial_Count
end_end=$End_Initial_Count

if [ $front_switch -eq 1 ]; then
front_ip=192.168.100.104
fi

if [ $back_switch -eq 1 ]; then
back_ip=192.168.100.108
fi

if [ $forklift_switch -eq 1 ]; then
forklift_ip=192.168.100.102
fi

if [ $top_switch -eq 1 ]; then
top_ip=192.168.100.109
fi

if [ $forklift_scan_switch -eq 1 ]; then
forklift_scan_ip=192.168.100.108
fi

ctrl_c_flag=0

#调试信息配置输出

echo $ttime >> $debug_name
echo "debug:$DEBUG" >> $debug_name
echo "DEBUG_executions_number:$DEBUG_executions_number" >> $debug_name
echo "max_size:$max_size" >> $debug_name
echo "max_size_all:$max_size_all" >> $debug_name
echo "max_box:$max_box" >> $debug_name
echo "max_ros:$max_ros" >> $debug_name
echo "Start_Initial_Count:$start_start" >> $debug_name
echo "End_Initial_Count:$end_end" >> $debug_name
echo "Start_Initial_Count_initial:$Start_Initial_Count" >> $debug_name
echo "End_Initial_Count_initial:$End_Initial_Count" >> $debug_name
echo "Circulate:$Circulate" >> $debug_name
echo "ctrl_c_flag:$ctrl_c_flag" >> $debug_name
echo "max_debug:$max_debug" >> $debug_name

if [ $front_switch -eq 1 ]; then
echo "front_switch:$front_switch" >> $debug_name
fi

if [ $back_switch -eq 1 ]; then
echo "back_switch:$back_switch" >> $debug_name
fi

if [ $forklift_switch -eq 1 ]; then
echo "forklift_switch:$forklift_switch" >> $debug_name
fi

if [ $top_switch -eq 1 ]; then
echo "top_switch:$top_switch" >> $debug_name
fi

if [ $front_switch -eq 1 ]; then
echo "front_ip:$front_ip" >> $debug_name
fi

if [ $back_switch -eq 1 ]; then
echo "back_ip:$back_ip" >> $debug_name
fi

if [ $forklift_switch -eq 1 ]; then
echo "forklift_ip:$forklift_ip" >> $debug_name
sleep 0.1
fi

if [ $top_switch -eq 1 ]; then
echo "top_ip:$top_ip" >> $debug_name
sleep 0.1
fi

if [ $forklift_scan_switch -eq 1 ]; then
echo "forklift_scan_ip:$forklift_scan_ip" >> $debug_name
sleep 0.1
fi

#开始网络数据包捕获

if [ $front_switch -eq 1 ]; then
tcpdump -i eno1 src net $front_ip -w $tcpdump_front &
sleep 0.1
fi

if [ $back_switch -eq 1 ]; then
tcpdump -i eno1 src net $back_ip -w $tcpdump_back &
fi

if [ $forklift_switch -eq 1 ]; then
tcpdump -i eno1 src net $forklift_ip -w $tcpdump_forklift &
fi

if [ $top_switch -eq 1 ]; then
tcpdump -i eno1 src net $top_ip -w $tcpdump_top &
fi

if [ $forklift_scan_switch -eq 1 ]; then
tcpdump -i eno1 src net $forklift_scan_ip -w $tcpdump_forklift_scan &
fi

sleep 0.1

#启动时间查询

uptime -s >> $shutdown_time 
debug_cmd " echo "$ttime 读取系统关机时间完毕。" >> $debug_name "

trap 'ctrl_c_flag=1' INT

#循环开始

while true
do

debug_cmd " echo "$ttime 开始进入循环程序" >> $debug_name "

    cd /mnt
    source devel_isolated/setup.bash 

debug_cmd " echo "$ttime “source”指令执行完毕。" >> $debug_name "

if [ $ctrl_c_flag -eq 1 ]; then
echo "$ttime 检测到ctrl+c关闭打印信号，请确认是否人为！！！ " >> $debug_name
break
fi

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

echo -e "\033[31m start$Start_Initial_Count \033[0m"
Start_Initial_Count=$((Start_Initial_Count+1))

debug_cmd " echo " $ttime "Start $Start_Initial_Count Cycles."" >> $debug_name "
debug_cmd " echo "$ttime "" 数据循环打印开始！！！" >> $debug_name "

#系统信息打印

sleep 0.1
    echo $ttime >> $cpu 
    sensors  >> $cpu

    echo $ttime >> $memory
    free -m >> $memory

    echo $ttime >> $memory
    df -hl >> $memory

#网络延迟和上层数据打印

if [ $front_switch -eq 1 ]; then
    echo $ttime >> $ping_front
    ping -c 1 -w 1 $front_ip >> $ping_front
fi

if [ $back_switch -eq 1 ]; then
    echo $ttime >> $ping_back
    ping -c 1 -w 1 $back_ip >> $ping_back
fi

if [ $front_switch -eq 1 ]; then
    echo $ttime >> $rostopic_front
    rostopic echo -n 1 /scan_front --noarr >> $rostopic_front &
fi

if [ $back_switch -eq 1 ]; then
    echo $ttime >> $rostopic_back 
    rostopic echo -n 1 /scan_back --noarr >> $rostopic_back &
fi

if [ $forklift_switch -eq 1 ]; then
    echo $ttime >> $ping_forklift
    ping -c 1 -w 1 $forklift_ip >> $ping_forklift
fi

if [ $forklift_switch -eq 1 ]; then
    echo $ttime >> $rostopic_forklift
    rostopic echo -n 1 /scan_back_forklift --noarr >> $rostopic_forklift &
fi

if [ $top_switch -eq 1 ]; then
    echo $ttime >> $ping_top
    ping -c 1 -w 1 $top_ip >> $ping_top
fi

if [ $top_switch -eq 1 ]; then
    echo $ttime >> $rostopic_top
    rostopic echo -n 1 /scan_top --noarr >> $rostopic_top &
fi

if [ $forklift_scan_switch -eq 1 ]; then
    echo $ttime >> $ping_forklift_scan
    ping -c 1 -w 1 $top_ip >> $ping_forklift_scan
fi

if [ $forklift_scan_switch -eq 1 ]; then
    echo $ttime >> $rostopic_forklift_scan
    rostopic echo -n 1 /lidarl/forklift_scan --noarr >> $rostopic_forklift_scan &
fi

    echo $ttime >> $rostopic_battery
    rostopic echo -n 1 /ztexing_node/dev_status  >> $rostopic_battery 
debug_cmd " echo "$ttime topic/ping/及系统日志打印完成" >> $debug_name "

#“Du”查询定义

size_cpu=$(du -b "$cpu" | awk '{print $1}') 
debug_cmd " echo "$ttime cpu系统日志保存文件大小查询完毕。" >> $debug_name "

size_memory=$(du -b "$memory" | awk '{print $1}') 
debug_cmd " echo "$ttime 系统内存日志文件大小查询完毕。" >> $debug_name "

if [ $front_switch -eq 1 ]; then
size_ping_front=$(du -b "$ping_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 网络延迟日志文件大小查询完毕。" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_ping_back=$(du -b "$ping_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 网络延迟日志文件大小查询完毕。" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
size_rostopic_front=$(du -b "$rostopic_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光topic原始数据日志文件大小查询完毕。" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_rostopic_back=$(du -b "$rostopic_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光topic原始数据日志文件大小查询完毕。" >> $debug_name "
fi

size_rostopic_battery=$(du -b "$rostopic_battery" | awk '{print $1}') 
debug_cmd " echo "$ttime 电池状态日志文件大小查询完毕。" >> $debug_name "

if [ $front_switch -eq 1 ]; then
size_tcpdump_front=$(du -b "$tcpdump_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光网络抓包数据包大小查询完毕。" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_tcpdump_back=$(du -b "$tcpdump_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光网络抓包数据包大小查询完毕。" >> $debug_name "
fi

debug_cmd " size_debug_name=$(du -b "$debug_name" | awk '{print $1}') "
debug_cmd " echo "$ttime 调试日志文件大小查询完毕。" >> $debug_name "

if [ $forklift_switch -eq 1 ]; then
size_ping_forklift=$(du -b "$ping_forklift" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 网络延迟日志文件大小查询完毕。" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
size_rostopic_forklift=$(du -b "$rostopic_forklift" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光topic原始数据日志文件大小查询完毕。" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
size_tcpdump_forklift=$(du -b "$tcpdump_forklift" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光网络抓包数据包大小查询完毕。" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_ping_top=$(du -b "$ping_top" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 网络延迟日志文件大小查询完毕。" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_rostopic_top=$(du -b "$rostopic_top" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光topic原始数据日志文件大小查询完毕。" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_tcpdump_top=$(du -b "$tcpdump_top" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光网络抓包数据包大小查询完毕。" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_ping_forklift_scan=$(du -b "$ping_forklift_scan" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 网络延迟日志文件大小查询完毕。" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_rostopic_forklift_scan=$(du -b "$rostopic_forklift_scan" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光topic原始数据日志文件大小查询完毕。" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_tcpdump_forklift_scan=$(du -b "$tcpdump_forklift_scan" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光网络抓包数据包大小查询完毕。" >> $debug_name "
fi


debug_cmd " echo "$ttime 查询日志文件大小流程执行循环已完毕" >> $debug_name "

#Determine whether the file exceeds the configured size and perform related operations

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
echo "Start_Initial_Count_initial:$start_start" >> $debug_name
echo "End_Initial_Count_initial:$end_end" >> $debug_name
echo "Start_Initial_Count:$Start_Initial_Count" >> $debug_name
echo "End_Initial_Count:$End_Initial_Count" >> $debug_name
echo "Circulate:$Circulate" >> $debug_name
echo "ctrl_c_flag:$ctrl_c_flag" >> $debug_name
echo "max_debug:$max_debug" >> $debug_name

if [ $front_switch -eq 1 ]; then
echo "front_switch:$front_switch" >> $debug_name
fi

if [ $back_switch -eq 1 ]; then
echo "back_switch:$back_switch" >> $debug_name
fi

if [ $forklift_switch -eq 1 ]; then
echo "forklift_switch:$forklift_switch" >> $debug_name
fi

if [ $top_switch -eq 1 ]; then
echo "top_switch:$top_switch" >> $debug_name
fi

if [ $front_switch -eq 1 ]; then
echo "front_ip:$front_ip" >> $debug_name
fi

if [ $back_switch -eq 1 ]; then
echo "back_ip:$back_ip" >> $debug_name
fi

if [ $forklift_switch -eq 1 ]; then
echo "forklift_ip:$forklift_ip" >> $debug_name
sleep 0.1
fi

if [ $top_switch -eq 1 ]; then
echo "top_ip:$top_ip" >> $debug_name
sleep 0.1
fi

if [ $forklift_scan_switch -eq 1 ]; then
echo "forklift_scan_ip:$forklift_scan_ip" >> $debug_name
sleep 0.1
fi
fi

debug_cmd " echo "$ttime 调试信息打印完毕" >> $debug_name "

if [ "$size_cpu" -gt "$max_size_all" ];then
back_file1="$cpu-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$cpu" "$back_file1"
touch "$cpu" 
debug_cmd " echo "$ttime cpu系统日志备份完成。" >> $debug_name "
fi
sleep 0.01
if [ "$size_memory" -gt "$max_size_all" ];then
back_file2="$memory-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$memory" "$back_file2"
touch "$memory" &
debug_cmd " echo "$ttime 系统内存信息日志备份完成。" >> $debug_name "
fi
sleep 0.01
if [ $front_switch -eq 1 ]; then
if [ "$size_ping_front" -gt "$max_size_all" ];then
back_file3="$ping_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_front" "$back_file3"
touch "$ping_front"
debug_cmd " echo "$ttime ip:$front_ip 网络延迟日志备份完成。" >> $debug_name "
fi
fi
sleep 0.01
if [ $back_switch -eq 1 ]; then
if [ "$size_ping_back" -gt "$max_size_all" ];then
back_file4="$ping_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_back" "$back_file4"
touch "$ping_back"
debug_cmd " echo "$ttime ip:$back_ip 网络延迟日志备份完成。" >> $debug_name "
fi
fi
sleep 0.01
if [ $front_switch -eq 1 ]; then
if [ "$size_rostopic_front" -gt "$max_size_all" ];then
back_file5="$rostopic_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_front" "$back_file5"
touch "$rostopic_front"
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光topic原始数据日志备份完成。" >> $debug_name "
fi
fi
sleep 0.01
if [ $back_switch -eq 1 ]; then
if [ "$size_rostopic_back" -gt "$max_size_all" ];then
back_file6="$rostopic_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_back" "$back_file6"
touch "$rostopic_back"
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光topic原始数据日志备份完成。" >> $debug_name "
fi
fi
sleep 0.01
if [ "$size_rostopic_battery" -gt "$max_size_all" ];then
back_file7="$rostopic_battery-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_battery" "$back_file7"
touch "$rostopic_battery"
debug_cmd " echo "$ttime 电池日志文件备份已完成。" >> $debug_name "
fi
sleep 0.01
if [ $forklift_switch -eq 1 ]; then
if [ "$size_rostopic_forklift" -gt "$max_size_all" ];then
back_file10="$rostopic_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_forklift" "$back_file10"
touch "$rostopic_forklift"
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光topic原始数据日志备份完成。" >> $debug_name "
fi
fi
sleep 0.01
if [ $forklift_switch -eq 1 ]; then
if [ "$size_ping_forklift" -gt "$max_size_all" ];then
back_file11="$ping_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_forklift" "$back_file11"
touch "$ping_forklift"
debug_cmd " echo "$ttime ip:$forklift_ip 网络延迟日志文件备份已完成。" >> $debug_name "
fi
fi

sleep 0.01

if [ $front_switch -eq 1 ]; then
if [ "$size_tcpdump_front" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$front_ip 网络数据抓包进程完成。" >> $debug_name "
back_file9="$tcpdump_front-$(date +"%Y-%m-%d-%H-%M-%S")" 
mv "$tcpdump_front" "$back_file9"
touch "$tcpdump_front" 
tcpdump -i eno1 src net $front_ip -w $tcpdump_front &
debug_cmd " echo "$ttime Tcpdump ip:$front_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $back_switch -eq 1 ]; then
if [ "$size_tcpdump_back" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$back_ip 网络数据抓包进程完成。" >> $debug_name "
back_file8="$tcpdump_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_back" "$back_file8"
touch "$tcpdump_back" 
tcpdump -i eno1 src net $back_ip -w $tcpdump_back &
debug_cmd " echo "$ttime Tcpdump ip:$back_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$size_tcpdump_forklift" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $forklift_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$forklift_ip 网络数据抓包进程完成。" >> $debug_name "
back_file12="$tcpdump_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_forklift" "$back_file12"
touch "$tcpdump_forklift" 
tcpdump -i eno1 src net $forklift_ip -w $tcpdump_forklift &
debug_cmd " echo "$ttime Tcpdump ip:$forklift_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$size_rostopic_top" -gt "$max_size_all" ];then
back_file13="$rostopic_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_top" "$back_file13"
touch "$rostopic_top"
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光topic原始数据日志备份完成。" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$size_ping_top" -gt "$max_size_all" ];then
back_file14="$ping_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_top" "$back_file14"
touch "$ping_top"
debug_cmd " echo "$ttime ip:$top_ip 网络延迟日志文件备份已完成。" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$size_tcpdump_top" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $top_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$top_ip 网络数据抓包进程完成。" >> $debug_name "
back_file15="$tcpdump_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_top" "$back_file15"
touch "$tcpdump_top" 
tcpdump -i eno1 src net $top_ip -w $tcpdump_top &
debug_cmd " echo "$ttime Tcpdump ip:$top_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_rostopic_forklift_scan" -gt "$max_size_all" ];then
back_file16="$rostopic_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_forklift_scan" "$back_file16"
touch "$rostopic_forklift_scan"
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光topic原始数据日志备份完成。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_ping_forklift_scan" -gt "$max_size_all" ];then
back_file17="$ping_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_forklift_scan" "$back_file17"
touch "$ping_forklift_scan"
debug_cmd " echo "$ttime ip:$forklift_scan_ip 网络延迟日志文件备份已完成。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_tcpdump_forklift_scan" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i eno1 src net $forklift_scan_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$forklift_scan_ip 网络数据抓包进程完成。" >> $debug_name "
back_file17="$tcpdump_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_forklift_scan" "$back_file17"
touch "$tcpdump_forklift_scan" 
tcpdump -i eno1 src net $forklift_scan_ip -w $tcpdump_top &
debug_cmd " echo "$ttime Tcpdump ip:$forklift_scan_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

debug_cmd " echo "$ttime 判断文件是否大于阈值并执行相关操作流程循环完毕。" >> $debug_name "

#Query on the number of specified files under a folder

if [ $back_switch -eq 1 ]; then
count1=$(ls -lt ~/lanxin/intel/back/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/back/wireshark/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
count2=$(ls -lt ~/lanxin/intel/front/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/front/wireshark/目录下文件数量”执行完成。" >> $debug_name "
fi

count3=$(ls -lt ~/.ros/log/rostopic_*.log | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/.ros/log/rostopic_*.log目录下文件数量”执行完成。" >> $debug_name "

count4=$(ls -lt ~/lanxin/debug/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/debug/目录下文件数量”执行完成。" >> $debug_name "

count5=$(ls -lt ~/lanxin/intel/computer/cpu/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/cpu/目录下文件数量”执行完成。" >> $debug_name "

if [ $front_switch -eq 1 ]; then
count6=$(ls -lt ~/lanxin/intel/front/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/front/ping/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
count7=$(ls -lt ~/lanxin/intel/back/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/back/ping/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
count8=$(ls -lt ~/lanxin/intel/front/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/front/rostopic/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
count9=$(ls -lt ~/lanxin/intel/back/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/back/rostopic/目录下文件数量”执行完成。" >> $debug_name "
fi

count10=$(ls -lt ~/lanxin/intel/computer/memory/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/memory/目录下文件数量”执行完成。" >> $debug_name "

count11=$(ls -lt ~/lanxin/intel/computer/battery/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/battery/目录下文件数量”执行完成。" >> $debug_name "

if [ $forklift_switch -eq 1 ]; then
count12=$(ls -lt ~/lanxin/intel/forklift/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift/wireshark/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
count13=$(ls -lt ~/lanxin/intel/forklift/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift/rostopic/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
count14=$(ls -lt ~/lanxin/intel/forklift/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift/ping/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
count15=$(ls -lt ~/lanxin/intel/top/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/top/ping/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
count16=$(ls -lt ~/lanxin/intel/top/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/top/rostopic/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
count17=$(ls -lt ~/lanxin/intel/top/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/top/wireshark/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
count18=$(ls -lt ~/lanxin/intel/forklift_scan/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift_scan/ping/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
count19=$(ls -lt ~/lanxin/intel/forklift_scan/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift_scan/rostopic/目录下文件数量”执行完成。" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
count20=$(ls -lt ~/lanxin/intel/forklift_scan/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift_scan/wireshark/目录下文件数量”执行完成。" >> $debug_name "
fi

debug_cmd " echo "$ttime 查询“目录文件数量”步骤已全部执行完成。" >> $debug_name "

#确定文件夹中的文件数是否超过配置值，并执行相关操作

if [ $back_switch -eq 1 ]; then
if [ "$count1" -gt "$max_box" ];then
 old_count1=$(ls -t ~/lanxin/intel/back/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count1 &
debug_cmd " echo "$ttime “~/lanxin/intel/back/wireshark/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $front_switch -eq 1 ]; then
if [ "$count2" -gt "$max_box" ];then
 old_count2=$(ls -t ~/lanxin/intel/front/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count2 &
debug_cmd " echo "$ttime “~/lanxin/intel/front/wireshark/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ "$count3" -gt "$max_ros" ];then
 old_count3=$(ls -t ~/.ros/log/rostopic_*.log | tail -n +$max_ros | head -n -1)
xargs rm $old_count3 &
debug_cmd " echo "$ttime “~/.ros/log/rostopic_*.log”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi

if [ "$count4" -gt "$max_debug" ];then
 old_count4=$(ls -t ~/lanxin/debug/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count4 &
debug_cmd " echo "$ttime “~/lanxin/debug/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi

if [ "$count5" -gt "$max_debug" ];then
 old_count5=$(ls -t ~/lanxin/intel/computer/cpu/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count5 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/cpu/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
if [ "$count6" -gt "$max_debug" ];then
 old_count6=$(ls -t ~/lanxin/intel/front/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count6 &
debug_cmd " echo "$ttime “~/lanxin/intel/front/ping/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $back_switch -eq 1 ]; then
if [ "$count7" -gt "$max_debug" ];then
 old_count7=$(ls -t ~/lanxin/intel/back/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count7 &
debug_cmd " echo "$ttime “~/lanxin/intel/back/ping/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $front_switch -eq 1 ]; then
if [ "$count8" -gt "$max_debug" ];then
 old_count8=$(ls -t ~/lanxin/intel/front/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count8 &
debug_cmd " echo "$ttime “~/lanxin/intel/front/rostopic/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $back_switch -eq 1 ]; then
if [ "$count9" -gt "$max_debug" ];then
 old_count9=$(ls -t ~/lanxin/intel/back/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count9 &
debug_cmd " echo "$ttime “~/lanxin/intel/back/rostopic/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ "$count10" -gt "$max_debug" ];then
 old_count10=$(ls -t ~/lanxin/intel/computer/memory/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count10 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/memory/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi

if [ "$count11" -gt "$max_debug" ];then
 old_count11=$(ls -t ~/lanxin/intel/computer/battery/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count11 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/battery/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$count12" -gt "$max_debug" ];then
 old_count12=$(ls -t ~/lanxin/intel/forklift/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count12 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift/wireshark/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$count13" -gt "$max_debug" ];then
 old_count13=$(ls -t ~/lanxin/intel/forklift/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count13 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift/rostopic/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$count14" -gt "$max_debug" ];then
 old_count14=$(ls -t ~/lanxin/intel/forklift/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count14 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift/ping/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$count15" -gt "$max_debug" ];then
 old_count15=$(ls -t ~/lanxin/intel/top/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count15 &
debug_cmd " echo "$ttime “~/lanxin/intel/top/ping/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$count16" -gt "$max_debug" ];then
 old_count16=$(ls -t ~/lanxin/intel/top/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count16 &
debug_cmd " echo "$ttime “~/lanxin/intel/top/rostopic/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$count17" -gt "$max_debug" ];then
 old_count17=$(ls -t ~/lanxin/intel/top/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count17 &
debug_cmd " echo "$ttime “~/lanxin/intel/top/wireshark/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$count18" -gt "$max_debug" ];then
 old_count18=$(ls -t ~/lanxin/intel/forklift_scan/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count18 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift_scan/ping/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$count19" -gt "$max_debug" ];then
 old_count19=$(ls -t ~/lanxin/intel/forklift_scan/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count19 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift_scan/rostopic/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$count20" -gt "$max_debug" ];then
 old_count20=$(ls -t ~/lanxin/intel/forklift_scan/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count20 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift_scan/wireshark/”目录下超过配置数量文件删除已完成。" >> $debug_name "
fi
fi

echo -e "\033[32m end$End_Initial_Count \033[0m"
End_Initial_Count=$((End_Initial_Count+1))
debug_cmd " echo " $ttime "End $End_Initial_Count Cycles."" >> $debug_name "

#判断定时打印开关是否打开并执行相关操作

if [ "$DEBUG_executions_number" = true ]; then
if [[ $End_Initial_Count -ge $Circulate ]];then 
if [ $front_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i eno1 src net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $back_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i eno1 src net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $forklift_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i eno1 src net $forklift_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $top_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i eno1 src net $top_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $forklift_scan_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i eno1 src net $forklift_scan_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
debug_cmd " echo "$ttime 当循环次数达到判断阈值，结束打印。" >> $debug_name "
debug_cmd " echo "$ttime ------------------------------------------------------------END-------------------------------------------------------------------" >> $debug_name "
kill -s SIGINT $$
break
fi
fi

done
trap - INT
