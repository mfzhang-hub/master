#!/bin/bash

# gnome-session-properties : gnome-terminal -x

#全局激光器配置开关
forklift=0 #叉车车型配置开关，当此开关为1时，打开后激光配置开关（back_switch）时，则back_ip自动变为192.168.100.107，叉车右前激光ip自动更新
front_switch=1 #前激光配置开关；也可用作叉车左前激光配置
back_switch=1 #后激光配置开关；也可用作叉车右前激光配置，但需配合“forklift”配置使用
forklift_switch=0 #叉根激光配置开关：存在新老ip,样机ip:106，新车型定款102！！！
top_switch=0 #叉车顶部激光配置开关
forklift_scan_switch=0 #叉车蓝海激光配置开关
T2_Central_front_switch=0 #2T全向车前方中置雷达配置开关,topic未维护
T2_Central_back_switch=0 #2T全向车后方中置雷达配置开关，topic未维护
odom=0 #里程计数据打印开关
wifi_switch=1 #当前设备wifi信息打印开关；
rcs_network=0 #rcs系统ip延迟信息打印开关；

sleep 10

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

if [ ! -d "~/lanxin/intel/computer/power" ];then
	mkdir -p ~/lanxin/intel/computer/power
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

if [ $T2_Central_front_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/T2_Central_front/rostopic" ];then
	mkdir -p ~/lanxin/intel/T2_Central_front/rostopic
	fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/T2_Central_front/wireshark" ];then
	mkdir -p ~/lanxin/intel/T2_Central_front/wireshark
	fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/T2_Central_front/ping" ];then
	mkdir -p ~/lanxin/intel/T2_Central_front/ping
	fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/T2_Central_back/rostopic" ];then
	mkdir -p ~/lanxin/intel/T2_Central_back/rostopic
	fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/T2_Central_back/wireshark" ];then
	mkdir -p ~/lanxin/intel/T2_Central_back/wireshark
	fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/T2_Central_back/ping" ];then
	mkdir -p ~/lanxin/intel/T2_Central_back/ping
	fi
fi

if [ $odom -eq 1 ]; then
if [ ! -d "~/lanxin/agv/odom/" ];then
	mkdir -p ~/lanxin/agv/odom/
	fi
fi

if [ $wifi_switch -eq 1 ]; then
if [ ! -d "~/lanxin/agv/wifi/" ];then
   mkdir -p ~/lanxin/agv/wifi/
   fi
fi

sleep 1

#文件路径定义

cpu=~/lanxin/intel/computer/cpu/cpu.log
memory=~/lanxin/intel/computer/memory/memory.log
ping_front=~/lanxin/intel/front/ping/ping_front.log
ping_back=~/lanxin/intel/back/ping/ping_back.log
rostopic_front=~/lanxin/intel/front/rostopic/rostopic_front.log
rostopic_front_hz=~/lanxin/intel/front/rostopic/rostopic_front_node.log
rostopic_back=~/lanxin/intel/back/rostopic/rostopic_back.log
rostopic_back_hz=~/lanxin/intel/back/rostopic/rostopic_back_node.log
rostopic_battery=~/lanxin/intel/computer/battery/battery.log
rostopic_power=~/lanxin/intel/computer/power/power_trigger.log
tcpdump_front=~/lanxin/intel/front/wireshark/front_shark.pcap
tcpdump_back=~/lanxin/intel/back/wireshark/back_shark.pcap
debug_name=~/lanxin/debug/debug.log
shutdown_time=~/lanxin/shutdowm
version_logg=~/lanxin/version
explain=~/lanxin/Explain.md
ping_forklift=~/lanxin/intel/forklift/ping/ping_forklift.log
rostopic_forklift=~/lanxin/intel/forklift/rostopic/rostopic_forklift.log
rostopic_forklift_hz=~/lanxin/intel/forklift/rostopic/rostopic_forklift_node.log
tcpdump_forklift=~/lanxin/intel/forklift/wireshark/forklift_shark.pcap
ping_top=~/lanxin/intel/top/ping/ping_top.log
rostopic_top=~/lanxin/intel/top/rostopic/rostopic_top.log
rostopic_top_hz=~/lanxin/intel/top/rostopic/rostopic_top_node.log
tcpdump_top=~/lanxin/intel/top/wireshark/top_shark.pcap
ping_forklift_scan=~/lanxin/intel/forklift_scan/ping/ping_forklift_scan.log
rostopic_forklift_scan=~/lanxin/intel/forklift_scan/rostopic/rostopic_forklift_scan.log
rostopic_forklift_scan_hz=~/lanxin/intel/forklift_scan/rostopic/rostopic_forklift_scan_node.log
tcpdump_forklift_scan=~/lanxin/intel/forklift_scan/wireshark/forklift_scan_shark.pcap
ping_T2_Central_front=~/lanxin/intel/T2_Central_front/ping/ping_T2_Central_front.log
rostopic_T2_Central_front=~/lanxin/intel/T2_Central_front/rostopic/rostopic_T2_Central_front.log
rostopic_T2_Central_front_hz=~/lanxin/intel/T2_Central_front/rostopic/rostopic_T2_Central_front_node.log
tcpdump_T2_Central_front=~/lanxin/intel/T2_Central_front/wireshark/shark_T2_Central_front.pcap
ping_T2_Central_back=~/lanxin/intel/T2_Central_back/ping/ping_T2_Central_back.log
rostopic_T2_Central_back=~/lanxin/intel/T2_Central_back/rostopic/rostopic_T2_Central_back.log
rostopic_T2_Central_back_hz=~/lanxin/intel/T2_Central_back/rostopic/rostopic_T2_Central_back_node.log
tcpdump_T2_Central_back=~/lanxin/intel/T2_Central_back/wireshark/shark_T2_Central_back.pcap
rostopic_odom=~/lanxin/agv/odom/encoder_odom.log
interface_network=~/lanxin/interface.txt
wifi_network=~/lanxin/agv/wifi/wifi.log

#调试开关
debug_cmd(){
    if $DEBUG;then
    eval "$@"
    fi
}

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

interface=$(ip addr | grep "inet 192.168.100.201" | awk '{print $NF}')
echo $interface > $interface_network
debug_cmd " echo "$ttime 车辆系统"192.168.100.201"网卡名称获取完毕，网卡名称为：$interface" >> $debug_name "

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

if [ $T2_Central_front_switch -eq 1 ]; then
if [ -f "$tcpdump_T2_Central_front" ]; then
new_name6="$tcpdump_T2_Central_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_T2_Central_front" "$new_name6"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_T2_Central_front”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_T2_Central_front”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ -f "$tcpdump_T2_Central_back" ]; then
new_name7="$tcpdump_T2_Central_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_T2_Central_back" "$new_name7"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_T2_Central_back”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_T2_Central_back”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

#版本号输出

echo '54mI5pys5Y+377yadjE2LeWinuWKoOWPiei9pui9puWei+ivhuWIq+W8gOWFs++8jOW9k+W8gOWFs+aJk+W8gGJhY2tfaXDoh6rliqjmm7TmlrDkuLrlj4novablj7PliY3mv4DlhYlpcA==' > $version_logg

#配置开关说明

