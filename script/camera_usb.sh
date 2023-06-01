#!/bin/bash

# gnome-session-properties : gnome-terminal -x

#usb配置开关

up_switch=1 #上视二维码相机数据开关；
down_switch=1 #下视二维码相机数据开关；
usb_devices=1 #设备所有usb信号抓取开关；
camera_up_hand=0 #上视二维码相机手动开启开关；
camera_down_hand=0 #下视二维码相机手动开启开关；
camputer_var=1 #计算机指定日志复制开关；
camera_tcp=1 #计算机USB信号数据包录取开关；

#文件夹创建判断

if [ $up_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/camera_up/rostopic/" ];then
	mkdir -p ~/lanxin/intel/camera_up/rostopic/
	fi
fi

if [ $down_switch -eq 1 ]; then
if [ ! -d "~/lanxin/intel/camera_down/rostopic/" ];then
	mkdir -p ~/lanxin/intel/camera_down/rostopic/
	fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ ! -d "~/lanxin/intel/usb1/wireshark/" ];then
	mkdir -p ~/lanxin/intel/usb1/wireshark/
	fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ ! -d "~/lanxin/intel/usb2/wireshark/" ];then
	mkdir -p ~/lanxin/intel/usb2/wireshark/
	fi
fi


if [ ! -d "~/lanxin/debug" ];then
	mkdir -p ~/lanxin/debug
	fi

if [ ! -d "~/lanxin/intel/computer/cpu" ];then
	mkdir -p ~/lanxin/intel/computer/cpu
	fi

if [ ! -d "~/lanxin/intel/computer/memory" ];then
	mkdir -p ~/lanxin/intel/computer/memory
	fi

if [ ! -d "~/lanxin/intel/computer/battery" ];then
	mkdir -p ~/lanxin/intel/computer/battery
	fi

if [ ! -d "~/lanxin/intel/computer/connection" ];then
	mkdir -p ~/lanxin/intel/computer/connection
	fi

if [ $usb_devices -eq 1 ]; then
if [ ! -d "~/lanxin/intel/computer/usb/" ];then
	mkdir -p ~/lanxin/intel/computer/usb/
	fi
fi

if [ $camera_up_hand -eq 1 ]; then
if [ ! -d "~/lanxin/intel/camera_up/roslaunch_up/" ];then
	mkdir -p ~/lanxin/intel/camera_up/roslaunch_up/
	fi
fi

if [ $camera_down_hand -eq 1 ]; then
if [ ! -d "~/lanxin/intel/camera_down/roslaunch_down/" ];then
	mkdir -p ~/lanxin/intel/camera_down/roslaunch_down/
	fi
fi

if [ $camputer_var -eq 1 ]; then
if [ ! -d "~/lanxin/intel/computer/var/" ];then
	mkdir -p ~/lanxin/intel/computer/var/
	fi
fi


sleep 1

#文件路径定义

cpu=~/lanxin/intel/computer/cpu/cpu.log
memory=~/lanxin/intel/computer/memory/memory.log
rostopic_up=~/lanxin/intel/camera_up/rostopic/rostopic_up_image.log
rostopic_up_hz=~/lanxin/intel/camera_up/rostopic/rostopic_up_data.log
rostopic_down=~/lanxin/intel/camera_down/rostopic/rostopic_down_image.log
rostopic_down_hz=~/lanxin/intel/camera_down/rostopic/rostopic_down_data.log
rostopic_battery=~/lanxin/intel/computer/battery/battery.log
usb_devices_data=~/lanxin/intel/computer/usb/usb_devices.log
debug_name=~/lanxin/debug/debug.log
shutdown_time=~/lanxin/shutdowm
version_logg=~/lanxin/version
explain=~/lanxin/Explain.md
usb_debugfs=~/lanxin/usbdebugfs.md
roslaunch_up=~/lanxin/intel/camera_up/roslaunch_up/roslaunch_cameraup.log
roslaunch_down=~/lanxin/intel/camera_down/roslaunch_down/roslaunch_cameradown.log
camputer_varlog=~/lanxin/intel/computer/var/
usb_up_hz=~/lanxin/intel/computer/connection/usb_data.log
tcpdump_usb1=~/lanxin/intel/usb1/wireshark/usb1.pcap
tcpdump_usb2=~/lanxin/intel/usb2/wireshark/usb2.pcap


#调试开关
debug_cmd(){
    if $DEBUG;then
    eval "$@"
    fi
}

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

