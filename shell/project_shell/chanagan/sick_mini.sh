
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

    #rm -r ~/Changan/logger/*
    sleep 0.1
    rm -r ~/Changan/logger_cp/*
    sleep 0.1
	
function delFile(){
    string=`du ~/Changan/logger/cpu.log`
    string=`du ~/Changan/logger/sick_front_ping.log`
    string=`du ~/Changan/logger/sick_back_ping.log`
    string=`du ~/Changan/logger/rostopic_front_scan.log`
    string=`du ~/Changan/logger/rostopic_back_scan.log`


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
    size=300
    size1=10

    if [ $fileSize -gt $size ] ; then	
    mv ~/Changan/logger/cpu.log ~/Changan/logger/cpu.log1
    mv ~/Changan/logger/sick_front_ping.log ~/Changan/logger/sick_front_ping.log1
    mv ~/Changan/logger/sick_back_ping.log ~/Changan/logger/sick_back_ping.log1
    mv ~/Changan/logger/rostopic_front_scan.log ~/Changan/logger/rostopic_front_scan.log1
    mv ~/Changan/logger/rostopic_back_scan.log ~/Changan/logger/rostopic_back_scan.log1
	fi
	
	if [ $fileSize -gt $size ] ; then
	
    mv ~/Changan/logger/* ~/Changan/logger_cp &

    sleep 1
    tar -zcPvf ~/Changan/log/log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/Changan/logger_cp &
    #sleep 0.1    
    #rm -r ~/Changan/logger/*
	
    sleep 0.1
    dir=~/Changan/log
    #dir1=~/.ros/log

    #find ~/Changan/log -mtime +1 -name "log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz" -exec rm -rf {} \;
    ls -1t $dir/* | awk 'NR>600 {print "rm -r "$0}' | bash 
    #sleep 1
    #ls -1t $dir1/rostopic_*.log | awk 'NR>10 {print "rm -r "$0}' | bash 

    sleep 0.1
    rm -r ~/Changan/logger_cp/*

    fi
    
    if [ $fileSize -gt $size1 ] ; then
   
    sleep 0.1
    dir1=~/.ros/log
    sleep 0.1
    ls -1t $dir1/rostopic_*.log | awk 'NR>5 {print "rm -r "$0}' | bash
    fi
    
    if [ $fileSize -gt $size1 ] ; then
   
    sleep 0.1
    dir1=~/.ros/log
    sleep 0.1
    ls -1t $dir1/rostopic_*.log | awk 'NR>5 {print "rm -r "$0}' | bash
    fi

    

}

    


while true
do
    

    sleep 0.1

    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`


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
    sensors  >> ~/Changan/logger/cpu.log
    sleep 0.01
    echo $ttime >> ~/Changan/logger/sick_front_ping.log
    ping -c 1 192.168.100.104 >> ~/Changan/logger/sick_front_ping.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/sick_back_ping.log
    ping -c 1 192.168.100.107 >> ~/Changan/logger/sick_back_ping.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/rostopic_front_scan.log
    rostopic echo -n 1 /scan_front --noarr >> ~/Changan/logger/rostopic_front_scan.log &
    sleep 0.01
    echo $ttime >> ~/Changan/logger/rostopic_back_scan.log
    rostopic echo -n 1 /scan_back --noarr >> ~/Changan/logger/rostopic_back_scan.log &

    delFile
    sleep 0.01
done
