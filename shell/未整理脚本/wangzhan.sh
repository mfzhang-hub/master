#!/bin/bash  
DATE=$(date +%d/%b/%Y:%H:%M)  
ABNORMAL_IP=$(tail -n5000 access.log |grep $DATE |awk '{a[$1]++}END{for(i in a)if(a[i]>100)print i}')  
#先tail防止文件过大，读取慢，数字可调整每分钟最大的访问量。awk不能直接过滤日志，因为包含特殊字符。  
for IP in $ABNORMAL_IP; do  
    if [ $(iptables -vnL |grep -c "$IP") -eq 0 ]; then  
        iptables -I INPUT -s $IP -j DROP    
        fi
        done  