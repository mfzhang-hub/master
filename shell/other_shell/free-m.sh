#!/bin/bash

ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

echo $ttime >> ~/free-m.log

cd /var
sudo fallocate -l 8G swapfile 
sleep 0.1
ls -lh /var/swapfile >> ~/free-m.log
sleep 0.1
sudo chmod 600 swapfile
sleep 0.1
ls -lh swapfile >> ~/free-m.log
sleep 0.1
sudo mkswap swapfile >> ~/free-m.log
sleep 0.1
sudo swapon swapfile
sleep 0.1
sudo swapon --show >> ~/free-m.log
sleep 0.1
sudo cp /etc/fstab /etc/fstab.bak
sleep 0.1
echo '/var/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
free -m >> ~/free-m.log
free -m 
echo "执行完毕！！！！"
echo "查看~/free-m.log 中最下方是否打印交换区信息"
echo "如执行重启后存在网络优先级变化，请确认当前wifi连接网段执行下述指令：ip route add default via 网关 metric 60" >> ~/free-m.log
echo "5秒后自动执行reboot执行重启指令"

for ((i=5; i>0; i--))
do
    echo "$i"
    sleep 1
done

reboot
