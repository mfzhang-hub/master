#!/bin/bash
# jar名称
SEVER_DIR=$1
MAP_SERVICE_DIR=$SEVER_DIR/map-info-service
ROUTE_SERVICE_DIR=$SEVER_DIR/route-service
TRAFIC_SERVICE_DIR=$SEVER_DIR/traffic-management
VEHICLE_SERVICE_DIR=$SEVER_DIR/vehicle-info-service
COMMUNICATION_DIR=$SEVER_DIR/vehicle-communication
WEB_APP_DIR=$SEVER_DIR/dispatch-app
DEVICE_SERVICE_DIR=$SEVER_DIR/device-management

CUR_UID=`id -u`
if [ ${CUR_UID} != "0" ]; then
	echo "please run as root"
	exit
fi

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