if [ $camera_tcp -eq 1 ]; then
if [ -f "$tcpdump_usb1" ]; then
new_name1="$tcpdump_usb1-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_usb1" "$new_name1"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_usb1”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_usb1”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ -f "$tcpdump_usb2" ]; then
new_name2="$tcpdump_usb2-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_usb2" "$new_name2"
debug_cmd " echo "$ttime 文件已存在，重命名“tcpdump_usb2”定义的文件名称!" >> $debug_name "
else
debug_cmd " echo "$ttime 该“tcpdump_usb2”定义的文件不存在，正常执行时新建!" >> $debug_name "
fi
fi

#版本号输出

echo '54mI5pys5Y+377yadjEyLeWinuWKoOa/gOWFieiKgueCueaJk+WNsA==' > $version_logg

#配置开关说明

echo "
DEBUG: debug开关，当此参数改为true时则打印下述相关执行顺序日志；
DEBUG_executions_number： 此脚本循环打印时间（单位：秒-注意：计数是start1/end1每次循环界面打印耗时正常2秒），当达到配置的数值“Circulate”时，停止打印脚本且输出“---end---”信息；
max_size_all： 除网络数据包之外其他的日志文件单个保存大小（单位：字节，10000000=10mb）；
max_box： 网络数据包的所在文件夹下的循环保存数量，超过这个数值会自动覆盖最早生成的文件包（正常两个包的数据间隔是3分钟）；
max_ros： 系统./ros/log下面的rostopic开头的文件所在文件夹下的循环保存数量，因为下述脚本循环执行topic指令会导致很多数据包生成；
max_debug： 作为debug日志及computer的相关日志的存储限制数量参数；
Start_Initial_Count： 计数器初始值-默认1，请勿修改；
End_Initial_Count： 计数器结束值-默认1，请勿修改；
Circulate： 当“DEBUG_executions_number”参数改为true时会自动调用此参数-参数配置*2为循环打印输出的时间点；
forklift_scan_ip： 激光Ip-此处默认配置叉车叉尖蓝海激光ip;
ctrl_c_flag： “ctrl+c”终端信号检测的判定值-默认0，请勿修改; 
up_switch：上视二维码相机数据开关-默认1，请勿修改;
down_switch：下视二维码相机数据开关-默认1，请勿修改;
usb_devices：设备所有usb信号抓取开关-默认1，请勿修改；
camera_up_hand：上视二维码相机手动开启开关-默认0，请勿修改；
camera_down_hand：下视二维码相机手动开启开关-默认0，请勿修改；
camputer_var：计算机指定文件复制开关-默认1，请勿修改；
camera_tcp: 计算机USB信号数据包录取开关；" > $explain

#设备Usb信息分析说明

echo "
T: Topology info tag  拓扑信息标记
  Bus=01 Bus number   表示总线号
 Lev=01 Level in topology for this bus  表示此USB设备位于所在总线拓扑结构的层次，XHCI控制器对应的Lev=00，其下面挂接的USB网卡的Lev=01 
Prnt=00  Parent DeviceNumber 表示父设备数量，比如XHCI控制器是root，位于最顶层，其Prnt=0，其下面挂载在HUB下的USB网卡的Prnt=01
Port=00 Connector/Port on Parent for this device 此USB设备的父设备上的连接器/端口，比如USB网卡的父设备是XHCI控制器
Cnt=00 Count of devices at this level 这层的枚举到的第几个USB设备，比如USB网卡的Cnt=01
Dev#=  1 DeviceNumber 表示设备编号，XHCI为1，USB网卡为5，按顺序排列的，一个总线上最多挂127个；可以有多个总线
Spd=480  Device Speed in Mbps 设备速率，单位为Mbps
MxCh=12 MaxChildren 当前设备可连接的子设备最大数量，比如XHCI的MxCh=1表示XHCI下可以连接一个USB设备

B:  Bandwidth(带宽信息)
Alloc=  0/800 us ( 0%),  Total Bandwidth allocated to this bus 该总线分配得到的带宽。宽带分配在使用中是一个近似值，此值表示一帧需要多少ms
#Int=  0,  Number of interrupt requests 中断请求数
#Iso=  0  Number of isochronous requests  同步请求数，USB有四大传输，中断、控制、批量和同步

