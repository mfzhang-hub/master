#! /bin/bash
cd /home/lanxin/lanxin-rcs
RCS_HOME=/home/lanxin/lanxin-rcs
LIB=./lib
CLASSPATH=${CLASSPATH}:${RCS_HOME}/db-updater/db-updater-1.0-SNAPSHOT-jar-with-dependencies.jar

for jar in ${RCS_HOME}/rcs-*/lib/*.jar
do
 CLASSPATH=${CLASSPATH}:$jar
done
for jar in ${RCS_HOME}/rcs-*/plugin/*.jar
do
 CLASSPATH=${CLASSPATH}:$jar
done

echo ${CLASSPATH}

java -cp ${CLASSPATH} -Dfile.encoding=utf8 com.lanxincn.db.updater.DBUpdater $1
