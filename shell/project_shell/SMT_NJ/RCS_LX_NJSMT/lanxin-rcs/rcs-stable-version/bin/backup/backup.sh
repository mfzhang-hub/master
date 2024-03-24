#!/bin/bash

# 调度系统以及备份目录说明
SERVER_DIR=/home/lanxin
BACKUP_DIR=$SERVER_DIR/rcs_backup/workspace
BACKUP_SERVER_DIR=$BACKUP_DIR/server
BACKUP_SQL_DIR=$BACKUP_DIR/sql

RCS_SERVICE_DIR=$SERVER_DIR/lanxin-rcs
#DISPATCHER_SYS_FRONT=$SERVER_DIR/dispatch-sys-front
# 当前用户的密码，用于sudo执行命令
USER_TOKEN=admin123

#CUR_UID=`id -u`


# 删除上次备份
if [ -d $BACKUP_DIR ];then
rm -rf $BACKUP_DIR
echo delete $BACKUP_DIR success
fi

#创建备份文件夹
mkdir $BACKUP_DIR
mkdir $BACKUP_SERVER_DIR
mkdir $BACKUP_SQL_DIR

#赋权
echo $USER_TOKEN | sudo -S chown -R lanxin:lanxin  $BACKUP_DIR

# 备份调度数据库，默认备份本机数据库
echo -----------backup lanxin-rcs db start-------
echo $USER_TOKEN | sudo -S mysqldump -uroot -p123456 -h127.0.0.1 --databases ercs --single-transaction > $BACKUP_SQL_DIR/ercs.sql
echo -----------backup lanxin-rcs db end-------


# 备份调度系统
echo -----------backup lanxin-rcs start-------
# cp -p -r $RCS_SERVICE_DIR $BACKUP_SERVER_DIR;
rsync -avr --progress $RCS_SERVICE_DIR $BACKUP_SERVER_DIR --exclude rcs-stable-version/logs
echo copy $RCS_SERVICE_DIR success
#cp -p -r $DISPATCHER_SYS_FRONT $BACKUP_DIR; echo copy $DISPATCHER_SYS_FRONT success
echo -----------backup lanxin-rcs end---------