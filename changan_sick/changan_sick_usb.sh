#\u957f\u5b89\u9879\u76ee\u6fc0\u5149\u4ee5\u53ca\u4e8c\u7ef4\u7801\u76f8\u673a\u8fd0\u884c\u4e2d\u65ad\u8fde\u6392\u67e5\u65e5\u5fd7\u65b0\u589e
#!/bin/bash
#save_day=10
sleep 1

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
    #sleep 0.1
    rm -r ~/Changan/beifen/*
    sleep 0.1
function delFile(){
    string=`du ~/Changan/SICK/sick_front_scan.log`
    string=`du ~/Changan/SICK/sick_back_scan.log`
    string=`du ~/Changan/SICK/rostopic_front_scan.log`
    string=`du ~/Changan/SICK/ros.log`
    string=`du ~/Changan/SICK/rostopic_back_scan.log`
    string=`du ~/Changan/SICK/cpu_all_ros.log`
    string=`du ~/Changan/SICK/lsusb_camera.log`
    string=`du ~/Changan/SICK/camera_ros.log`
    string=`du ~/Changan/SICK/scan_front_ros.log`
    string=`du ~/Changan/SICK/scan_back_ros.log`
    #string=`du ~/Changan/SICK/pgv100_scan.log`

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
    size=2700   #\u53ef\u6839\u636e\u73b0\u573a\u9700\u6c42\u4ee5\u53ca\u5b9e\u9645\u65e5\u5fd7\u8f93\u51fa\u5927\u5c0f\u800c\u5b9a


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
    mv ~/Changan/SICK/ros.log ~/Changan/SICK/ros.log1
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
    cp ~/Changan/SICK/* ~/Changan/beifen
    sleep 1
    tar -zcPvf ~/Changan/log/log-$(date +%Y-%m-%d-%H-%M).tar.gz ~/Changan/beifen
    #sleep 0.1    
    #rm -r ~/Changan/SICK/*
    sleep 1
    rm -r ~/Changan/beifen/*
    sleep 0.1
    find ~/Changan/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M).tar.gz" -exec rm -rf {} \;
    fi
}
while true
do

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
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/sick_back_scan.log
    ping -c 1 192.168.100.108 >> ~/Changan/SICK/sick_back_scan.log &
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/rostopic_front_scan.log
    rostopic echo -n 1 /scan_front >> ~/Changan/SICK/rostopic_front_scan.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/Changan/SICK/ros.log
    ps -ef | grep ros >> ~/Changan/SICK/ros.log &
    sleep 0.1
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