echo "
DEBUG: debug开关，当此参数改为true时则打印下述相关执行顺序日志；
DEBUG_executions_number： 此脚本循环打印时间（单位：秒-注意：计数是start1/end1每次循时间约为4秒：计时打印公式：Circulate配置的参数*4），当达到配置的数值“Circulate”时，停止打印脚本且输出“---end---”信息；
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
forklift：“叉车车型配置开关，当此开关为1时，打开后激光配置开关（back_switch）时，则back_ip自动变为192.168.100.107，叉车右前激光ip自动更新”；
front_switch：“前激光所有日志打印开关，当开关为1时则启用前激光相关的配置文件，当为0时则关闭执行-默认1”；
back_switch：“潜入式车型后激光/叉车右前激光所有日志打印开关，当开关为1时则启用潜入式车型后激光/叉车右前激光相关的配置文件，当为0时则关闭执行-默认1”；
forklift_switch：“叉车叉根激光所有日志打印开关，当开关为1时则启用叉车叉根激光相关的配置文件，当为0时则关闭执行-默认0”
top_switch： “叉车顶部导航激光所有日志打印开关，当开关为1时则启用叉车顶部导航激光相关的配置文件，当为0时则关闭执行-默认0”
forklift_scan_switch： “叉车蓝海激光所有日志打印开关，当开关为1时则启用叉车蓝海激光相关的配置文件，当为0时则关闭执行-默认0”  
T2_Central_front_switch：“T2全向AGV前中雷达日志打印开关，当开关为1时则启用T2前中激光相关的配置文件，当为0时则关闭执行-默认0”
T2_Central_back_switch：“T2全向AGV后中雷达日志打印开关，当开关为1时则启用T2后中激光相关的配置文件，当为0时则关闭执行-默认0” 
odom：“里程计打印开关，当开关为1时启动车辆里程计数据打印，当开关为0时关闭车辆里程计数据打印，默认0，不要开！！！” 
wifi_switch：“设备wifi信息打印开关，默认1” 
rcs_network：“rcs连接ip延迟信息查询开关，默认0”" > $explain
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

if [ $back_switch -eq 1 ] && [ $forklift -eq 1 ]; then
back_ip=192.168.100.107
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

if [ $T2_Central_front_switch -eq 1 ]; then
T2_Central_front_ip=192.168.100.101
fi

if [ $T2_Central_back_switch -eq 1 ]; then
T2_Central_back_ip=192.168.100.102
fi

if [ $rcs_network -eq 1 ]; then
rcs_ip=10.128.62.41
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

if [ $forklift -eq 1 ]; then
echo "forklift:$forklift" >> $debug_name
echo "此脚本车型配置为叉车车型，下方back_ip自动更新为叉车右前激光ip,请注意！！！" >> $debug_name
fi

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

if [ $T2_Central_front_switch -eq 1 ]; then
echo "T2_Central_front_ip:$T2_Central_front_ip" >> $debug_name
sleep 0.1
fi

if [ $T2_Central_back_switch -eq 1 ]; then
echo "T2_Central_back_ip:$T2_Central_back_ip" >> $debug_name
sleep 0.1
fi

if [ $odom -eq 1 ]; then
echo "odom:$odom" >> $debug_name
sleep 0.1
fi

if [ $wifi_switch -eq 1 ]; then
echo "wifi_switch:$wifi_switch" >> $debug_name
sleep 0.1
fi


#开始网络数据包捕获

if [ $front_switch -eq 1 ]; then
tcpdump -i $interface net $front_ip -w $tcpdump_front &
sleep 0.1
fi


if [ $back_switch -eq 1 ]; then
tcpdump -i $interface net $back_ip -w $tcpdump_back &
fi

if [ $forklift_switch -eq 1 ]; then
tcpdump -i $interface net $forklift_ip -w $tcpdump_forklift &
fi


if [ $top_switch -eq 1 ]; then
tcpdump -i $interface net $top_ip -w $tcpdump_top &
fi

if [ $forklift_scan_switch -eq 1 ]; then
tcpdump -i $interface net $forklift_scan_ip -w $tcpdump_forklift_scan &
fi


if [ $T2_Central_front_switch -eq 1 ]; then
tcpdump -i $interface net $T2_Central_front_ip -w $tcpdump_T2_Central_front &
fi

if [ $T2_Central_back_switch -eq 1 ]; then
tcpdump -i $interface net $T2_Central_back_ip -w $tcpdump_T2_Central_back &
fi


sleep 0.1

#启动时间查询

uptime -s >> $shutdown_time 
debug_cmd " echo "$ttime 读取系统关机时间完毕。" >> $debug_name "

trap 'ctrl_c_flag=1' INT

if [ $front_switch -eq 1 ]; then
front_msg=$(timeout 1 rostopic echo -n 1 /scan_front & )
front_msg1=$(timeout 1 rostopic echo -n 1 /scan_front | grep -E 'frame_id:' & )
fi
if [ $back_switch -eq 1 ]; then
back_msg=$(timeout 1 rostopic echo -n 1 /scan_back & )
back_msg1=$(timeout 1 rostopic echo -n 1 /scan_back | grep -E 'frame_id:' & )
fi
if [ $forklift_switch -eq 1 ]; then
forklift_msg=$(timeout 1 rostopic echo -n 1 /scan_back_forklift & )
forklift_msg1=$(timeout 1 rostopic echo -n 1 /scan_back_forklift | grep -E 'frame_id:' & )
fi
if [ $top_switch -eq 1 ]; then
top_msg=$(timeout 1 rostopic echo -n 1 /scan_top & )
top_msg1=$(timeout 1 rostopic echo -n 1 /scan_top | grep -E 'frame_id:' & )	
fi
if [ $forklift_scan_switch -eq 1 ]; then
forklift_scan_msg=$(timeout 1 rostopic echo -n 1 /forklift_top_scan & )
forklift_scan_msg1=$(timeout 1 rostopic echo -n 1 /forklift_top_scan | grep -E 'frame_id:' & )
fi
if [ $T2_Central_front_switch -eq 1 ]; then
T2_Central_front_msg=$(timeout 1 rostopic echo -n 1 & ) #topic参数暂未维护
T2_Central_front_msg1=$(timeout 1 rostopic echo -n 1  | grep -E 'frame_id:' & ) #topic参数暂未维护
fi
if [ $T2_Central_back_switch -eq 1 ]; then
T2_Central_back_msg=$(timeout 1 rostopic echo -n 1 & ) #topic参数暂未维护
T2_Central_back_msg1=$(timeout 1 rostopic echo -n 1  | grep -E 'frame_id:' & ) #topic参数暂未维护
fi
if [ $odom -eq 1 ]; then
odom_msg=$(timeout 1 rostopic echo -n 1 /encoder_odom & ) 
odom_msg1=$(timeout 1 rostopic echo -n 1 /encoder_odom  | grep -E 'frame_id:' & ) 
fi

#循环开始

while true
do

debug_cmd " echo "$ttime 开始进入循环程序" >> $debug_name "

    cd /mnt
    source devel_isolated/setup.bash 

debug_cmd " echo "$ttime “source”指令执行完毕。" >> $debug_name "

if [ $ctrl_c_flag -eq 1 ]; then
echo "$ttime 检测到ctrl+c关闭打印信号，请确认是否人为操作导致！！！ " >> $debug_name
break
fi

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

echo -e "\033[31m start$Start_Initial_Count \033[0m"
Start_Initial_Count=$((Start_Initial_Count+1))

debug_cmd " echo " $ttime "Start $Start_Initial_Count Cycles."" >> $debug_name "
debug_cmd " echo "$ttime " 数据循环打印开始！！！"" >> $debug_name "


#设备wifi联网信息打印
wifi_card=$(iw dev | grep -Po '^\s*Interface\s*\K\w+')
if [ -z "$wifi_card" ]; then
    echo "$ttime 未获取到wifi网卡信息，请检查wifi网卡是否正常连接！！！" >> $wifi_network
