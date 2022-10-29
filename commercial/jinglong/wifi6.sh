#wifi6网卡测试打印
#!/bin/bash
echo "wifi6网卡测试对比老款网卡数据情况"
echo "ip.txt里面按照写入所需ping的ip名称（正常是服务器的Ip)中间使用“.”隔开"
echo "enth.txt里面通过iwconfig查询到的网卡名称写入即可"
if [ ! -d "~/JL/wifi/" ];then
  mkdir -p ~/JL/wifi/
  else
  echo "\u6587\u4ef6\u5939\u5df2\u5b58\u5728"
  fi
    if [ ! -d "~/JL/CP" ];then
  mkdir -p ~/JL/CP
  else
  echo "\u6587\u4ef6\u5939\u5df2\u5b58\u5728"
  fi
    if [ ! -d "~/JL/log" ];then
  mkdir -p ~/JL/log
  else
  echo "\u6587\u4ef6\u5939\u5df2\u5b58\u5728"
  fi
  

  if [ ! -f "~/JL/wifi/ip" ];then
  touch ~/JL/wifi/ip
  else
  echo "\u6587\u4ef6\u5939\u5df2\u5b58\u5728"
  fi


sudo chmod +x /root/JL/wifi/*

  function delFile(){

    string=`du ~/JL/wifi/ping.log`
    string=`du ~/JL/wifi/iwconfig.log`
    string=`du ~/JL/wifi/iwconfig_all.log`



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
    size=200


    if [ $fileSize -gt $size ] ; then
    mv ~/JL/wifi/ping.log ~/JL/wifi/ping.log1 
    mv ~/JL/wifi/iwconfig.log ~/JL/wifi/iwconfig.log1
    mv ~/JL/wifi/iwconfig_all.log ~/JL/wifi/iwconfig_all.log1
    fi

    if [ $fileSize -gt $size ] ; then
    mv ~/JL/wifi/* ~/JL/CP &
    sleep 1
    tar -zcPvf ~/JL/log/log-$(date +%Y-%m-%d-%H-%M-%S).tar.gz ~/JL/CP &

    dir=~/JL/log
    ls -1t $dir/* | awk 'NR>100 {print "rm -r "$0}' | bash 

    sleep 1
    rm -r ~/JL/CP/* 
    fi


  }

while true
do
    cd ~/JL/wifi
    ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`
    echo $ttime >> ~/JL/wifi/ping.log
    cat ip | xargs -n1 ping -c 1 >> ~/JL/wifi/ping.log
    sleep 0.01
    echo $ttime >> ~/JL/wifi/iwconfig.log
    iwconfig wlp3s0 | grep -i --color quality >> ~/JL/wifi/iwconfig.log 
    #wlp3s0替换为实际无线网卡名称，使用ifconfif查看
    sleep 0.01
    echo $ttime >> ~/JL/wifi/iwconfig_all.log
    iwconfig >> ~/JL/wifi/iwconfig_all.log

    delFile
    sleep 0.01
done