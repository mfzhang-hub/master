#!/bin/bash
# 为了解决通过Java进程调用脚本，又需要杀死Java进程，需要通过本脚本作为入口调用还原脚本执行还原操作
nohup /home/lanxin/rcs_backup/revert.sh >/dev/null 2>&1 &