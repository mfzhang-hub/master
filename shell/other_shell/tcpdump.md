tcpdump -i any #从所有网卡获取数据包
tcpdump -i eth0 #获取指定网卡的数据包
tcpdump host 192.168.11.11 #抓取包含指定ip的数据包
tcpdump -i eth0 host 192.168.11.11 -w testfile.cap #获取指定网卡和地址的数据包，并写入文件
tcpdump -i eth0 src host 192.168.11.21 and dst host 192.168.11.11 -w testfile.cap #获取指定网卡和地址的数据包，并写入文件
tcpdump -i eth0 src host 192.168.11.21 and dst host 192.168.11.11 -w testfile.cap #指定：网卡、源IP、目的IP，并写入文件
tcpdump -i eth0 src host 192.168.11.21 0r dst host 192.168.11.11 -w testfile.cap #指定：网卡、源IP或目的IP、写入文件
tcpdump -i eth0 port 19999 and src host 192.168.11.21 and dst host 192.168.11.11 #指定：网卡、tcp端口、源IP、目的IP
tcpdump -vv #抓包显示详细信息
tcpdump -i eth0 udp port 19999 #抓取udp包