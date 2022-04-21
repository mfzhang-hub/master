@echo off

rem set window title
title db-updater

rem Change the encoding format to UTF-8
chcp 65001

set RCS_HOME=D:\lanxin-rcs

java -Dfile.encoding=utf8 -classpath %RCS_HOME%\db-updater\db-updater-1.0-SNAPSHOT-jar-with-dependencies.jar;%RCS_HOME%\rcs-stable-version\lib\*;%RCS_HOME%\rcs-stable-version\plugin\* com.lanxincn.db.updater.DBUpdater -all

pause
