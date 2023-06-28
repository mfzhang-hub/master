ttime=`date +"%Y-%m-%d %H:%M:%S.%3N"`

Start_Initial_Count=1 
End_Initial_Count=1 
start_start=$Start_Initial_Count
end_end=$End_Initial_Count

sudo apt-get install stress &

sleep 5

while true
do
sleep 2
echo -e "\033[31m start$Start_Initial_Count \033[0m"
Start_Initial_Count=$((Start_Initial_Count+1))

echo " $ttime "Start $Start_Initial_Count Cycles."" >> ~/debug.log 
echo "$ttime "" 数据循环打印开始！！！" >> ~/debug.log  

sleep 2
stress --cpu 8 &

echo $ttime >> ~/debug.log
top -bn 1 -i -c | head -6 >> ~/debug.log
ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/debug.log
ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/debug.log

sleep 60

ps -ef | grep stress |grep -v grep |awk '{print $2}'| xargs kill -9

sleep 10
echo $ttime >> ~/debug.log
top -bn 1 -i -c | head -6 >> ~/debug.log
ps -eo pid,user,%cpu,%mem,args --sort -%mem | head -8 >> ~/debug.log
ps -eo pid,user,%cpu,%mem,args --sort -%cpu | head -8 >> ~/debug.log
sleep 3

echo -e "\033[32m end$End_Initial_Count \033[0m"
End_Initial_Count=$((End_Initial_Count+1))

done