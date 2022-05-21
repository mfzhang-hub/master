#长安项目激光以及二维码相机运行中断连排查日志新增
#!/bin/bash
#save_day=10
	if [ ! -d "~/SCIK/" ];then
	mkdir -p ~/SICK/
	fi
function delFile(){
    string=`du ~/SICK/sick_front_scan.log`
    string=`du ~/SICK/sick_back_scan.log`
    string=`du ~/SICK/rostopic_front_scan.log`
    string=`du ~/SICK/ros.log`
    string=`du ~/SICK/rostopic_back_scan.log`
    string=`du ~/SICK/cpu_all_ros.log`
    string=`du ~/SICK/lsusb_camera.log`
    string=`du ~/SICK/camera_ros.log`
    string=`du ~/SICK/scan_front_ros.log`
    string=`du ~/SICK/scan_back_ros.log`
    #string=`du ~/SICK/pgv100_scan.log`

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
    size=200000   #可根据现场需求以及实际日志输出大小而定

    #SOURCE_FILES_PATH="string"
    #TARGET_FILES_PATH="string"
    
#if [ ! -d ${TARGET_FILES_PATH} ] ; then
    #mkdir -pv $TARGET_FILES_PATH
#fi
    #tarName=$(date +%Y-%m-%d-%H:%M:%S)
    #tar $TARGET_FILES_PATH/${tarName}.tar.gz $(find ${SOURCE_FILES_PATH} -type f -atime -7 -name "*.log.*")
#if [ -f ${$TARGET_FILES_PATH}/${tarName}.tar.gz]; then
    #echo "=====================备份成功================"
#else  
   #echo  "=====================备份失败================"

#fi

    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/sick_front_scan.log ~/SICK/sick_front_scan.log1
    fi	
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/sick_back_scan.log ~/SICK/sick_back_scan.log1
    fi	
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/rostopic_front_scan.log ~/SICK/rostopic_front_scan.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/rostopic_back_scan.log ~/SICK/rostopic_back_scan.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/cpu_all_ros.log ~/SICK/cpu_all_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/lsusb_camera.log ~/SICK/lsusb_camera.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/ros.log ~/SICK/ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/camera_ros.log ~/SICK/camera_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/scan_front_ros.log ~/SICK/scan_front_ros.log1
    fi
    if [ $fileSize -gt $size ] ; then
    mv ~/SICK/scan_back_ros.log ~/SICK/scan_back_ros.log1
    fi
    #if [ $fileSize -gt $size ] ; then
    #mv ~/SICK/pgv100_scan.log ~/SICK/pgv100_scan.log1
    #fi


}
while true
do
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/sick_front_scan.log
    #echo "开始查询" >> ~/SICK/sick_front_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/sick_back_scan.log
    #echo "开始查询" >> ~/SICK/sick_back_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/rostopic_front_scan.log
    #echo "开始查询" >> ~/SICK/rostopic_front_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/rostopic_back_scan.log
    #echo "开始查询" >> ~/SICK/rostopic_back_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/cpu_all_ros.log
    #echo "开始查询" >> ~/SICK/cpu_all_ros.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/lsusb_camera.log
    #echo "开始查询" >> ~/SICK/lsusb_camera.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

#cd /mnt

#source devel_isolated/setup.bash &


#destination_front_ip=192.168.100.104
#if ping -c1 $destination_front_ip &> ~/SICK/sick_front_scan.log
#then 
#echo "$destination_front_ip is online."
#else
#echo "$destination_front_ip is offline."
#fi




    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/cpu_all_ros.log
    top -bn 1 -i -c | head -6 >> ~/SICK/cpu_all_ros.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/cpu_all_ros.log
    ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/SICK/cpu_all_ros.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/cpu_all_ros.log
    ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/SICK/cpu_all_ros.log
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/cpu_all_ros.log
    sensors  >> ~/SICK/cpu_all_ros.log
    sleep 0.1
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/cpu_all_ros.log
    #ps -eo pid,user,%cpu,%mem,args --sort -user | head -8 >> ~/SICK/cpu_all_ros.log   //user测试使用实际是否使用依照个人而定
    #sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/sick_front_scan.log
    ping -c 1 192.168.100.104 >> ~/SICK/sick_front_scan.log &
    sleep 0.1
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/sick_back_scan.log
    ping -c 1 192.168.100.108 >> ~/SICK/sick_back_scan.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/rostopic_front_scan.log
    rostopic echo /scan_front >> ~/SICK/rostopic_front_scan.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/ros.log
    ps -ef | grep ros >> ~/SICK/ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/rostopic_back_scan.log
    rostopic echo /scan_back >> ~/SICK/rostopic_back_scan.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/lsusb_camera.log 
    lsusb >> ~/SICK/lsusb_camera.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/camera_ros.log 
    ps -ef | grep lx_up_camera_image >> ~/SICK/camera_ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/camera_ros.log 
    ps -ef | grep lx_down_camera_image >> ~/SICK/camera_ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/scan_front_ros.log 
    ps -ef | grep scan_front >> ~/SICK/scan_front_ros.log &
    sleep 0.01
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/SICK/scan_back_ros.log 
    ps -ef | grep scan_back >> ~/SICK/scan_back_ros.log &
    sleep 0.01
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/pgv100_scan.log 
    #rostopic echo /pgv100_scan >> ~/SICK/pgv100_scan.log &
    #sleep 0.01
     

    #====================以下是否开启查看单模块根据日志读取是否为s-c方式===========================

    #echo $ttime >> ~/SICK/sick_front_scan.log
    #echo "结束查询" >> ~/SICK/sick_front_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/sick_back_scan.log
    #echo "结束查询" >> ~/SICK/sick_back_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/rostopic_front_scan.log
    #echo "结束查询" >> ~/SICK/rostopic_front_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/rostopic_back_scan.log
    #echo "结束查询" >> ~/SICK/rostopic_back_scan.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/cpu_all_ros.log
    #echo "结束查询" >> ~/SICK/cpu_all_ros.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/lsusb_camera.log
    #echo "结束查询" >> ~/SICK/lsusb_camera.log
    #ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    #echo $ttime >> ~/SICK/lsusb_camera.log
    delFile
    sleep 0.01
done
