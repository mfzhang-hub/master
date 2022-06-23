#!/bin/sh
# shellcheck disable=SC2046
# shellcheck disable=SC2006
if [ `whoami` != "root" ];then
    echo "用户权限不符合要求，请用 root 用户来执行脚本 stop.sh !!!"
    exit 1;
fi
# shellcheck disable=SC2009
schdulePid=$(ps -ef | grep com.lanxincn.jlego.core.boot.JLegoBoot |grep -v grep | grep -v start.sh | awk '{print $2}'| xargs)
echo "正在关闭调度系统: $schdulePid"
# shellcheck disable=SC2086
if [ "$schdulePid" ]; then
    kill -9 $schdulePid
else
    echo "关闭系统时,找不到已启动的系统"
fi
echo "关闭完成."
