#!/bin/bash
#按照实际查询的无线网络接口名称进行填写
net_interface=wlp3s0
#设置目标ip用于ping包
ip=192.168.9.100
#ping包次数设置（ping多少次获取一下信号强度）
num=100
date_time=$(date +"%Y-%m-%d %H:%M:%S")

while true; do
	#获取当前网络信号强度
	echo "$date_time 当前无线网卡信号强度为："  `cat /proc/net/wireless | grep $net_interface | awk '{print $4}'`
	#获取当前网络信号强度      	
	ping -c $num $ip | while read result
	do
		echo "$date_time ${result}"i
	done
done


