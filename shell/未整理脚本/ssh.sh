#!/bin/bash  #EOF标准输出作为expect标准输入
USER=root  
PASS=123.com  
IP=192.168.1.120  
expect << EOFset timeout 30spawn ssh $USER@$IP   expect {    "(yes/no)" {send "yes\r"; exp_continue}    "password:" {send "$PASS\r"}  
}  
expect "$USER@*"  {send "$1\r"}  
expect "$USER@*"  {send "exit\r"}  
expect eof  
EOF  


************************** 将expect脚本独立出来
# cat login.exp  
#!/usr/bin/expect  
set ip [lindex $argv 0]  
set user [lindex $argv 1]  
set passwd [lindex $argv 2]  
set cmd [lindex $argv 3]  
if { $argc != 4 } {  
puts "Usage: expect login.exp ip user passwd"  
exit 1  
}  
set timeout 30  
spawn ssh $user@$ip  
expect {      
    "(yes/no)" {send "yes\r"; exp_continue}  
    "password:" {send "$passwd\r"}  
}  
expect "$user@*"  {send "$cmd\r"}  
expect "$user@*"  {send "exit\r"}  
expect eof  

