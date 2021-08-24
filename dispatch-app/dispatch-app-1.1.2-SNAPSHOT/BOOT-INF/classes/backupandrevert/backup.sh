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

CUR_UID=`id -u`
#if [ ${CUR_UID} != "0" ]; then
#	echo "please run as root"
#	exit
#fi

# 删除上次备份
if [ -d $BACKUP_DIR ];then
rm -rf $BACKUP_DIR
echo delete $BACKUP_DIR success
fi

#创建备份文件夹
mkdir $BACKUP_DIR

echo -----------backup dispatch start-------
cp -p -r $MAP_SERVICE_DIR $BACKUP_DIR; echo copy $MAP_SERVICE_DIR success
cp -p -r $ROUTE_SERVICE_DIR $BACKUP_DIR; echo copy $ROUTE_SERVICE_DIR success
cp -p -r $TRAFIC_SERVICE_DIR $BACKUP_DIR; echo copy $TRAFIC_SERVICE_DIR success
cp -p -r $VEHICLE_SERVICE_DIR $BACKUP_DIR; echo copy $VEHICLE_SERVICE_DIR success
cp -p -r $COMMUNICATION_DIR $BACKUP_DIR; echo copy $COMMUNICATION_DIR success
cp -p -r $WEB_APP_DIR $BACKUP_DIR; echo copy $WEB_APP_DIR success
cp -p -r $DEVICE_SERVICE_DIR $BACKUP_DIR; echo copy $DEVICE_SERVICE_DIR success
cp -p -r $DISPATCHER_SYS_FRONT $BACKUP_DIR; echo copy $DISPATCHER_SYS_FRONT success
echo -----------backup dispatch end---------

echo -----------backup dispatch db start-------
mysqldump -uroot -p123456 -h127.0.0.1 --databases dispatcher --single-transaction > $BACKUP_DIR/dispatcher.sql
echo -----------backup dispatch db end-------

#赋权
chmod -R 755 $BACKUP_DIR