debug_cmd "	echo "$ttime "未获取到wifi网卡信息，请检查wifi网卡是否正常连接！！！"" >> $debug_name " 
else
     wifi_name=$(iwconfig $wifi_card | grep ESSID | awk -F '"' '{print $2}')
     ap_name=$(iwconfig $wifi_card | grep Access | awk -F ' ' '{print $6}')
     signal_strength=$(iwconfig $wifi_card | grep Signal | awk -F '=' '{print $3}' | awk '{print $1}')
     gateway=$(route -n | grep 'UG[ \t]' | awk '{print $2}')
     delay=$(ping -c 1 "$gateway" | grep 'time=' | awk -F '=' '{print $4}' | awk -F ' ' '{print $1}')
     network_card=$(lspci | grep -i network | awk -F 'Network controller: ' '{print $2}')
    echo "$ttime wifi_card:$wifi_card wifi_name:$wifi_name ap_name:$ap_name signal_strength:$signal_strength dbm gateway:$gateway delay:$delay ms network_card:$network_card " >> $wifi_network 
	
fi
if [ $rcs_network -eq 1 ]; then    
    if timeout 1 ping -c 1 "$rcs_ip" &> /dev/null; then
	rcs_delay=$(ping -c 1 "$rcs_ip" | grep 'time=' | awk -F '=' '{print $4}' | awk -F ' ' '{print $1}')
	echo "$ttime AGV与RCS连接未断开。RCS_data: rcs_delay:$rcs_delay ms " >> $wifi_network
	else
	echo "$ttime ERROR：AGV与RCS连接已断开。timeout!!!" >> $wifi_network
	fi
fi
#系统信息打印

sleep 0.1
    echo $ttime >> $cpu 
    sensors  >> $cpu
	top -bn 1 -i -c | head -6 >> $cpu
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> $cpu
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> $cpu

    echo $ttime >> $memory
    free -m >> $memory

    echo $ttime >> $memory
    df -hl >> $memory

	echo $ttime >> $cpu
	lsusb >> $cpu 

#网络延迟和上层数据打印

if [ $front_switch -eq 1 ]; then
if ! ping -c 1 -w 1 $front_ip | grep -q "100% packet loss";then
echo "$ttime ip:$front_ip The network is not disconnected and data printing is normal." >> $ping_front &
else
echo "$ttime ip:$front_ip ERROR: The network is disconnected and data printing is abnormal." >> $ping_front &
fi
fi

if [ $back_switch -eq 1 ]; then
if ! ping -c 1 -w 1 $back_ip | grep -q "100% packet loss";then
echo "$ttime ip:$back_ip The network is not disconnected and data printing is normal." >> $ping_back &
else
echo "$ttime ip:$back_ip ERROR: The network is disconnected and data printing is abnormal." >> $ping_back & 
fi
fi

if ! rostopic echo -n 1 /ztexing_node/power_trigger | grep -q "data: True"  ; then
echo "$ttime The AGV power button has not been triggered." >> $rostopic_power &
else
echo "$ttime The AGV power button has been triggered." >> $rostopic_power &
fi

if [ $front_switch -eq 1 ]; then
    new_front_msg=$(timeout 1 rostopic echo -n 1 /scan_front & ) 
	if [ "$new_front_msg" != "$front_msg" ]; then
    front_msg="$new_front_msg"
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_front &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_front &
    fi
	echo $ttime >> $rostopic_front_hz
	timeout 1 rostopic hz /scan_front >> $rostopic_front_hz &
fi

if [ $odom -eq 1 ]; then
    new_odom_msg=$(timeout 1 rostopic echo -n 1 /encoder_odom & ) 
	if [ "$new_odom_msg" != "$odom_msg" ]; then
    odom_msg="$new_odom_msg"
    echo "$ttime CORRECT: Odometer data is being refreshed normally." >> $rostopic_odom &
	else
	echo "$ttime ERROR: Odometer data is being refreshed abnormally." >> $rostopic_odom &
    fi
fi

if [ $back_switch -eq 1 ]; then
    new_back_msg=$(timeout 1 rostopic echo -n 1 /scan_back & )
    if [ "$new_back_msg" != "$back_msg" ]; then
    back_msg="$new_back_msg" 
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_back &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_back &
    fi
	echo $ttime >> $rostopic_back_hz
	timeout 1 rostopic hz /scan_back >> $rostopic_back_hz &
fi

if [ $forklift_switch -eq 1 ]; then
if ! ping -c 1 -w 1 $forklift_ip | grep -q "100% packet loss";then
echo "$ttime ip:$forklift_ip The network is not disconnected and data printing is normal." >> $ping_forklift &
else
echo "$ttime ip:$forklift_ip ERROR：The network is not disconnected and data printing is abnormal." >> $ping_forklift &
fi
fi

if [ $forklift_switch -eq 1 ]; then
    new_forklift_msg=$(timeout 1 rostopic echo -n 1 /scan_back_forklift & )
    if [ "$new_forklift_msg" != "$forklift_msg" ]; then
    forklift_msg="$new_forklift_msg"
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_forklift &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_forklift &
    fi
	echo $ttime >> $rostopic_forklift_hz
	timeout 1 rostopic hz /scan_back_forklift >> $rostopic_forklift_hz &
fi

if [ $top_switch -eq 1 ]; then
    echo $ttime >> $ping_top
if ! ping -c 1 -w 1 $top_ip | grep -q "100% packet loss";then
echo "$ttime ip:$top_ip The network is not disconnected and data printing is normal." >> $ping_top &
else
echo "$ttime ip:$top_ip ERROR：The network is not disconnected and data printing is abnormal." >> $ping_top & 
fi
fi

if [ $top_switch -eq 1 ]; then
    new_top_msg=$(timeout 1 rostopic echo -n 1 /scan_top & )
    if [ "$new_top_msg" != "$top_msg" ]; then
    top_msg="$new_top_msg"
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_top &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_top &
    fi
	echo $ttime >> $rostopic_top_hz
	timeout 1 rostopic hz /scan_top >> $rostopic_top_hz &
fi

