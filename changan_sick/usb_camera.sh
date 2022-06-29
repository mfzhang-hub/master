
#!/bin/bash
#save_day=10

	if [ ! -d "~/Changan/logger/" ];then
	mkdir -p ~/Changan/logger/
	fi
        if [ ! -d "~/Changan/logger_cp" ];then
	mkdir -p ~/Changan/logger_cp
	fi
       if [ ! -d "~/Changan/log" ];then
	mkdir -p ~/Changan/log
	fi
       if [ ! -d "~/Changan/usb_wireshark1/" ];then
	mkdir -p ~/Changan/usb_wireshark1/
	fi
       if [ ! -d "~/Changan/usb_wireshark2/" ];then
	mkdir -p ~/Changan/usb_wireshark2/
	fi
	if [ ! -d "~/Changan/usb_cp1/" ];then
	mkdir -p ~/Changan/usb_cp1/
	fi
	if [ ! -d "~/Changan/usb_cp2/" ];then
	mkdir -p ~/Changan/usb_cp2/
	fi
    if [ ! -d "~/Changan/roslaunch_camera/" ];then
	mkdir -p ~/Changan/roslaunch_camera/
	fi

    #rm -r ~/Changan/logger/*
    sleep 0.1
    modprobe usbmon
    sleep 0.1
    rm -r ~/Changan/logger_cp/*
	rm -r ~/Changan/usb_cp1/*
	rm -r ~/Changan/usb_cp2/*
    sleep 0.1
    cameradown_pid=`ps -ef | grep lx_camera_down | grep -v grep | awk '{print $2}'`
    echo "find result: $cameradown_pid "
    echo "robot" | sudo -S kill -9 $cameradown_pid
    sleep 0.5
    cameraup_pid=`ps -ef | grep lx_camera_up | grep -v grep | awk '{print $2}'`
    echo "find result: $cameraup_pid "
    echo "robot" | sudo -S kill -9 $cameraup_pid
    sleep 0.6  
	
    cd /mnt
    source devel_isolated/setup.bash

    ctime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

    echo $ctime >> ~/Changan/roslaunch_camera/roslaunch_up_camera.log &
    roslaunch lx_camera lx_camera_up.launch >> ~/Changan/roslaunch_camera/roslaunch_up_camera.log &
    sleep 0.1 
    echo $ctime >> ~/Changan/roslaunch_camera/roslaunch_down_camera.log &
    roslaunch lx_camera lx_camera_down.launch >> ~/Changan/roslaunch_camera/roslaunch_down_camera.log &
    sleep 0.1


function delFile(){
    string=`du ~/Changan/logger/camera_down_pgv.log`
    string=`du ~/Changan/logger/cpu.log`
    string=`du ~/Changan/logger/sick_front_ping.log`
    string=`du ~/Changan/logger/sick_back_ping.log`
    string=`du ~/Changan/logger/ping_internet.log`
    string=`du ~/Changan/logger/rostopic_front_scan.log`
    string=`du ~/Changan/logger/rostopic_back_scan.log`
    string=`du ~/Changan/logger/lsusb.log`
    string=`du ~/Changan/logger/roslaunch_grep.log`
    string=`du ~/Changan/logger/camera_image_grep.log`
    string=`du ~/Changan/logger/rostopic_camera_down_image.log`
    string=`du ~/Changan/logger/rostopic_camera_up_image.log`
    string=`du ~/Changan/logger/scan_front_grep.log`
    string=`du ~/Changan/logger/scan_back_grep.log`
	string=`du ~/Changan/logger/usb_cat.log`

    OLD_IFS="$IFS"
    IFS=" "
    array=($string)
    IFS="$OLD_IFS"

    fileSize=0
    for var in ${array[@]}
    do
    fileSize=$var
    break
    done
    echo $fileSize
    size=52
    size_ros=12

    sleep 0.1
    cp /mnt/src/agv/agv_drivers/lx_camera/config/cyusb.conf /etc/

    

    cd /mnt
    source devel_isolated/setup.bash

    


    sleep 0.1
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/logger/camera_down_pgv.log ~/Changan/logger/camera_down_pgv.log1	
    mv ~/Changan/logger/cpu.log ~/Changan/logger/cpu.log1
    mv ~/Changan/logger/sick_front_ping.log ~/Changan/logger/sick_front_ping.log1
    mv ~/Changan/logger/sick_back_ping.log ~/Changan/logger/sick_back_ping.log1   
    mv ~/Changan/logger/ping_internet.log ~/Changan/logger/ping_internet.log1
    mv ~/Changan/logger/rostopic_front_scan.log ~/Changan/logger/rostopic_front_scan.log1
    mv ~/Changan/logger/rostopic_back_scan.log ~/Changan/logger/rostopic_back_scan.log1
    mv ~/Changan/logger/lsusb.log ~/Changan/logger/lsusb.log1
    mv ~/Changan/logger/roslaunch_grep.log ~/Changan/logger/roslaunch_grep.log1
    mv ~/Changan/logger/camera_image_grep.log ~/Changan/logger/camera_image_grep.log1
    mv ~/Changan/logger/rostopic_camera_down_image.log ~/Changan/logger/rostopic_camera_down_image.log1
    mv ~/Changan/logger/rostopic_camera_up_image.log ~/Changan/logger/rostopic_camera_up_image.log1
    mv ~/Changan/logger/scan_front_grep.log ~/Changan/logger/scan_front_grep.log1
	mv ~/Changan/logger/scan_back_grep.log ~/Changan/logger/scan_back_grep.log1
	mv ~/Changan/logger/usb_cat.log ~/Changan/logger/usb_cat.log1
	fi
	
	if [ $fileSize -gt $size ] ; then
	
    mv ~/Changan/logger/* ~/Changan/logger_cp &
	mv ~/Changan/usb_wireshark1/* ~/Changan/usb_cp1/ &
	mv ~/Changan/usb_wireshark2/* ~/Changan/usb_cp2/ &

    sleep 1
    tar -zcPvf ~/Changan/log/log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/Changan/logger_cp &
    tar -zcPvf ~/Changan/log/usb_wireshark1-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/Changan/usb_cp1 &
     tar -zcPvf ~/Changan/log/usb_wireshark2-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/Changan/usb_cp2 &
    #sleep 0.1    
    #rm -r ~/Changan/logger/*
    sleep 4
    rm -r ~/Changan/logger_cp/* 
	rm -r ~/Changan/usb_cp1/*
	rm -r ~/Changan/usb_cp2/*
	

    sleep 2
	
	ps -ef | grep tcpdump |grep -v grep |awk '{print $2}'| xargs kill -9 
    sleep 0.5
     
	
    sleep 0.1
    dir=~/Changan/log
    dir1=~/Changan/usb_cp1
    dir2=~/Changan/usb_cp2
    #find ~/Changan/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz" -exec rm -rf {} \;
    ls -1t $dir/* | awk 'NR>200 {print "rm -r "$0}' | bash 
    ls -1t $dir1/* | awk 'NR>200 {print "rm -r "$0}' | bash 
    ls -1t $dir2/* | awk 'NR>200 {print "rm -r "$0}' | bash
    fi

    if [ $fileSize -gt $size ] ; then
    sleep 0.1
    dir_ros=~/.ros/log
    ls -1t $dir_ros/rostopic_*.log | awk 'NR>6 {print "rm -r "$0}' | bash
    fi


    

}

    


while true
do
    

    sleep 0.1
    cd /mnt
    source devel_isolated/setup.bash
    sleep 0.1

    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`


    echo $ttime >> ~/Changan/logger/camera_down_pgv.log
    rostopic echo -n 1 /pgv100_scan >> ~/Changan/logger/camera_down_pgv.log & 
    sleep 0.01
    echo $ttime >> ~/Changan/logger/cpu.log
    top -bn 1 -i -c | head -6 >> ~/Changan/logger/cpu.log
    sleep 0.01
    echo $ttime >> ~/Changan/logger/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/Changan/logger/cpu.log
    sleep 0.01
    echo $ttime >> ~/Changan/logger/cpu.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/Changan/logger/cpu.log
    sleep 0.01
	echo $ttime >> ~/Changan/logger/cpu.log
    free -m >> ~/Changan/logger/cpu.log
    sleep 0.1
    echo $ttime >> ~/Changan/logger/cpu.log
    df -hl >> ~/Changan/logger/cpu.log
    sleep 0.1
    echo $ttime >> ~/Changan/logger/cpu.log
    sensors  >> ~/Changan/logger/cpu.log
    sleep 0.01
    echo $ttime >> ~/Changan/logger/sick_front_ping.log
    ping -c 1 192.168.100.104 >> ~/Changan/logger/sick_front_ping.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/sick_back_ping.log
    ping -c 1 192.168.100.108 >> ~/Changan/logger/sick_back_ping.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/ping_internet.log
    ping -c 1 192.168.22.1 >> ~/Changan/logger/ping_internet.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/rostopic_front_scan.log
    rostopic echo -n 1 /scan_front >> ~/Changan/logger/rostopic_front_scan.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/rostopic_back_scan.log
    rostopic echo -n 1 /scan_back >> ~/Changan/logger/rostopic_back_scan.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/lsusb.log 
    lsusb >> ~/Changan/logger/lsusb.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/roslaunch_grep.log
    ps -ef | grep roslaunch >> ~/Changan/logger/roslaunch_grep.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/camera_image_grep.log
    ps -ef | grep lx_up_camera_image >> ~/Changan/logger/camera_image_grep.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/camera_image_grep.log 
    ps -ef | grep lx_down_camera_image >> ~/Changan/logger/camera_image_grep.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/rostopic_camera_down_image.log
    rostopic echo -n 1 /lx_down_camera_image >> ~/Changan/logger/rostopic_camera_down_image.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/rostopic_camera_up_image.log
    rostopic echo -n 1 /lx_up_camera_image >> ~/Changan/logger/rostopic_camera_up_image.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/scan_front_grep.log 
    ps -ef | grep scan_front >> ~/Changan/logger/scan_front_grep.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/scan_back_grep.log 
    ps -ef | grep scan_back >> ~/Changan/logger/scan_back_grep.log &
    sleep 0.01
    tcpdump -i usbmon1 -w ~/Changan/usb_wireshark1/usbmon1-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    tcpdump -i usbmon2 -w ~/Changan/usb_wireshark2/usbmon2-$(date +%Y-%m-%d-%H-%M-%S-%3N).pcap &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/usb_cat.log 
    cat /sys/kernel/debug/usb/devices >> ~/Changan/logger/usb_cat.log &

    delFile
    sleep 0.01
done
