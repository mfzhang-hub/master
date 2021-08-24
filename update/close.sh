#!/bin/bash

CUR_UID=`id -u`
if [ ${CUR_UID} != "0" ]; then
        echo "please run as root"
        exit
fi

if [ "$1" == "all" ]; then
	ps -ef | grep 'java -Xmx512m' | grep -v grep | awk '{print $2}' |xargs kill -9 
	echo "kill succ"
else
	ps -ef | grep 'java -Xmx512m' | grep -v grep | grep $1 | awk '{print $2}' |xargs kill -9
	echo "kill $1 succ"
fi
