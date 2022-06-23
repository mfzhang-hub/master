#! /bin/bash
HOME=/home/lanxin
JAVA_HOME="/usr/local/java/jdk1.8.0_291"
cd ${HOME}/lanxin-rcs
RCS_HOME=${HOME}/lanxin-rcs
LIB=./lib
CLASSPATH=${CLASSPATH}:${RCS_HOME}/db-updater/db-updater-1.0-SNAPSHOT-jar-with-dependencies.jar

for jar in ${RCS_HOME}/rcs-stable-version/lib/*.jar
do
 CLASSPATH=${CLASSPATH}:$jar
done
for jar in ${RCS_HOME}/rcs-stable-version/plugin/*.jar
do
 CLASSPATH=${CLASSPATH}:$jar
done

echo ${CLASSPATH}

${JAVA_HOME}/bin/java -cp ${CLASSPATH} -Dfile.encoding=utf8 com.lanxincn.db.updater.DBUpdater $1
