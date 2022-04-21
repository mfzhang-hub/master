#!/bin/bash
set -e

echo ------------- update lanxin-rcs start -------------

RCS_SERVER_USER=$1
RCS_SERVER_PASSWD=$2
RCS_PACKAGE_FILE=$3
PRE_RCS_PROJECT_VERSION=$4

CURRENT_VERSION=${RCS_PACKAGE_FILE#*rcs-}
CURRENT_VERSION=${CURRENT_VERSION%%-*}

echo "RCS_SERVER_USER : ${RCS_SERVER_USER}"
echo "RCS_SERVER_PASSWD : ${RCS_SERVER_PASSWD}"
echo "PRE_RCS_PROJECT_VERSION : ${PRE_RCS_PROJECT_VERSION}"
echo "CURRENT_VERSION : ${CURRENT_VERSION}"

if [ -z "${RCS_SERVER_USER}" ]; then
  RCS_SERVER_USER=lanxin
fi
if [ -z "${RCS_SERVER_PASSWD}" ]; then
  RCS_SERVER_PASSWD=admin123
fi

RCS_SERVER_HOME=/home/${RCS_SERVER_USER}
BACKUP_BASE_DIR=${RCS_SERVER_HOME}/rcs_backup
BACKUP_DIR=${BACKUP_BASE_DIR}/workspace
BACKUP_SERVER_DIR=${BACKUP_DIR}/server
BACKUP_SQL_DIR=${BACKUP_DIR}/sql

UPDATE_BASE_DIR=${RCS_SERVER_HOME}/upgrade
PRE_UPDATE_SQL_DIR=${UPDATE_BASE_DIR}/sql/${PRE_RCS_PROJECT_VERSION}
CURRENT_UPDATE_SQL_DIR=${UPDATE_BASE_DIR}/sql/${CURRENT_VERSION}
RCS_SERVICE_DIR=${RCS_SERVER_HOME}/lanxin-rcs

NOW=`date +%Y%m%d-%H%M`
TEMP_DIR=${RCS_SERVER_HOME}/TMEP-${NOW}

echo -------------- 开始基本检查 -------------
# 赋予权限
echo ${RCS_SERVER_PASSWD} | sudo -S chown -R ${RCS_SERVER_USER}:${RCS_SERVER_USER} ${RCS_SERVICE_DIR}

# 检查调度部署位置是否符合规范
echo "调度默认部署目录 ==>> ${RCS_SERVICE_DIR} "
if [ ! -d ${RCS_SERVICE_DIR} ]; then
  echo "调度默认部署目录 ${RCS_SERVICE_DIR} 不存在!"
  exit 0
fi

echo "更新包全限定名称 ==>> ${RCS_PACKAGE_FILE} "
if [ ! -f ${RCS_PACKAGE_FILE} ];then
  echo "更新部署文件不存在!"
  exit 0
fi

if [ ! -d ${RCS_SERVICE_DIR}/db ];then
  echo "数据库更新文件不存在!"
  exit 0
fi

echo -------------- 基本检查完成 -------------

echo -------------- 开始备份 -------------

# 删除上次备份 或 创建备份目录
if [ -d ${BACKUP_DIR} ]; then
  rm -rf ${BACKUP_DIR}
  echo delete ${BACKUP_DIR} success
fi
mkdir -p ${BACKUP_DIR}
mkdir ${BACKUP_SERVER_DIR}
mkdir ${BACKUP_SQL_DIR}

echo "PRE_UPDATE_SQL_DIR : ${PRE_UPDATE_SQL_DIR} "
if [ ! -d ${PRE_UPDATE_SQL_DIR} ]; then
 mkdir -p ${PRE_UPDATE_SQL_DIR}
fi

echo "开始备份数据库"
#echo ${RCS_SERVER_PASSWD} | sudo -S mysqldump -uroot -p123456 -h127.0.0.1 --databases ercs --single-transaction  | sudo -S tee ${BACKUP_SQL_DIR}/ercs.sql > /dev/null
echo ${RCS_SERVER_PASSWD} | sudo -S mysqldump -uroot -p123456 -h127.0.0.1 --databases ercs --single-transaction > ${BACKUP_SQL_DIR}/ercs.sql
cp -f ${BACKUP_SQL_DIR}/ercs.sql ${PRE_UPDATE_SQL_DIR}/${PRE_RCS_PROJECT_VERSION}.sql
cp -rf ${RCS_SERVICE_DIR}/db  ${PRE_UPDATE_SQL_DIR}
echo "数据库备份结束"

echo "开始备份调度"
rsync -avr --progress ${RCS_SERVICE_DIR} ${BACKUP_SERVER_DIR} --exclude rcs-stable-version/logs
echo "备份调度结束"
echo -------------- 备份完成 -------------

echo -------------- 解压更新包并删除老版调度 -------------
echo "开始解压更新包，并删除老版本调度文件"
mkdir ${TEMP_DIR}
unzip ${RCS_PACKAGE_FILE} -d ${TEMP_DIR}

rm -f ${RCS_SERVICE_DIR}/rcs-stable-version/lib/*
rm -f ${RCS_SERVICE_DIR}/rcs-stable-version/plugin/rcs-web-*-SNAPSHOT-jlego-plugin.jar
find ${RCS_SERVICE_DIR}/dist/* | grep -v '.*.ico' | xargs rm -rf
echo -------------- 并删除老版调度结束 -------------

echo -------------- 开始部署更新包 -------------
cd  ${TEMP_DIR}/lanxin-rcs/rcs-stable-version
cp -rf plugin  ${RCS_SERVICE_DIR}/rcs-stable-version
cp -rf lib  ${RCS_SERVICE_DIR}/rcs-stable-version
#配置文件更新需对比更新，可能不能直接删除原来的配置文件, 本脚本默认不更新配置文件
cp -rf conf ${RCS_SERVICE_DIR}/rcs-stable-version
cp -rf bin  ${RCS_SERVICE_DIR}/rcs-stable-version
cp -rf bin/update ${UPDATE_BASE_DIR}

cd ${TEMP_DIR}/lanxin-rcs/dist
cp -rf ${TEMP_DIR}/lanxin-rcs/dist ${RCS_SERVICE_DIR}

# 清理更新文件临时目录
rm -rf ${TEMP_DIR}
echo -------------- 部署更新包完成 -------------


echo -------------- 关闭调度 -------------
cd ${RCS_SERVICE_DIR}/rcs-stable-version/bin
echo "${RCS_SERVER_PASSWD}" | sudo -S sh stop.sh
echo -------------- 关闭调度完成 -------------


echo -------------- 更新数据库 -------------
if [ -d ${CURRENT_UPDATE_SQL_DIR}/ ]; then
  echo "本次为还原更新"
  mysql -uroot -p123456 -h127.0.0.1 < ${CURRENT_UPDATE_SQL_DIR}/${CURRENT_VERSION}.sql
  cp -rf ${CURRENT_UPDATE_SQL_DIR}/db ${RCS_SERVICE_DIR}
else
  echo "本次为正常更新"
  cd ${RCS_SERVICE_DIR}/db-updater
  sh db-update.sh -all
fi
echo -------------- 更新数据库完成 -------------

echo -------------- 重启调度 -------------
cd ${RCS_SERVICE_DIR}/rcs-stable-version/bin
echo "${RCS_SERVER_PASSWD}" | sudo -S sh startup.sh
echo -------------- 重启调度完成 -------------

# 赋予权限
echo ${RCS_SERVER_PASSWD} | sudo -S chown -R ${RCS_SERVER_USER}:${RCS_SERVER_USER} ${RCS_SERVICE_DIR}
echo -----------update lanxin-rcs end----------