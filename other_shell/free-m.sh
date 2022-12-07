#!/bin/bash
ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

echo $ttime >> /var/free-m.log

cd /var
sudo fallocate -l 8G swapfile 
sleep 0.1
ls -lh /var/swapfile >> /var/free-m.log
sleep 0.1
sudo chmod 600 swapfile
sleep 0.1
ls -lh swapfile >> /var/free-m.log
sleep 0.1
sudo mkswap swapfile >> /var/free-m.log
sleep 0.1
sudo swapon swapfile
sleep 0.1
sudo swapon --show >> /var/free-m.log
sleep 0.1
sudo cp /etc/fstab /etc/fstab.bak
sleep 0.1
echo '/var/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "执行完毕！！！！"
echo "查看/var/free-m.log 中最下方是否打印 /var/swapfile file   8G   0B   -2" 