D:  Device descriptor info(设备描述符信息)
Ver= 2.00  Device USB version USB协议版本
Cls=09(hub  )  DeviceClass  由USB-IF(USB Implementers Forum)分配的设备类类码，Hub对应09；厂家自定义的为ff；如果该字段为0x00，表示由接口描述符bInterfaceClass来指定（https://www.usb.org/defined-class-codes）
Sub=00  DeviceSubClass  设备子类，USB子类代码，由USB-IF分配
Prot=01  DeviceProtocol 设备协议码，由USB-IF分配。如果D的Cls和Sub都为00，则该字段也必须为00，采用I的Prot=50
MxPS=64   MaxPacketSize of Default Endpoint  控制端点的最大包大小
#Cfgs=  1 NumberConfigurations 配置数字1或2 

P:  Product ID info(产品ID信息)
Vendor=1d6b Vendor ID code   厂商ID
ProdID=0002  Product ID code  厂商产品的ID
Rev= 4.15   Product revision number  产品版本号

S: String descriptors（字符串描述信息）
 Manufacturer=Linux 4.15.0-142-generic xhci-hcd  从设备中读到的生产商描述性信息
Product=xHCI Host Controller  从设备中读取的产品描述性信息
SerialNumber=0000:00:14.0  从设备中读取的产品序列号

C:Config info tag 
* "*" indicates the active configuration (others are " ") 标识活动配置为其他
 #Ifs= 1  NumberOfInterfaces   此配置支持的USB接口数量，每个配置有一个或多个接口组成，每个接口具有独特的功能，并且绑定到不同的USB设备驱动
Cfg#= 1  ConfiguratioNumber  此配置配置数量
Atr=e0  Attributes  属性，供电配置，位详细定义如下 ：D7 保留，必须置1；D6 自供电模式；D5 远程唤醒；​ D4～D0 保留；0xe0: 1110 0000；0xa0: 1010 0000
MxPwr=  0mA MaxPower in mA 最大功耗，以2mA为单位，例如0x32为50*2=100mA。 USB设备供电有两种方式，self-powered和bus-powered两种方式，驱动代码会判断设备标志寄存器是否过流的。最大500mA

I:Interface descriptor info(接口描述符信息)
* "*" indicates the active configuration (others are " ") 标识活动配置为其他
If#= 0 InterfaceNumber 该接口编号，接口编号从0开始分配，当一个配置有多个接口时，就用该字段来区分不同的接口
Alt= 0  AlternateSettingNumber USB设备配置与USB配置描述符是一一对应的, 即一个配置只能有一个配置描述符
#EPs= 1  NumberOfEndpoints  端点数量，不包括端点0。USB网卡这里的Alt=3(不包括Endpoint0)
Cls=09(hub  )  InterfaceClass 接口类码，比如HUB的为09h，USB-IF分配的类代码，0预览未来使用，0xFF表示接口类是厂家自定义，其他值由USB-IF指定
Sub=00  InterfaceSubClass  接口子类码。USB-IF分配的子类代码，由Cls限制
Prot=00 InterfaceProtocol  接口的协议，如果一个接口支持特定类请求，此代码标识由特定设备类定义的协议，如果该字段为0，设备部在此接口不使特定类的协议，如果该字段为0xFF，设备为此接口使用厂家自定义协议
Driver=hub  Driver name or "none"  驱动名字

E:Endpoint descriptor info(端点描述符信息) 
 Ad=81(I)  EndpointAddress(I=In,O=Out)  端点地址(I=In，O=out)
Atr=03(Int.)   Attributes(EndpointType)   端点属性
MxPS=   4  EndpointMaxPacketSize  端点所支持最大数据包的长度
Ivl=256ms  Interval (max) between transfers 端点数据传输的访问时间间隔。对于全速/低速的中断端点，取值范围为 1~255，对于高速中断端点，取值范围为1-16，详细定义可以参考USB协议。比如HUB的Ivl=256ms" > $usb_debugfs
#终止tcpdump进程

ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9

#功能开关

DEBUG=true
DEBUG_executions_number=false
max_size=400000000
max_size_all=10000000
max_box=200
max_ros=15
max_debug=50
Start_Initial_Count=1 
End_Initial_Count=1 
Circulate=150000
start_start=$Start_Initial_Count
end_end=$End_Initial_Count
ctrl_c_flag=0

#调试信息配置输出

