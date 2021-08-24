#!/bin/bash
scp lanxin@192.168.2.152:~/lanxin-rcs/rcs-stable-version/lib/* ./rcs-stable-version/lib
scp lanxin@192.168.2.152:~/lanxin-rcs/rcs-stable-version/plugin/* ./rcs-stable-version/plugin
scp lanxin@192.168.2.152:~/lanxin-rcs/db-updater/db-updater-1.0-SNAPSHOT-jar-with-dependencies.jar ./db-updater
scp -r lanxin@192.168.2.152:~/lanxin-rcs/dist/* ./dist
cd db-updater
sh db-update.sh
cd ../rcs-stable-version/bin
echo "admin123" | sudo -S sh stop.sh
echo "admin123" | sudo -S sh startup.sh -d
