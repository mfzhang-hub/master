#!/bin/bash

# 需要删除文件的列表
dirs=(/home/fr1511b/book/tmp/1 /home/fr1511b/book/tmp/2)

for dir in ${dirs[@]}; 
do
    find $dir -type f -mtime +15 -exec rm -f {} \;  # 默认删除超过当前时间15天文件,对文件夹不进行删除
done