echo $ttime >> $debug_name
echo "debug:$DEBUG" >> $debug_name
echo "DEBUG_executions_number:$DEBUG_executions_number" >> $debug_name
echo "max_size_all:$max_size_all" >> $debug_name
echo "max_size:$max_size" >> $debug_name
echo "max_box:$max_box" >> $debug_name
echo "max_ros:$max_ros" >> $debug_name
echo "Start_Initial_Count:$start_start" >> $debug_name
echo "End_Initial_Count:$end_end" >> $debug_name
echo "Start_Initial_Count_initial:$Start_Initial_Count" >> $debug_name
echo "End_Initial_Count_initial:$End_Initial_Count" >> $debug_name
echo "Circulate:$Circulate" >> $debug_name
echo "ctrl_c_flag:$ctrl_c_flag" >> $debug_name
echo "max_debug:$max_debug" >> $debug_name
echo "usb_devices:$usb_devices" >> $debug_name
echo "camera_up_hand:$camera_up_hand" >> $debug_name
echo "camera_down_hand:$camera_down_hand" >> $debug_name
echo "camputer_var:$camputer_var" >> $debug_name
echo "camera_tcp:$camera_tcp" >> $debug_name

#判断是否加载usbmon内核模块，执行相关操作
mod=$(lsmod | grep usbmon)
if [ $camera_tcp -eq 1 ]; then
if ! lsmod | grep -q "usbmon";then
sudo modprobe -r usbmon &
else
debug_cmd " echo "$ttime $mod " >> $debug_name "
fi
fi

if [ $camera_tcp -eq 1 ]; then
tcpdump -i usbmon1 -w $tcpdump_usb1 &
tcpdump -i usbmon2 -w $tcpdump_usb2 &
sleep 0.1
fi


#手动开启二维码相机
if [ $camera_up_hand -eq 1 ]; then
cameradown_pid=`ps -ef | grep lx_camera_down | grep -v grep | awk '{print $2}'`
echo "find result: $cameradown_pid " >> $roslaunch_up
echo "robot" | sudo -S kill -9 $cameradown_pid >> $roslaunch_up
echo $ttime >> $roslaunch_up 
roslaunch lx_camera lx_camera_up.launch >> $roslaunch_up &
fi
sleep 0.1
if [ $camera_down_hand -eq 1 ]; then
cameraup_pid=`ps -ef | grep lx_camera_up | grep -v grep | awk '{print $2}'`
echo "find result: $cameraup_pid " >> $roslaunch_down
echo "robot" | sudo -S kill -9 $cameraup_pid >> $roslaunch_down
echo $ctime >> $roslaunch_down
roslaunch lx_camera lx_camera_down.launch >> $roslaunch_down &
fi
#启动时间查询

uptime -s >> $shutdown_time 
debug_cmd " echo "$ttime 读取系统关机时间完毕。" >> $debug_name "

trap 'ctrl_c_flag=1' INT

if [ $up_switch -eq 1 ]; then
up_msg=$(timeout 1 rostopic echo -n 1 /camera_up/image_raw & )
fi

if [ $down_switch -eq 1 ]; then
down_msg=$(timeout 1 rostopic echo -n 1 /camera_down/image_raw & )
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
debug_cmd " echo "$ttime "" 数据循环打印开始！！！" >> $debug_name "

#系统信息打印

    echo $ttime >> $cpu 
    top -bn 1 -i -c | head -6  >> $cpu

    echo $ttime >> $cpu 
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> $cpu

    echo $ttime >> $cpu 
    sensors  >> $cpu

    echo $ttime >> $memory
    free -m >> $memory

    echo $ttime >> $memory
    df -hl >> $memory

    echo $ttime >> $usb_up_hz
	lsusb >> $usb_up_hz

#网络延迟和上层数据打印

if [ $usb_devices -eq 1 ]; then
echo $ttime >> $usb_devices_data
cat /sys/kernel/debug/usb/devices >> $usb_devices_data &
debug_cmd " echo "$ttime 该设备所有USB设备信息查询完毕！" >> $debug_name "
fi

if [ $up_switch -eq 1 ]; then
    new_up_msg=$(timeout 1 rostopic echo -n 1 /camera_up/image_raw & ) 
	if [ "$new_up_msg" != "$up_msg" ]; then
    up_msg="$new_up_msg"
    echo "$ttime Camera data output is normal." >> $rostopic_up &
	else
	echo "$ttime ERROR: Camera data output is abnormal." >> $rostopic_up &
    fi
	echo $ttime >> $rostopic_up_hz
	timeout 1 rostopic hz /camera_up/image_raw >> $rostopic_up_hz &
fi

if [ $down_switch -eq 1 ]; then
    new_down_msg=$(timeout 1 rostopic echo -n 1 /camera_down/image_raw & )
    if [ "$new_down_msg" != "$down_msg" ]; then
    down_msg="$new_down_msg" 
    echo "$ttime Camera data output is normal." >> $rostopic_down &
	else
	echo "$ttime ERROR: Camera data output is abnormal." >> $rostopic_down &
    fi
	echo $ttime >> $rostopic_down_hz
	timeout 1 rostopic hz /camera_down/image_raw >> $rostopic_down_hz &
