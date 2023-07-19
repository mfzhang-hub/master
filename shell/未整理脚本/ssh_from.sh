#!/bin/bash  
DATE=$(date +"%a %b %e %H:%M") #星期月天时分  %e单数字时显示7，而%d显示07  
ABNORMAL_IP=$(lastb |grep "$DATE" |awk '{a[$3]++}END{for(i in a)if(a[i]>10)print i}')for IP in $ABNORMAL_IP; do  
    if [ $(iptables -vnL |grep -c "$IP") -eq 0 ]; then  
        iptables -I INPUT -s $IP -j DROP    
        fi
        done  