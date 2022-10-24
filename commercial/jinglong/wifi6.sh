#wifi6\u7f51\u5361\u6d4b\u8bd5\u6253\u5370
#!/bin/bash
echo "wifi6\u7f51\u5361\u6d4b\u8bd5\u5bf9\u6bd4\u8001\u6b3e\u7f51\u5361\u6570\u636e\u60c5\u51b5"
echo "ip.txt\u91cc\u9762\u6309\u7167\u5199\u5165\u6240\u9700ping\u7684ip\u540d\u79f0\uff08\u6b63\u5e38\u662f\u670d\u52a1\u5668\u7684Ip)\u4e2d\u95f4\u4f7f\u7528\u201c.\u201d\u9694\u5f00"
echo "enth.txt\u91cc\u9762\u901a\u8fc7iwconfig\u67e5\u8be2\u5230\u7684\u7f51\u5361\u540d\u79f0\u5199\u5165\u5373\u53ef"

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
    sleep 0.01
    echo $ttime >> ~/JL/wifi/iwconfig_all.log
    iwconfig >> ~/JL/wifi/iwconfig_all.log

    delFile
    sleep 0.01
done