fi


    echo $ttime >> $rostopic_battery
    rostopic echo -n 1 /ztexing_node/battery_status  >> $rostopic_battery 
debug_cmd " echo "$ttime topic及系统日志打印完成" >> $debug_name "

#“Du”查询定义

size_cpu=$(du -b "$cpu" | awk '{print $1}') 
debug_cmd " echo "$ttime cpu系统日志保存文件大小查询完毕。size_cpu:$size_cpu" >> $debug_name "

size_memory=$(du -b "$memory" | awk '{print $1}') 
debug_cmd " echo "$ttime 系统内存日志文件大小查询完毕。size_memory:$size_memory" >> $debug_name "

if [ $up_switch -eq 1 ]; then
size_rostopic_up=$(du -b "$rostopic_up" | awk '{print $1}') 
debug_cmd " echo "$ttime 上视二维码相机原始数据日志文件大小查询完毕。size_rostopic_up:$size_rostopic_up" >> $debug_name "
fi

if [ $up_switch -eq 1 ]; then
size_rostopic_up_hz=$(du -b "$rostopic_up_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime 上视二维码相机驱动节点日志文件大小查询完毕。size_rostopic_up_hz:$size_rostopic_up_hz" >> $debug_name "
fi

if [ $down_switch -eq 1 ]; then
size_rostopic_down=$(du -b "$rostopic_down" | awk '{print $1}') 
debug_cmd " echo "$ttime 下视二维码相机原始数据日志文件大小查询完毕。size_rostopic_down:$size_rostopic_down" >> $debug_name "
fi

if [ $down_switch -eq 1 ]; then
size_rostopic_down_hz=$(du -b "$rostopic_down_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime 上视二维码相机驱动节点日志文件大小查询完毕。size_rostopic_down_hz:$size_rostopic_down_hz" >> $debug_name "
fi

size_rostopic_battery=$(du -b "$rostopic_battery" | awk '{print $1}') 
debug_cmd " echo "$ttime 电池状态日志文件大小查询完毕。" >> $debug_name "

if [ $usb_devices -eq 1 ]; then
size_usb_devices_data=$(du -b "$usb_devices_data" | awk '{print $1}') 
debug_cmd " echo "$ttime 设备USB信号日志大小查询完毕。size_usb_devices_data:$size_usb_devices_data" >> $debug_name "
fi

if [ $camera_up_hand -eq 1 ]; then
size_roslaunch_up=$(du -b "$roslaunch_up" | awk '{print $1}') 
debug_cmd " echo "$ttime 手动执行上视二维码相机打印日志大小查询完毕。size_roslaunch_up:$size_roslaunch_up" >> $debug_name "
fi

if [ $up_switch -eq 1 ]; then
size_usb_up_hz=$(du -b "$usb_up_hz" | awk '{print $1}') 
debug_cmd " echo "$ttime 上视二维码相机usb连接驱动节点日志文件大小查询完毕。size_usb_up_hz:$size_usb_up_hz" >> $debug_name "
fi

if [ $camera_down_hand -eq 1 ]; then
size_roslaunch_down=$(du -b "$roslaunch_down" | awk '{print $1}') 
debug_cmd " echo "$ttime 手动执行下视二维码相机打印日志大小查询完毕。size_roslaunch_down:$size_roslaunch_down" >> $debug_name "
fi

if [ $camera_tcp -eq 1 ]; then
size_camera_usb1=$(du -b "$tcpdump_usb1" | awk '{print $1}') 
debug_cmd " echo "$ttime usb1信道数据包日志大小查询完毕。size_camera_usb1:$size_camera_usb1" >> $debug_name "
fi

if [ $camera_tcp -eq 1 ]; then
size_camera_usb2=$(du -b "$tcpdump_usb2" | awk '{print $1}') 
debug_cmd " echo "$ttime usb2信道数据包日志大小查询完毕。size_camera_usb2:$size_camera_usb2" >> $debug_name "
fi


debug_cmd " size_debug_name=$(du -b "$debug_name" | awk '{print $1}') "
debug_cmd " echo "$ttime 调试日志文件大小查询完毕。size_debug_name:$size_debug_name" >> $debug_name "
sleep 0.1
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
echo "Start_Initial_Count:$start_start" >> $debug_name
echo "End_Initial_Count:$end_end" >> $debug_name
echo "Start_Initial_Count_initial:$Start_Initial_Count" >> $debug_name
echo "End_Initial_Count_initial:$End_Initial_Count" >> $debug_name
echo "Circulate:$Circulate" >> $debug_name
echo "ctrl_c_flag:$ctrl_c_flag" >> $debug_name
echo "max_debug:$max_debug" >> $debug_name
echo "up_switch:$up_switch" >> $debug_name
echo "down_switch:$down_switch" >> $debug_name
echo "usb_devices:$usb_devices" >> $debug_name
echo "camera_up_hand:$camera_up_hand" >> $debug_name
echo "camera_down_hand:$camera_down_hand" >> $debug_name
echo "camputer_var:$camputer_var" >> $debug_name
echo "camera_tcp:$camera_tcp" >> $debug_name
fi

debug_cmd " echo "$ttime 调试信息打印完毕。" >> $debug_name "

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
sleep 0.01
if [ $up_switch -eq 1 ]; then
if [ "$size_rostopic_up_hz" -gt "$max_size_all" ];then
back_file4="$rostopic_up_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_up_hz" "$back_file4"
touch "$rostopic_up_hz"
debug_cmd " echo "$ttime 上视二维码相机驱动节点日志备份完成，备份日志名称：$back_file4" >> $debug_name "
fi
fi
if [ $up_switch -eq 1 ]; then
if [ "$size_rostopic_up" -gt "$max_size_all" ];then
back_file5="$rostopic_up-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_up" "$back_file5"
touch "$rostopic_up"
debug_cmd " echo "$ttime 上视二维码相机topic原始数据日志备份完成，备份日志名称：$back_file5" >> $debug_name "
fi
fi
sleep 0.01
if [ $down_switch -eq 1 ]; then
if [ "$size_rostopic_down" -gt "$max_size_all" ];then
back_file6="$rostopic_down-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_down" "$back_file6"
touch "$rostopic_down"
debug_cmd " echo "$ttime 下视二维码相机topic原始数据日志备份完成，备份日志名称：$back_file6" >> $debug_name "
fi
fi
sleep 0.01
if [ $down_switch -eq 1 ]; then
if [ "$size_rostopic_down_hz" -gt "$max_size_all" ];then
back_file3="$rostopic_down_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$rostopic_down_hz" "$back_file3"
touch "$rostopic_down_hz"
debug_cmd " echo "$ttime 下视二维码相机驱动节点日志备份完成，备份日志名称：$back_file3" >> $debug_name "
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

if [ $usb_devices -eq 1 ]; then
if [ "$size_usb_devices_data" -gt "$max_size_all" ];then
back_file8="$usb_devices_data-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$usb_devices_data" "$back_file8"
touch "$usb_devices_data"
debug_cmd " echo "$ttime 设备所有USB数据详文日志文件备份已完成，备份日志名称：$back_file8" >> $debug_name "
fi
fi

if [ $camera_up_hand -eq 1 ]; then
if [ "$size_roslaunch_up" -gt "$max_size_all" ];then
back_file11="$roslaunch_up-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$roslaunch_up" "$back_file11"
touch "$roslaunch_up"
debug_cmd " echo "$ttime 手动执行上视二维码相机打印日志文件备份已完成，备份日志名称：$back_file11" >> $debug_name "
fi
fi

if [ $camera_down_hand -eq 1 ]; then
if [ "$size_roslaunch_down" -gt "$max_size_all" ];then
back_file12="$roslaunch_down-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$roslaunch_down" "$back_file12"
touch "$roslaunch_down"
debug_cmd " echo "$ttime 手动执行下视二维码相机打印日志文件备份已完成，备份日志名称：$back_file12" >> $debug_name "
fi
fi

if [ $up_switch -eq 1 ]; then
if [ "$size_usb_up_hz" -gt "$max_size_all" ];then
back_file13="$usb_up_hz-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$usb_up_hz" "$back_file13"
touch "$usb_up_hz"
debug_cmd " echo "$ttime usb连接节点日志备份完成，备份日志名称：$back_file13" >> $debug_name "
fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ "$size_camera_usb1" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i usbmon1" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止usb1信道数据抓包进程完成。" >> $debug_name "
back_file14="$tcpdump_usb1-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_usb1" "$back_file14"
debug_cmd " echo "$ttime usb1信道抓包日志文件备份已完成，备份日志名称：$back_file14" >> $debug_name "
touch "$tcpdump_usb1" 
tcpdump -i usbmon1 -w $tcpdump_usb1 &
debug_cmd " echo "$ttime usb1信道数据抓包开始" >> $debug_name "
fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ "$size_camera_usb2" -gt "$max_size" ];then
ps -ef | grep "tcpdump -i usbmon2" |grep -v grep |awk '{print $2}'| xargs kill -9 
debug_cmd " echo "$ttime 终止usb2信道数据抓包进程完成。" >> $debug_name "
back_file15="$tcpdump_usb2-$(date +"%Y-%m-%d-%H-%M-%S")"
mv "$tcpdump_usb2" "$back_file15"
debug_cmd " echo "$ttime usb2信道抓包日志文件备份已完成，备份日志名称：$back_file15" >> $debug_name "
touch "$tcpdump_usb2" 
tcpdump -i usbmon2 -w $tcpdump_usb2 &
debug_cmd " echo "$ttime usb2信道数据抓包开始" >> $debug_name "
fi
fi


debug_cmd " echo "$ttime 判断文件是否大于阈值并执行相关操作流程循环完毕。" >> $debug_name "

#查询文件夹下指定文件的数量


if [ $up_switch -eq 1 ]; then
count1=$(ls -lt ~/lanxin/intel/camera_up/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/camera_up/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count1" >> $debug_name "
fi

if [ $down_switch -eq 1 ]; then
count2=$(ls -lt ~/lanxin/intel/camera_down/rostopic/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/camera_down/rostopic/目录下文件数量”执行完成。当前文件夹下数量为：$count2" >> $debug_name "
fi

count3=$(ls -lt ~/.ros/log/rostopic_*.log | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/.ros/log/rostopic_*.log目录下文件数量”执行完成。当前文件夹下数量为：$count3" >> $debug_name "

count4=$(ls -lt ~/lanxin/debug/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/debug/目录下文件数量”执行完成。当前文件夹下数量为：$count4" >> $debug_name "

count5=$(ls -lt ~/lanxin/intel/computer/cpu/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/cpu/目录下文件数量”执行完成。当前文件夹下数量为：$count5" >> $debug_name "

if [ $usb_devices -eq 1 ]; then
count8=$(ls -lt ~/lanxin/intel/computer/usb/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/usb/目录下文件数量”执行完成。当前文件夹下数量为：$count8" >> $debug_name "
fi

if [ $camera_up_hand -eq 1 ]; then
count9=$(ls -lt ~/lanxin/intel/camera_up/roslaunch_up/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/camera_up/roslaunch_up/目录下文件数量”执行完成。当前文件夹下数量为：$count9" >> $debug_name "
fi

if [ $camera_down_hand -eq 1 ]; then
count10=$(ls -lt ~/lanxin/intel/camera_down/roslaunch_down/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/camera_down/roslaunch_down/目录下文件数量”执行完成。当前文件夹下数量为：$count10" >> $debug_name "
fi

if [ $camputer_var -eq 1 ]; then
count11=$(ls -lt $camputer_varlog | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询$camputer_varlog 目录下文件数量”执行完成。当前文件夹下数量为：$count11" >> $debug_name "
fi

if [ $up_switch -eq 1 ]; then
count12=$(ls -lt ~/lanxin/intel/computer/connection/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/computer/connection/目录下文件数量”执行完成。当前文件夹下数量为：$count12" >> $debug_name "
fi

if [ $camera_tcp -eq 1 ]; then
count13=$(ls -lt ~/lanxin/intel/usb1/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/usb1/wireshark/*目录下文件数量”执行完成。当前文件夹下数量为：$count13" >> $debug_name "
fi

if [ $camera_tcp -eq 1 ]; then
count14=$(ls -lt ~/lanxin/intel/usb2/wireshark/ | grep "^-" | wc -l)
debug_cmd " echo "$ttime “查询~/lanxin/intel/usb2/wireshark/目录下文件数量”执行完成。当前文件夹下数量为：$count14" >> $debug_name "
fi

debug_cmd " echo "$ttime 查询“目录文件数量”步骤已全部执行完成。" >> $debug_name "

#确定文件夹中的文件数是否超过配置值，并执行相关操作

if [ $up_switch -eq 1 ]; then
if [ "$count1" -gt "$max_box" ];then
 old_count1=$(ls -t ~/lanxin/intel/camera_up/rostopic/* | tail -n +$max_box | head -n -1)
xargs rm $old_count1 &
debug_cmd " echo "$ttime “~/lanxin/intel/camera_up/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count1" >> $debug_name "
fi
fi

if [ $down_switch -eq 1 ]; then
if [ "$count2" -gt "$max_box" ];then
 old_count2=$(ls -t ~/lanxin/intel/camera_down/rostopic/* | tail -n +$max_box | head -n -1)
xargs rm $old_count2 &
debug_cmd " echo "$ttime “~/lanxin/intel/camera_down/rostopic/”目录下超过配置数量文件删除已完成。删除文件：$old_count2" >> $debug_name "
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

if [ "$count5" -gt "$max_box" ];then
 old_count5=$(ls -t ~/lanxin/intel/computer/cpu/* | tail -n +$max_box | head -n -1)
xargs rm $old_count5 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/cpu/”目录下超过配置数量文件删除已完成。删除文件：$old_count5" >> $debug_name "
fi

if [ $usb_devices -eq 1 ]; then
if [ "$count8" -gt "$max_box" ];then
 old_count8=$(ls -t ~/lanxin/intel/computer/usb/* | tail -n +$max_box | head -n -1)
xargs rm $old_count8 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/usb/”目录下超过配置数量文件删除已完成。删除文件：$old_count8" >> $debug_name "
fi
fi

if [ $camera_up_hand -eq 1 ]; then
if [ "$count9" -gt "$max_box" ];then
 old_count9=$(ls -t ~/lanxin/intel/camera_up/roslaunch_up/* | tail -n +$max_box | head -n -1)
xargs rm $old_count9 &
debug_cmd " echo "$ttime “~/lanxin/intel/camera_up/roslaunch_up/”目录下超过配置数量文件删除已完成。删除文件：$old_count9" >> $debug_name "
fi
fi

if [ $camera_down_hand -eq 1 ]; then
if [ "$count10" -gt "$max_box" ];then
 old_count10=$(ls -t ~/lanxin/intel/camera_down/roslaunch_down/* | tail -n +$max_box | head -n -1)
xargs rm $old_count10 &
debug_cmd " echo "$ttime “~/lanxin/intel/camera_down/roslaunch_down/”目录下超过配置数量文件删除已完成。删除文件：$old_count10" >> $debug_name "
fi
fi

if [ $camputer_var -eq 1 ]; then
if [ "$count11" -gt "$max_box" ];then
 old_count11=$(ls -t $camputer_varlog/* | tail -n +$max_box | head -n -1)
xargs rm $old_count11 &
debug_cmd " echo "$ttime “$camputer_varlog”目录下超过配置数量文件删除已完成。删除文件：$old_count11" >> $debug_name "
fi
fi

if [ $up_switch -eq 1 ]; then
if [ "$count12" -gt "$max_box" ];then
 old_count12=$(ls -t ~/lanxin/intel/computer/connection/* | tail -n +$max_box | head -n -1)
xargs rm $old_count12 &
debug_cmd " echo "$ttime “~/lanxin/intel/computer/connection/”目录下超过配置数量文件删除已完成。删除文件：$old_count12" >> $debug_name "
fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ "$count13" -gt "$max_box" ];then
 old_count13=$(ls -t ~/lanxin/intel/usb1/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count13 &
debug_cmd " echo "$ttime “~/lanxin/intel/usb1/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count13" >> $debug_name "
fi
fi

if [ $camera_tcp -eq 1 ]; then
if [ "$count14" -gt "$max_box" ];then
 old_count14=$(ls -t ~/lanxin/intel/usb2/wireshark/* | tail -n +$max_box | head -n -1)
xargs rm $old_count14 &
debug_cmd " echo "$ttime “~/lanxin/intel/usb2/wireshark/”目录下超过配置数量文件删除已完成。删除文件：$old_count14" >> $debug_name "
fi
fi


debug_cmd " echo "$ttime 各级目录高于配置文件数量已检测并删除完毕！" >> $debug_name "

if [ $camputer_var -eq 1 ]; then
cp /var/log/syslog $camputer_varlog &
cp /var/log/syslog.* $camputer_varlog &
cp /var/log/kern.* $camputer_varlog &
debug_cmd " echo " $ttime 系统相关日志复制完毕！" >> $debug_name "
fi

#判断定时打印开关是否打开并执行相关操作

if [ "$DEBUG_executions_number" = true ]; then
if [[ $End_Initial_Count -ge $Circulate ]];then 
if [ $camera_tcp -eq 1 ]; then
ps -ef | grep "tcpdump -i usbmon1 -w $tcpdump_usb1" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
if [ $back_switch -eq 1 ]; then
ps -ef | grep "tcpdump -i usbmon2 -w $tcpdump_usb2" |grep -v grep |awk '{print $2}'| xargs kill -9 
fi
debug_cmd " echo "$ttime 当循环次数达到判断阈值，结束打印。" >> $debug_name "
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
