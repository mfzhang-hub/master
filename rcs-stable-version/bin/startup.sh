#! /bin/bash
# shellcheck disable=SC2046
# shellcheck disable=SC2006
if [ `whoami` != "root" ];then
    echo "用户权限不符合要求，请用 'sudo sh startup.sh' 重新执行该脚本."
    exit 1;
fi

JAVA_HOME="/usr/local/java/jdk1.8.0_291"

cd ..
CLASSPATH=$CLASSPATH:./conf
for jar in ./lib/*.jar
do
 CLASSPATH=$CLASSPATH:$jar
done
for jar in ./plugin/*.jar
do
 CLASSPATH=$CLASSPATH:$jar
done
# shellcheck disable=SC2009
schdulePid=$(ps -ef | grep com.lanxincn.jlego.core.boot.JLegoBoot |grep -v grep | grep -v start.sh | awk '{print $2}'| xargs)
if [ "$schdulePid" ]; then
  echo "已经存在运行中的系统,本次启动失败。"
  exit 1;
fi
#echo "$CLASSPATH"

if [ "$1" ] ;then
   # shellcheck disable=SC2193
   if [ "$1" = "-d" ]; then
       nohup "${JAVA_HOME}"/bin/java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9090 -cp "${CLASSPATH}" -Xms256m -Xmx512m -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log  -Duser.timezone=GMT+8 -Dfile.encoding=utf8 com.lanxincn.jlego.core.boot.JLegoBoot >/dev/null 2>&1 &
       echo "系统启动成功, 并已经成功启用远程debug功能."
   else
       echo "错误参数：$1"
   fi
else
    nohup "${JAVA_HOME}"/bin/java -cp "${CLASSPATH}" -Xms256m -Xmx512m -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:./gc.log  -Duser.timezone=GMT+8 -Dfile.encoding=utf8 com.lanxincn.jlego.core.boot.JLegoBoot >/dev/null 2>&1 &
    echo "启动成功,但是没有开启远程debug功能,如需开启远程debug功能,请先关闭程序(执行stop.sh脚本),再执行'sudo sh startup.sh -d'"
fi
