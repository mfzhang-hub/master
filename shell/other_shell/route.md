sudo apt install ifmetric 
sudo ifmetric wlp1s0 100

ip route add default via 192.168.4.1 metric 60



#添加一条路由(发往192.168.62这个网段要经过网关192.168.1.1,注意这个是下一跳的网关地址)
route add -net 192.168.62.0 netmask 255.255.255.0 gw 192.168.1.1
并删除一条路由 删除的时候不用写网关(可写可不写)
route del -net 192.168.122.0 netmask 255.255.255.0
#添加到主机的路由，删除将add换成deL
route add -host 192.168.168.11 dev ethe
route add -host 192.168.168.119 gw 192.168.168.1 #注意192.168.168.1下一跳的地址
#添加到网络的路由
route add -net IP netmask MASK etho
route add -net IP netmask MASK gw IP
route add -net IP/24 eth1
#添加默认网关
route add default gw IP
#删除路由
route del-host 192.168.168.11 dev eth0
#修改路由
route change 192.168.3.98 netmask 255.255.255.8 192.168.3.45




