#!/bin/bash

# 调度系统以及备份目录说明
SERVER_DIR=/home/lanxin
BACKUP_DIR=$SERVER_DIR/rcs_backup/workspace
BACKUP_SERVER_DIR=$BACKUP_DIR/server
BACKUP_SQL_DIR=$BACKUP_DIR/sql

RCS_SERVICE_DIR=$SERVER_DIR/lanxin-rcs
RCS_SERVICE_START_DIR=$RCS_SERVICE_DIR/rcs-stable-version

# 当前用户的密码，用于sudo执行命令
USER_TOKEN=admin123


# 停止调度服务
RCS_PID=$(ps -ef | grep 'JLego' | grep -v grep | awk '{print $2}')
echo $USER_TOKEN | sudo -S kill -9 $RCS_PID
echo "kill lanxin-rcs all succcess"
sleep 5

# 删除当前版本
cd $RCS_SERVICE_DIR
#find . -type 'd' | grep -v "logs" | xargs rm -rf
ls | grep -v rcs-stable-version | xargs rm -rf
cd rcs-stable-version
ls | grep -v logs | xargs rm -rf
echo delete $RCS_SERVICE_DIR success

# 还原备份版本调度
echo $USER_TOKEN | sudo -S rsync -avr --progress $BACKUP_SERVER_DIR/lanxin-rcs/ $SERVER_DIR/lanxin-rcs/
echo revert dir success

# 还原备份数据库
mysql -uroot -p123456 -h127.0.0.1 < $BACKUP_SQL_DIR/ercs.sql
echo revert db success

# 启动调度服务
cd $RCS_SERVICE_START_DIR/bin
echo $USER_TOKEN | sudo -S  /bin/bash ./startup.sh -d
sleep 5