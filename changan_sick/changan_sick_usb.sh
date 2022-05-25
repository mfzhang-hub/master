#长安项目激光以及二维码相机运行中断连排查日志新增
#!/bin/bash
#save_day=10

	if [ ! -d "~/Changan/SICK/" ];then
	mkdir -p ~/Changan/SICK/
	fi
    if [ ! -d "~/Changan/beifen" ];then
	mkdir -p ~/Changan/beifen
	fi
   if [ ! -d "~/Changan/log" ];then
	mkdir -p ~/Changan/log
	fi
    #rm -r ~/Changan/SICK/*
    sleep 0.1
    
    rm -r ~/Changan/beifen/*
    sleep 0.1
        cd /mnt
    source devel_isolated/setup.bash
function delFile(){
    string=`du ~/Changan/SICK/sick_front_scan.log`
    string=`du ~/Changan/SICK/sick_back_scan.log`
    string=`du ~/Changan/SICK/rostopic_front_scan.log`
    string=`du ~/Changan/SICK/rostopic_back_scan.log`
    string=`du ~/Changan/SICK/cpu_all_ros.log`
    string=`du ~/Changan/SICK/lsusb_camera.log`
    string=`du ~/Changan/SICK/camera_up_image.log`
    string=`du ~/Changan/SICK/camera_down_image.log`
    string=`du ~/Changan/SICK/camera_ros.log`
    string=`du ~/Changan/SICK/scan_front_ros.log`
    string=`du ~/Changan/SICK/scan_back_ros.log`
    string=`du ~/Changan/SICK/pgv100_scan.log`
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
    size=20   

    sleep 0.1
    cp /mnt/src/agv/agv_drivers/lx_camera/config/cyusb.conf /etc/


    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/sick_front_scan.log ~/Changan/SICK/sick_front_scan.log1
    fi	
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/sick_back_scan.log ~/Changan/SICK/sick_back_scan.log1
    fi	
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/rostopic_front_scan.log ~/Changan/SICK/rostopic_front_scan.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/rostopic_back_scan.log ~/Changan/SICK/rostopic_back_scan.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/cpu_all_ros.log ~/Changan/SICK/cpu_all_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/lsusb_camera.log ~/Changan/SICK/lsusb_camera.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/camera_ros.log ~/Changan/SICK/camera_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/scan_front_ros.log ~/Changan/SICK/scan_front_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/scan_back_ros.log ~/Changan/SICK/scan_back_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/camera_down_image.log ~/Changan/SICK/camera_down_image.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/camera_up_image.log ~/Changan/SICK/camera_up_image.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/pgv100_scan.log ~/Changan/SICK/pgv100_scan.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/Changan/SICK/* ~/Changan/beifen
    #sleep 0.1
    tar -zcPvf ~/Changan/log/log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/Changan/beifen 
    #sleep 0.1    
    #rm -r ~/Changan/SICK/*
    sleep 0.1
    rm -r ~/Changan/beifen/* 
    sleep 0.1
    dir=~/Changan/log
    #find ~/Changan/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz" -exec rm -rf {} \;
    ls -1t $dir/* | awk 'NR>250 {print "rm -r "$0}' | bash 
    fi

    
    
    

}
while true
do
    sleep 0.1
    cd /mnt
    source devel_isolated/setup.bash
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/pgv100_scan.log
    rostopic echo -n 1 /pgv100_scan >> ~/Changan/SICK/pgv100_scan.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/cpu_all_ros.log
    top -bn 1 -i -c | head -6 >> ~/Changan/SICK/cpu_all_ros.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/cpu_all_ros.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/Changan/SICK/cpu_all_ros.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/cpu_all_ros.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/Changan/SICK/cpu_all_ros.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/cpu_all_ros.log
    sensors  >> ~/Changan/SICK/cpu_all_ros.log
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/sick_front_scan.log
    ping -c 1 192.168.100.104 >> ~/Changan/SICK/sick_front_scan.log &
    #sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/sick_back_scan.log
    ping -c 1 192.168.100.108 >> ~/Changan/SICK/sick_back_scan.log &
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/rostopic_front_scan.log
    rostopic echo -n 1 /scan_front >> ~/Changan/SICK/rostopic_front_scan.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/rostopic_back_scan.log
    rostopic echo -n 1 /scan_back >> ~/Changan/SICK/rostopic_back_scan.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/lsusb_camera.log 
    lsusb >> ~/Changan/SICK/lsusb_camera.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/camera_ros.log
    ps -ef | grep lx_up_camera_image >> ~/Changan/SICK/camera_ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/camera_ros.log 
    ps -ef | grep lx_down_camera_image >> ~/Changan/SICK/camera_ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/camera_down_image.log
    rostopic echo -n 1 /lx_down_camera_image >> ~/Changan/SICK/camera_down_image.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/camera_up_image.log
    rostopic echo -n 1 /lx_up_camera_image >> ~/Changan/SICK/camera_up_image.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/scan_front_ros.log 
    ps -ef | grep scan_front >> ~/Changan/SICK/scan_front_ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/scan_back_ros.log 
    ps -ef | grep scan_back >> ~/Changan/SICK/scan_back_ros.log &
    sleep 0.01
    delFile
    sleep 0.01
done
