调度启动关闭脚本路径：/home/lanxin/lanxin-rcs/rcs-stable-version/bin
启动指令： sudo sh startup.sh
关闭指令：sudo sh stop.sh

SMT仓WCSjar包放置位置：/home/lanxin/lanxin-rcs/rcs-stable-version/plugin
jar包名字：zx-wcs-plugin-2.1.1-SNAPSHOT-jlego-plugin.jar
更换jar包步骤：关闭调度-删除jar包-放置jar包——打开调度-查看与码头通讯日志是否断开（/home/lanxin/lanxin-rcs/rcs-stable-version/logs/zx下的zxInPlatFrom.log日志，后面打印0则通讯正常，一直打印-1通讯断开，重启plc即可）


zxInPlatFrom.log-入库日志
zxOutPlatFrom.log-出库日志
