#!/bin/bash

# 需要删除文件的列表
dirs=(/home/fr1511b/.mozilla/extensions/　home/fr1511b/book/RZ /home/fr1511b/.ros/log)

for dir in ${dirs[@]}; 
do
    find $dir -mtime +15 -exec rm -rf {} \;  # 默认删除超过当前时间15天文件,对文件以及文件夹都进行删除
done