if [ $forklift_scan_switch -eq 1 ]; then
if ! ping -c 1 -w 1 $forklift_scan_ip | grep -q "100% packet loss";then
echo "$ttime ip:$forklift_scan_ip The network is not disconnected and data printing is normal." >> $ping_forklift_scan &
else
echo "$ttime ip:$forklift_scan_ip ERROR：The network is not disconnected and data printing is abnormal." >> $ping_forklift_scan &
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
    new_forklift_scan_msg=$(timeout 1 rostopic echo -n 1 /forklift_top_scan & )
    if [ "$new_forklift_scan_msg" != "$forklift_scan_msg" ]; then
    forklift_scan_msg="$new_forklift_scan_msg"
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_forklift_scan &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_forklift_scan &
    fi
	echo $ttime >> $rostopic_forklift_scan_hz
	timeout 1 rostopic hz /forklift_top_scan >> $rostopic_forklift_scan_hz &
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if ! ping -c 1 -w 1 $T2_Central_front_ip | grep -q "100% packet loss";then
echo "$ttime ip:$T2_Central_front_ip The network is not disconnected and data printing is normal." >> $ping_T2_Central_front &
else
echo "$ttime ip:$T2_Central_front_ip ERROR：The network is not disconnected and data printing is abnormal." >> $ping_T2_Central_front &
fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
    new_T2_Central_front_msg=$(timeout 1 rostopic echo -n 1 & ) #topic参数暂未维护
    if [ "$new_T2_Central_front_msg" != "$T2_Central_front_msg" ]; then
    T2_Central_front_msg="$new_T2_Central_front_msg"
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_T2_Central_front &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_T2_Central_front &
    fi
	echo $ttime >> $rostopic_T2_Central_front_hz
	timeout 1 rostopic hz  >> $rostopic_T2_Central_front_hz & #topic参数暂未维护
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if ! ping -c 1 -w 1 $T2_Central_back_ip | grep -q "100% packet loss";then
echo "$ttime ip:$T2_Central_back_ip The network is not disconnected and data printing is normal." >> $ping_T2_Central_back &
else
echo "$ttime ip:$T2_Central_back_ip ERROR：The network is not disconnected and data printing is abnormal." >> $ping_T2_Central_back &
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
    new_T2_Central_back_msg=$(timeout 1 rostopic echo -n 1 & ) #topic参数暂未维护
    if [ "$new_T2_Central_back_msg" != "$T2_Central_back_msg" ]; then
    T2_Central_back_msg="$new_T2_Central_back_msg"
    echo "$ttime CORRECT: Laser raw data refresh normal." >> $rostopic_T2_Central_back &
	else
	echo "$ttime ERROR: Laser raw data refresh abnormal." >> $rostopic_T2_Central_back &
    fi
	echo $ttime >> $rostopic_T2_Central_back_hz
	timeout 1 rostopic hz  >> $rostopic_T2_Central_back_hz & #topic参数暂未维护
fi

    echo $ttime >> $rostopic_battery
    cd /mnt && source devel_isolated/setup.bash
    rostopic echo -n 1 /ztexing_node/dev_status >> $rostopic_battery 2>&1 &  #/ztexing_node/dev_status or /ztexing_node/battery_status
debug_cmd " echo "$ttime topic/ping/及系统日志打印完成" >> $debug_name "

#“Du”查询定义

size_cpu=$(du -b "$cpu" | awk '{print $1}') 
debug_cmd " echo "$ttime cpu系统日志保存文件大小查询完毕。size_cpu:$size_cpu" >> $debug_name "

size_memory=$(du -b "$memory" | awk '{print $1}') 
debug_cmd " echo "$ttime 系统内存日志文件大小查询完毕。size_memory:$size_memory" >> $debug_name "

