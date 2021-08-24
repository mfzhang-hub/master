#!/bin/bash
SEVER_DIR=/home/lanxin/java-server
BACKUP_DIR=$SEVER_DIR/backup

MAP_SERVICE_DIR=$SEVER_DIR/map-info-service
ROUTE_SERVICE_DIR=$SEVER_DIR/route-service
TRAFIC_SERVICE_DIR=$SEVER_DIR/traffic-management
VEHICLE_SERVICE_DIR=$SEVER_DIR/vehicle-info-service
COMMUNICATION_DIR=$SEVER_DIR/vehicle-communication
WEB_APP_DIR=$SEVER_DIR/dispatch-app
DEVICE_SERVICE_DIR=$SEVER_DIR/device-management
DISPATCHER_SYS_FRONT=$SEVER_DIR/dispatch-sys-front

# 判断备份文件是否存在
if [ ! -d $BACKUP_DIR ];then
		echo "backup dir is empty,operation not allowed"
        exit
fi

# 停止调度服务
ps -ef | grep 'java -Xmx512m' | grep -v grep | awk '{print $2}' |xargs kill -9 
echo "kill dispatcher all succcess"
sleep 5

# 删除当前版本调度
rm -rf $MAP_SERVICE_DIR; echo delete $MAP_SERVICE_DIR success
rm -rf $ROUTE_SERVICE_DIR; echo delete $ROUTE_SERVICE_DIR success
rm -rf $TRAFIC_SERVICE_DIR; echo delete $TRAFIC_SERVICE_DIR success
rm -rf $VEHICLE_SERVICE_DIR; echo delete $VEHICLE_SERVICE_DIR success
rm -rf $COMMUNICATION_DIR; echo delete $COMMUNICATION_DIR success
rm -rf $WEB_APP_DIR; echo delete $WEB_APP_DIR success
rm -rf $DEVICE_SERVICE_DIR; echo delete $DEVICE_SERVICE_DIR success
rm -rf $DISPATCHER_SYS_FRONT; echo delete $DISPATCHER_SYS_FRONT success

# 还原备份版本调度,删除多余数据库脚本文件
cp -p -r $BACKUP_DIR/* $SEVER_DIR
rm -rf $SEVER_DIR/dispatcher.sql
echo revert dir success

# 还原备份数据库
mysql -uroot -p123456 -h127.0.0.1 < $BACKUP_DIR/dispatcher.sql
echo revert db success

# 启动调度服务
cd $MAP_SERVICE_DIR
map=`ls | grep map-info-service-provider*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8 $map >/dev/null 2>&1 &
sleep 5

cd $DEVICE_SERVICE_DIR
device=`ls | grep device-management-service*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8  $device >/dev/null 2>&1 &
sleep 5

cd $ROUTE_SERVICE_DIR
route=`ls | grep route-service-provider*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8  $route >/dev/null 2>&1 &
sleep 5

cd $TRAFIC_SERVICE_DIR
traffic=`ls | grep traffic-management-service-provider*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8  $traffic >/dev/null 2>&1 &
sleep 5

cd $VEHICLE_SERVICE_DIR
vinfo=`ls | grep vehicle-info-service-provider*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8  $vinfo >/dev/null 2>&1 &
sleep 5

cd $COMMUNICATION_DIR
vcommu=`ls | grep vehicle-communication*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8  $vcommu >/dev/null 2>&1 &
sleep 5

cd $WEB_APP_DIR
dapp=`ls | grep dispatch-app*.jar`
nohup java -Xmx512m -Xms128m -XX:NewRatio=4 -XX:SurvivorRatio=4 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log -jar -Duser.timezone=GMT+8  $dapp >/dev/null 2>&1 &