if [ $front_switch -eq 1 ]; then
size_ping_front=$(du -b "$ping_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 网络延迟日志文件大小查询完毕。size_ping_front:$size_ping_front" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_ping_back=$(du -b "$ping_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 网络延迟日志文件大小查询完毕。size_ping_back:$size_ping_back" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
size_rostopic_front=$(du -b "$rostopic_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_front:$size_rostopic_front" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
size_rostopic_front_hz=$(du -b "$rostopic_front_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_front_hz:$size_rostopic_front_hz" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_rostopic_back=$(du -b "$rostopic_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_back:$size_rostopic_back" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_rostopic_back_hz=$(du -b "$rostopic_back_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_back_hz:$size_rostopic_back_hz" >> $debug_name "
fi

size_rostopic_battery=$(du -b "$rostopic_battery" | awk '{print $1}') 
debug_cmd " echo "$ttime 电池状态日志文件大小查询完毕。size_rostopic_battery:$size_rostopic_battery" >> $debug_name "

if [ $front_switch -eq 1 ]; then
size_tcpdump_front=$(du -b "$tcpdump_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_front:$size_tcpdump_front" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
size_tcpdump_back=$(du -b "$tcpdump_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_back:$size_tcpdump_back" >> $debug_name "
fi

debug_cmd " size_debug_name=$(du -b "$debug_name" | awk '{print $1}') "
debug_cmd " echo "$ttime 调试日志文件大小查询完毕。size_debug_name:$size_debug_name" >> $debug_name "

if [ $forklift_switch -eq 1 ]; then
size_ping_forklift=$(du -b "$ping_forklift" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 网络延迟日志文件大小查询完毕。size_ping_forklift:$size_ping_forklift" >> $debug_name "
fi


if [ $forklift_switch -eq 1 ]; then
size_rostopic_forklift=$(du -b "$rostopic_forklift" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_forklift:$size_rostopic_forklift" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
size_rostopic_forklift_hz=$(du -b "$rostopic_forklift_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_forklift_hz:$size_rostopic_forklift_hz" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
size_tcpdump_forklift=$(du -b "$tcpdump_forklift" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_forklift:$size_tcpdump_forklift" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_ping_top=$(du -b "$ping_top" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 网络延迟日志文件大小查询完毕。size_ping_top:$size_ping_top" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_rostopic_top=$(du -b "$rostopic_top" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_top:$size_rostopic_top" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_rostopic_top_hz=$(du -b "$rostopic_top_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_top_hz:$size_rostopic_top_hz" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
size_tcpdump_top=$(du -b "$tcpdump_top" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_top:$size_tcpdump_top" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_ping_forklift_scan=$(du -b "$ping_forklift_scan" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 网络延迟日志文件大小查询完毕。size_ping_forklift_scan:$size_ping_forklift_scan" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_rostopic_forklift_scan=$(du -b "$rostopic_forklift_scan" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_forklift_scan:$size_rostopic_forklift_scan" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_rostopic_forklift_scan_hz=$(du -b "$rostopic_forklift_scan_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_forklift_scan_hz:$size_rostopic_forklift_scan_hz" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
size_tcpdump_forklift_scan=$(du -b "$tcpdump_forklift_scan" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_forklift_scan:$size_tcpdump_forklift_scan" >> $debug_name "
fi

if [ $T2_Central_front_switch -eq 1 ]; then
size_ping_T2_Central_front=$(du -b "$ping_T2_Central_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 网络延迟日志文件大小查询完毕。size_ping_T2_Central_front:$size_ping_T2_Central_front" >> $debug_name "
fi


if [ $T2_Central_front_switch -eq 1 ]; then
size_rostopic_T2_Central_front=$(du -b "$rostopic_T2_Central_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_T2_Central_front:$size_rostopic_T2_Central_front" >> $debug_name "
fi

if [ $T2_Central_front_switch -eq 1 ]; then
size_rostopic_T2_Central_front_hz=$(du -b "$rostopic_T2_Central_front_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_T2_Central_front_hz:$size_rostopic_T2_Central_front_hz" >> $debug_name "
fi

if [ $T2_Central_front_switch -eq 1 ]; then
size_tcpdump_T2_Central_front=$(du -b "$tcpdump_T2_Central_front" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_T2_Central_front:$size_tcpdump_T2_Central_front" >> $debug_name "
fi

if [ $T2_Central_back_switch -eq 1 ]; then
size_ping_T2_Central_back=$(du -b "$ping_T2_Central_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_back_ip 网络延迟日志文件大小查询完毕。size_ping_T2_Central_back:$size_ping_T2_Central_back" >> $debug_name "
fi


if [ $T2_Central_back_switch -eq 1 ]; then
size_rostopic_T2_Central_back=$(du -b "$rostopic_T2_Central_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_back_ip 所绑定的激光topic原始数据日志文件大小查询完毕。size_rostopic_T2_Central_back:$size_rostopic_T2_Central_back" >> $debug_name "
fi

if [ $T2_Central_back_switch -eq 1 ]; then
size_rostopic_T2_Central_back_hz=$(du -b "$rostopic_T2_Central_back_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_back_ip 所绑定的激光节点日志文件大小查询完毕。size_rostopic_T2_Central_back_hz:$size_rostopic_T2_Central_back_hz" >> $debug_name "
fi

if [ $T2_Central_back_switch -eq 1 ]; then
size_tcpdump_T2_Central_back=$(du -b "$tcpdump_T2_Central_back" | awk '{print $1}') 
debug_cmd " echo "$ttime ip:$T2_Central_back_ip 所绑定的激光网络抓包数据包大小查询完毕。size_tcpdump_T2_Central_back:$size_tcpdump_T2_Central_back" >> $debug_name "
fi

if [ $odom -eq 1 ]; then
size_rostopic_odom=$(du -b "$rostopic_odom" | awk '{print $1}') 
debug_cmd " echo "$ttime 车辆里程计数据日志包大小查询完毕。size_rostopic_odom:$size_rostopic_odom" >> $debug_name "
fi

if [ $wifi_switch -eq 1 ]; then
size_wifi_network=$(du -b "$wifi_network" | awk '{print $1}') 
debug_cmd " echo "$ttime 车辆wifi日志包大小查询完毕。size_wifi_network:$size_wifi_network" >> $debug_name "
fi

size_rostopic_power=$(du -b "$rostopic_power" | awk '{print $1}') 
debug_cmd " echo "$ttime 车辆电源开关触发日志文件大小查询完毕。size_rostopic_power:$size_rostopic_power" >> $debug_name "


debug_cmd " echo "$ttime 查询日志文件大小流程执行循环已完毕。" >> $debug_name "

#确定文件是否超过配置的大小并执行相关操作

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

if [ $forklift -eq 1 ]; then
echo "forklift:$forklift" >> $debug_name
echo "此脚本车型配置为叉车车型，下方back_ip自动更新为叉车右前激光ip,请注意！！！" >> $debug_name
fi

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

if [ $forklift_scan_switch -eq 1 ]; then
echo "forklift_scan_switch:$forklift_scan_switch" >> $debug_name
fi

if [ $T2_Central_front_switch -eq 1 ]; then
echo "T2_Central_front_switch:$T2_Central_front_switch" >> $debug_name
fi

if [ $T2_Central_back_switch -eq 1 ]; then
echo "T2_Central_back_switch:$T2_Central_back_switch" >> $debug_name
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

if [ $T2_Central_front_switch -eq 1 ]; then
echo "T2_Central_front_ip:$T2_Central_front_ip" >> $debug_name
sleep 0.1
fi

if [ $T2_Central_back_switch -eq 1 ]; then
echo "T2_Central_back_ip:$T2_Central_back_ip" >> $debug_name
sleep 0.1
fi

if [ $odom -eq 1 ]; then
echo "odom:$odom" >> $debug_name
sleep 0.1
fi

if [ $wifi_switch -eq 1 ]; then
echo "wifi_switch:$wifi_switch" >> $debug_name
sleep 0.1
fi

if [ $rcs_network -eq 1 ]; then
echo "rcs_network:$rcs_network" >> $debug_name
sleep 0.1
fi

if [ $rcs_network -eq 1 ]; then
echo "rcs_ip:$rcs_ip" >> $debug_name
sleep 0.1
fi

debug_cmd " echo "$ttime debug日志备份完成，备份日志名称：$back_file0" >> $debug_name "
fi

debug_cmd " echo "$ttime 调试信息打印完毕。" >> $debug_name "

sleep 0.01
if [ "$size_cpu" -gt "$max_size_all" ];then
back_file1="$cpu-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$cpu" "$back_file1"
touch "$cpu" 
debug_cmd " echo "$ttime cpu系统日志备份完成，备份日志名称：$back_file1" >> $debug_name "
fi
sleep 0.01
if [ "$size_memory" -gt "$max_size_all" ];then
back_file2="$memory-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$memory" "$back_file2"
touch "$memory" &
debug_cmd " echo "$ttime 系统内存信息日志备份完成，备份日志名称：$back_file2" >> $debug_name "
fi
if [ "$size_rostopic_power" -gt "$max_size_all" ];then
back_file221="$rostopic_power-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_power" "$back_file221"
touch "$rostopic_power" &
debug_cmd " echo "$ttime 电池电源触发日志备份完成，备份日志名称：$back_file221" >> $debug_name "
fi
sleep 0.01
if [ $front_switch -eq 1 ]; then
if [ "$size_ping_front" -gt "$max_size_all" ];then
back_file3="$ping_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_front" "$back_file3"
touch "$ping_front"
debug_cmd " echo "$ttime ip:$front_ip 网络延迟日志备份完成，备份日志名称：$back_file3" >> $debug_name "
fi
fi
sleep 0.01
if [ $back_switch -eq 1 ]; then
if [ "$size_ping_back" -gt "$max_size_all" ];then
back_file4="$ping_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_back" "$back_file4"
touch "$ping_back"
debug_cmd " echo "$ttime ip:$back_ip 网络延迟日志备份完成，备份日志名称：$back_file4" >> $debug_name "
fi
fi

if [ $odom -eq 1 ]; then
if [ "$size_rostopic_odom" -gt "$max_size_all" ];then
back_file44="$rostopic_odom-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_odom" "$back_file44"
touch "$rostopic_odom"
debug_cmd " echo "$ttime 车辆里程计日志备份完成，备份日志名称：$back_file44" >> $debug_name "
fi
fi

if [ $wifi_switch -eq 1 ]; then
if [ "$size_wifi_network" -gt "$max_size_all" ];then
back_file45="$wifi_network-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$wifi_network" "$back_file45"
touch "$wifi_network"
debug_cmd " echo "$ttime 设备wifi日志备份完成，备份日志名称：$back_file45" >> $debug_name "
fi
fi

sleep 0.01
if [ $front_switch -eq 1 ]; then
if [ "$size_rostopic_front_hz" -gt "$max_size_all" ];then
back_file51="$rostopic_front_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_front_hz" "$back_file51"
touch "$rostopic_front_hz"
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file51" >> $debug_name "
fi
fi
sleep 0.01
if [ $front_switch -eq 1 ]; then
if [ "$size_rostopic_front" -gt "$max_size_all" ];then
back_file5="$rostopic_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_front" "$back_file5"
touch "$rostopic_front"
debug_cmd " echo "$ttime ip:$front_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file5" >> $debug_name "
fi
fi
sleep 0.01
if [ $back_switch -eq 1 ]; then
if [ "$size_rostopic_back" -gt "$max_size_all" ];then
back_file6="$rostopic_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_back" "$back_file6"
touch "$rostopic_back"
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file6" >> $debug_name "
fi
fi
sleep 0.01
if [ $back_switch -eq 1 ]; then
if [ "$size_rostopic_back_hz" -gt "$max_size_all" ];then
back_file61="$rostopic_back_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_back_hz" "$back_file61"
touch "$rostopic_back_hz"
debug_cmd " echo "$ttime ip:$back_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file61" >> $debug_name "
fi
fi
sleep 0.01
if [ "$size_rostopic_battery" -gt "$max_size_all" ];then
back_file7="$rostopic_battery-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_battery" "$back_file7"
touch "$rostopic_battery"
debug_cmd " echo "$ttime 电池日志文件备份已完成，备份日志名称：$back_file7" >> $debug_name "
fi
sleep 0.01
if [ $forklift_switch -eq 1 ]; then
if [ "$size_rostopic_forklift" -gt "$max_size_all" ];then
back_file10="$rostopic_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_forklift" "$back_file10"
touch "$rostopic_forklift"
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file10" >> $debug_name "
fi
fi
sleep 0.01
if [ $forklift_switch -eq 1 ]; then
if [ "$size_rostopic_forklift_hz" -gt "$max_size_all" ];then
back_file71="$rostopic_forklift_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_forklift_hz" "$back_file71"
touch "$rostopic_forklift_hz"
debug_cmd " echo "$ttime ip:$forklift_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file71" >> $debug_name "
fi
fi
sleep 0.01
if [ $forklift_switch -eq 1 ]; then
if [ "$size_ping_forklift" -gt "$max_size_all" ];then
back_file11="$ping_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_forklift" "$back_file11"
touch "$ping_forklift"
debug_cmd " echo "$ttime ip:$forklift_ip 网络延迟日志文件备份已完成，备份日志名称：$back_file11" >> $debug_name "
fi
fi

sleep 0.01

if [ $front_switch -eq 1 ]; then
if [ "$size_tcpdump_front" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$front_ip 网络数据抓包进程完成。" >> $debug_name "
back_file9="$tcpdump_front-$(date +"%Y-%m-%d-%H-%M-%S")" 
mv "$tcpdump_front" "$back_file9"
debug_cmd " echo "$ttime ip:$front_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file9" >> $debug_name "
touch "$tcpdump_front" 
tcpdump -i $interface net $front_ip -w $tcpdump_front &
debug_cmd " echo "$ttime Tcpdump ip:$front_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi


if [ $back_switch -eq 1 ]; then
if [ "$size_tcpdump_back" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$back_ip 网络数据抓包进程完成。" >> $debug_name "
back_file8="$tcpdump_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_back" "$back_file8"
debug_cmd " echo "$ttime ip:$back_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file8" >> $debug_name "
touch "$tcpdump_back" 
tcpdump -i $interface net $back_ip -w $tcpdump_back &
debug_cmd " echo "$ttime Tcpdump ip:$back_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi


if [ $forklift_switch -eq 1 ]; then
if [ "$size_tcpdump_forklift" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $forklift_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$forklift_ip 网络数据抓包进程完成。" >> $debug_name "
back_file12="$tcpdump_forklift-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_forklift" "$back_file12"
debug_cmd " echo "$ttime ip:$forklift_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file12" >> $debug_name "
touch "$tcpdump_forklift" 
tcpdump -i $interface net $forklift_ip -w $tcpdump_forklift &
debug_cmd " echo "$ttime Tcpdump ip:$forklift_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi


if [ $top_switch -eq 1 ]; then
if [ "$size_rostopic_top" -gt "$max_size_all" ];then
back_file13="$rostopic_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_top" "$back_file13"
touch "$rostopic_top"
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file13" >> $debug_name "
fi
fi

sleep 0.01
if [ $top_switch -eq 1 ]; then
if [ "$size_rostopic_top_hz" -gt "$max_size_all" ];then
back_file81="$rostopic_top_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_top_hz" "$back_file81"
touch "$rostopic_top_hz"
debug_cmd " echo "$ttime ip:$top_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file81" >> $debug_name "
fi
fi
if [ $top_switch -eq 1 ]; then
if [ "$size_ping_top" -gt "$max_size_all" ];then
back_file14="$ping_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_top" "$back_file14"
touch "$ping_top"
debug_cmd " echo "$ttime ip:$top_ip 网络延迟日志文件备份已完成，备份日志名称：$back_file14" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$size_tcpdump_top" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $top_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$top_ip 网络数据抓包进程完成。" >> $debug_name "
back_file15="$tcpdump_top-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_top" "$back_file15"
debug_cmd " echo "$ttime ip:$top_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file15" >> $debug_name "
touch "$tcpdump_top" 
tcpdump -i $interface net $top_ip -w $tcpdump_top &
debug_cmd " echo "$ttime Tcpdump ip:$top_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_rostopic_forklift_scan" -gt "$max_size_all" ];then
back_file16="$rostopic_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_forklift_scan" "$back_file16"
touch "$rostopic_forklift_scan"
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file16" >> $debug_name "
fi
fi

sleep 0.01
if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_rostopic_forklift_scan_hz" -gt "$max_size_all" ];then
back_file91="$rostopic_forklift_scan_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_forklift_scan_hz" "$back_file91"
touch "$rostopic_forklift_scan_hz"
debug_cmd " echo "$ttime ip:$forklift_scan_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file91" >> $debug_name "
fi
fi
if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_ping_forklift_scan" -gt "$max_size_all" ];then
back_file17="$ping_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_forklift_scan" "$back_file17"
touch "$ping_forklift_scan"
debug_cmd " echo "$ttime ip:$forklift_scan_ip 网络延迟日志文件备份已完成，备份日志名称：$back_file17" >> $debug_name "
fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$size_rostopic_T2_Central_front" -gt "$max_size_all" ];then
back_file18="$rostopic_T2_Central_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_T2_Central_front" "$back_file18"
touch "$rostopic_T2_Central_front"
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file18" >> $debug_name "
fi
fi

sleep 0.01
if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$size_rostopic_T2_Central_front_hz" -gt "$max_size_all" ];then
back_file101="$rostopic_T2_Central_front_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_T2_Central_front_hz" "$back_file101"
touch "$rostopic_T2_Central_front_hz"
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file101" >> $debug_name "
fi
fi
if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$size_ping_T2_Central_front" -gt "$max_size_all" ];then
back_file19="$ping_T2_Central_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_T2_Central_front" "$back_file19"
touch "$ping_T2_Central_front"
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 网络延迟日志文件备份已完成，备份日志名称：$back_file19" >> $debug_name "
fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$size_tcpdump_T2_Central_front" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $T2_Central_front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$T2_Central_front_ip 网络数据抓包进程完成。" >> $debug_name "
back_file20="$tcpdump_T2_Central_front-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_T2_Central_front" "$back_file20"
debug_cmd " echo "$ttime ip:$T2_Central_front_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file20" >> $debug_name "
touch "$tcpdump_T2_Central_front" 
tcpdump -i $interface net $T2_Central_front_ip -w $tcpdump_T2_Central_front &
debug_cmd " echo "$ttime Tcpdump ip:$T2_Central_front_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$size_rostopic_T2_Central_back" -gt "$max_size_all" ];then
back_file21="$rostopic_T2_Central_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_T2_Central_back" "$back_file21"
touch "$rostopic_T2_Central_back"
debug_cmd " echo "$ttime ip:$T2_Central_bakc_ip 所绑定的激光topic原始数据日志备份完成，备份日志名称：$back_file21" >> $debug_name "
fi
fi

sleep 0.01
if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$size_rostopic_T2_Central_back_hz" -gt "$max_size_all" ];then
back_file111="$rostopic_T2_Central_back_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_T2_Central_back_hz" "$back_file111"
touch "$rostopic_T2_Central_back_hz"
debug_cmd " echo "$ttime ip:$T2_Central_bakc_ip 所绑定的激光节点数据日志备份完成，备份日志名称：$back_file111" >> $debug_name "
fi
fi
if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$size_ping_T2_Central_back" -gt "$max_size_all" ];then
back_file22="$ping_T2_Central_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$ping_T2_Central_back" "$back_file22"
touch "$ping_T2_Central_back"
debug_cmd " echo "$ttime ip:$T2_Central_bakc_ip 网络延迟日志文件备份已完成，备份日志名称：$back_file22" >> $debug_name "
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$size_tcpdump_T2_Central_back" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $T2_Central_bakc_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$T2_Central_bakc_ip 网络数据抓包进程完成。" >> $debug_name "
back_file23="$tcpdump_T2_Central_back-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_T2_Central_back" "$back_file23"
debug_cmd " echo "$ttime ip:$T2_Central_bakc_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file23" >> $debug_name "
touch "$tcpdump_T2_Central_back" 
tcpdump -i $interface net $T2_Central_bakc_ip -w $tcpdump_T2_Central_back &
debug_cmd " echo "$ttime Tcpdump ip:$T2_Central_bakc_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$size_tcpdump_forklift_scan" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i $interface net $forklift_scan_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止ip:$forklift_scan_ip 网络数据抓包进程完成。" >> $debug_name "
back_file24="$tcpdump_forklift_scan-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_forklift_scan" "$back_file17"
debug_cmd " echo "$ttime ip:$forklift_scan_ip 网络抓包日志文件备份已完成，备份日志名称：$back_file24" >> $debug_name "
touch "$tcpdump_forklift_scan" 
tcpdump -i $interface net $forklift_scan_ip -w $tcpdump_forklift_scan &
debug_cmd " echo "$ttime Tcpdump ip:$forklift_scan_ip 网络数据抓包进程开始。" >> $debug_name "
fi
fi

debug_cmd " echo "$ttime 判断文件是否大于阈值并执行相关操作流程循环完毕。" >> $debug_name "

#查询文件夹下指定文件的数量

if [ $back_switch -eq 1 ]; then
count1=$(ls -lt ~/lanxin/intel/back/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/back/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count1" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
count2=$(ls -lt ~/lanxin/intel/front/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/front/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count2" >> $debug_name "
fi

count3=$(ls -lt ~/.ros/log/rostopic_*.log | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/.ros/log/rostopic_*.log目录下文件数量”执行完成。当前文件夹下数量为：$count3" >> $debug_name "

count4=$(ls -lt ~/lanxin/debug/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/debug/目录下文件数量”执行完成。当前文件夹下数量为：$count4" >> $debug_name "

count5=$(ls -lt ~/lanxin/intel/computer/cpu/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/cpu/目录下文件数量”执行完成。当前文件夹下数量为：$count5" >> $debug_name "

if [ $front_switch -eq 1 ]; then
count6=$(ls -lt ~/lanxin/intel/front/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/front/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count6" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
count7=$(ls -lt ~/lanxin/intel/back/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/back/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count7" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
count8=$(ls -lt ~/lanxin/intel/front/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/front/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count7" >> $debug_name "
fi

if [ $back_switch -eq 1 ]; then
count9=$(ls -lt ~/lanxin/intel/back/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/back/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count9" >> $debug_name "
fi

count10=$(ls -lt ~/lanxin/intel/computer/memory/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/memory/目录下文件数量”执行完成。当前文件夹下数量为：$count10" >> $debug_name "

count11=$(ls -lt ~/lanxin/intel/computer/battery/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/battery/目录下文件数量”执行完成。当前文件夹下数量为：$count11" >> $debug_name "

if [ $forklift_switch -eq 1 ]; then
count12=$(ls -lt ~/lanxin/intel/forklift/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count12" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
count13=$(ls -lt ~/lanxin/intel/forklift/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count13" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
count14=$(ls -lt ~/lanxin/intel/forklift/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count14" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
count15=$(ls -lt ~/lanxin/intel/top/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/top/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count15" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
count16=$(ls -lt ~/lanxin/intel/top/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/top/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count16" >> $debug_name "
fi

if [ $top_switch -eq 1 ]; then
count17=$(ls -lt ~/lanxin/intel/top/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/top/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count17" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
count18=$(ls -lt ~/lanxin/intel/forklift_scan/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift_scan/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count18" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
count19=$(ls -lt ~/lanxin/intel/forklift_scan/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift_scan/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count19" >> $debug_name "
fi

if [ $forklift_scan_switch -eq 1 ]; then
count20=$(ls -lt ~/lanxin/intel/forklift_scan/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/forklift_scan/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count20" >> $debug_name "
fi

if [ $T2_Central_front_switch -eq 1 ]; then
count21=$(ls -lt ~/lanxin/intel/T2_Central_front/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/T2_Central_front/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count21" >> $debug_name "
fi

if [ $T2_Central_front_switch -eq 1 ]; then
count22=$(ls -lt ~/lanxin/intel/T2_Central_front/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/T2_Central_front/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count22" >> $debug_name "
fi

if [ $T2_Central_front_switch -eq 1 ]; then
count23=$(ls -lt ~/lanxin/intel/T2_Central_front/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/T2_Central_front/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count23" >> $debug_name "
fi

if [ $T2_Central_back_switch -eq 1 ]; then
count24=$(ls -lt ~/lanxin/intel/T2_Central_back/ping/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/T2_Central_back/ping/目录下文件数量”执行完成。当前文件夹下数量为：$count24" >> $debug_name "
fi

if [ $T2_Central_back_switch -eq 1 ]; then
count25=$(ls -lt ~/lanxin/intel/T2_Central_back/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/T2_Central_back/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count25" >> $debug_name "
fi

if [ $T2_Central_back_switch -eq 1 ]; then
count26=$(ls -lt ~/lanxin/intel/T2_Central_back/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/T2_Central_back/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count26" >> $debug_name "
fi

if [ $odom -eq 1 ]; then
count34=$(ls -lt ~/lanxin/agv/odom/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/agv/odom/目录下文件数量”执行完成。当前文件夹下数量为：$count34" >> $debug_name "
fi


count35=$(ls -lt ~/lanxin/intel/computer/power/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/power/目录下文件数量”执行完成。当前文件夹下数量为：$count35" >> $debug_name "

if [ $wifi_switch -eq 1 ]; then
count36=$(ls -lt ~/lanxin/agv/wifi/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/agv/wifi/目录下文件数量”执行完成。当前文件夹下数量为：$count36" >> $debug_name "
fi

debug_cmd " echo "$ttime 查询“目录文件数量”步骤已全部执行完成。" >> $debug_name "

#确定文件夹中的文件数是否超过配置值，并执行相关操作

if [ $back_switch -eq 1 ]; then
if [ "$count1" -gt "$max_box" ];then
 old_count1=$(ls -t ~/lanxin/intel/back/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count1 &
debug_cmd " echo "$ttime “~/lanxin/intel/back/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count1" >> $debug_name "
fi
fi

if [ $front_switch -eq 1 ]; then
if [ "$count2" -gt "$max_box" ];then
 old_count2=$(ls -t ~/lanxin/intel/front/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count2 &
debug_cmd " echo "$ttime “~/lanxin/intel/front/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count2" >> $debug_name "
fi
fi

if [ "$count3" -gt "$max_ros" ];then
 old_count3=$(ls -t ~/.ros/log/rostopic_*.log | tail -n +$max_ros | head -n -1)
xargs rm $old_count3 &
debug_cmd " echo "$ttime “~/.ros/log/rostopic_*.log”目录下超过配置数量文件删除已完成。删除文件：$old_count3" >> $debug_name "
fi

if [ "$count4" -gt "$max_debug" ];then
 old_count4=$(ls -t ~/lanxin/debug/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count4 &
debug_cmd " echo "$ttime “~/lanxin/debug/”目录下超过配置数量文件删除已完成。删除文件：$old_count4" >> $debug_name "
fi

if [ "$count5" -gt "$max_debug" ];then
 old_count5=$(ls -t ~/lanxin/intel/computer/cpu/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count5 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/cpu/”目录下超过配置数量文件删除已完成。删除文件：$old_count5" >> $debug_name "
fi

if [ $front_switch -eq 1 ]; then
if [ "$count6" -gt "$max_debug" ];then
 old_count6=$(ls -t ~/lanxin/intel/front/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count6 &
debug_cmd " echo "$ttime “~/lanxin/intel/front/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count6" >> $debug_name "
fi
fi

if [ $back_switch -eq 1 ]; then
if [ "$count7" -gt "$max_debug" ];then
 old_count7=$(ls -t ~/lanxin/intel/back/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count7 &
debug_cmd " echo "$ttime “~/lanxin/intel/back/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count7" >> $debug_name "
fi
fi

if [ $front_switch -eq 1 ]; then
if [ "$count8" -gt "$max_debug" ];then
 old_count8=$(ls -t ~/lanxin/intel/front/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count8 &
debug_cmd " echo "$ttime “~/lanxin/intel/front/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count8" >> $debug_name "
fi
fi

if [ $back_switch -eq 1 ]; then
if [ "$count9" -gt "$max_debug" ];then
 old_count9=$(ls -t ~/lanxin/intel/back/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count9 &
debug_cmd " echo "$ttime “~/lanxin/intel/back/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count9" >> $debug_name "
fi
fi

if [ "$count10" -gt "$max_debug" ];then
 old_count10=$(ls -t ~/lanxin/intel/computer/memory/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count10 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/memory/”目录下超过配置数量文件删除已完成。删除文件：$old_count10" >> $debug_name "
fi

if [ "$count11" -gt "$max_debug" ];then
 old_count11=$(ls -t ~/lanxin/intel/computer/battery/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count11 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/battery/”目录下超过配置数量文件删除已完成。删除文件：$old_count11" >> $debug_name "
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$count12" -gt "$max_debug" ];then
 old_count12=$(ls -t ~/lanxin/intel/forklift/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count12 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count12" >> $debug_name "
fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$count13" -gt "$max_debug" ];then
 old_count13=$(ls -t ~/lanxin/intel/forklift/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count13 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count13" >> $debug_name "
fi
fi

if [ $forklift_switch -eq 1 ]; then
if [ "$count14" -gt "$max_debug" ];then
 old_count14=$(ls -t ~/lanxin/intel/forklift/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count14 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count14" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$count15" -gt "$max_debug" ];then
 old_count15=$(ls -t ~/lanxin/intel/top/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count15 &
debug_cmd " echo "$ttime “~/lanxin/intel/top/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count15" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$count16" -gt "$max_debug" ];then
 old_count16=$(ls -t ~/lanxin/intel/top/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count16 &
debug_cmd " echo "$ttime “~/lanxin/intel/top/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count16" >> $debug_name "
fi
fi

if [ $top_switch -eq 1 ]; then
if [ "$count17" -gt "$max_debug" ];then
 old_count17=$(ls -t ~/lanxin/intel/top/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count17 &
debug_cmd " echo "$ttime “~/lanxin/intel/top/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count17" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$count18" -gt "$max_debug" ];then
 old_count18=$(ls -t ~/lanxin/intel/forklift_scan/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count18 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift_scan/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count18" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$count19" -gt "$max_debug" ];then
 old_count19=$(ls -t ~/lanxin/intel/forklift_scan/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count19 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift_scan/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count19" >> $debug_name "
fi
fi

if [ $forklift_scan_switch -eq 1 ]; then
if [ "$count20" -gt "$max_debug" ];then
 old_count20=$(ls -t ~/lanxin/intel/forklift_scan/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count20 &
debug_cmd " echo "$ttime “~/lanxin/intel/forklift_scan/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count20" >> $debug_name "
fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$count21" -gt "$max_debug" ];then
 old_count21=$(ls -t ~/lanxin/intel/T2_Central_front/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count21 &
debug_cmd " echo "$ttime “~/lanxin/intel/T2_Central_front/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count21" >> $debug_name "
fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$count22" -gt "$max_debug" ];then
 old_count22=$(ls -t ~/lanxin/intel/T2_Central_front/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count22 &
debug_cmd " echo "$ttime “~/lanxin/intel/T2_Central_front/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count22" >> $debug_name "
fi
fi

if [ $T2_Central_front_switch -eq 1 ]; then
if [ "$count23" -gt "$max_debug" ];then
 old_count23=$(ls -t ~/lanxin/intel/T2_Central_front/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count23 &
debug_cmd " echo "$ttime “~/lanxin/intel/T2_Central_front/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count23" >> $debug_name "
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$count24" -gt "$max_debug" ];then
 old_count24=$(ls -t ~/lanxin/intel/T2_Central_back/ping/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count24 &
debug_cmd " echo "$ttime “~/lanxin/intel/T2_Central_back/ping/”目录下超过配置数量文件删除已完成。删除文件：$old_count24" >> $debug_name "
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$count25" -gt "$max_debug" ];then
 old_count25=$(ls -t ~/lanxin/intel/T2_Central_back/rostopic/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count25 &
debug_cmd " echo "$ttime “~/lanxin/intel/T2_Central_back/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count25" >> $debug_name "
fi
fi

if [ $T2_Central_back_switch -eq 1 ]; then
if [ "$count26" -gt "$max_debug" ];then
 old_count26=$(ls -t ~/lanxin/intel/T2_Central_back/wireshark/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count26 &
debug_cmd " echo "$ttime “~/lanxin/intel/T2_Central_back/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count26" >> $debug_name "
fi
fi

if [ $odom -eq 1 ]; then
if [ "$count34" -gt "$max_debug" ];then
 old_count34=$(ls -t ~/lanxin/agv/odom/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count34 &
debug_cmd " echo "$ttime “~/lanxin/agv/odom/”目录下超过配置数量文件删除已完成。删除文件：$old_count34" >> $debug_name "
fi
fi


if [ "$count35" -gt "$max_debug" ];then
 old_count35=$(ls -t ~/lanxin/intel/computer/power/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count35 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/power/”目录下超过配置数量文件删除已完成。删除文件：$old_count35" >> $debug_name "
fi

if [ $wifi_switch -eq 1 ]; then
if [ "$count36" -gt "$max_debug" ];then
 old_count36=$(ls -t ~/lanxin/agv/wifi/* | tail -n +$max_debug | head -n -1)
xargs rm $old_count36 &
debug_cmd " echo "$ttime “~/lanxin/agv/wifi/”目录下超过配置数量文件删除已完成。删除文件：$old_count36" >> $debug_name "
fi
fi

#判断定时打印开关是否打开并执行相关操作

if [ "$DEBUG_executions_number" = true ]; then
if [[ $End_Initial_Count -ge $Circulate ]];then 
if [ $front_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $back_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $forklift_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $forklift_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $top_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $top_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $forklift_scan_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $forklift_scan_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $T2_Central_front_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $T2_Central_front_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $T2_Central_back_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i $interface net $T2_Central_back_ip" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
debug_cmd " echo "$ttime 数据获取循环次数达到判断阈值，结束打印。判断阈值：$Circulate" >> $debug_name "
debug_cmd " echo "$ttime ------------------------------------------------------------END-------------------------------------------------------------------" >> $debug_name "
kill -s SIGINT $$
break
fi
fi

echo -e "\033[32m end$End_Initial_Count \033[0m"
End_Initial_Count=$((End_Initial_Count+1))
debug_cmd " echo " $ttime "End $End_Initial_Count Cycles."" >> $debug_name "

done
trap - INT
