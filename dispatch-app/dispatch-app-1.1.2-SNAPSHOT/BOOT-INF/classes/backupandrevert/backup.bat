@ECHO OFF  
TITLE  dispatch backup  
echo=  
echo=  
set "BASE_URL=D:\lanxin\java-server" 
set "BACKUP_URL=%BASE_URL%\backup"

set "DISPATCH_APP_DIR_NAME=\dispatch-app"
set "MAP_INFO_SERVICE_DIR_NAME=\map-info-service"
set "DEVICE_MANAGEMENT_SERVICE_DIR_NAME=\device-management"
set "VEHICLE_INFO_SERVICE_DIR_NAME=\vehicle-info-service"
set "TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME=\traffic-management"
set "ROUTE_SERVICE_DIR_NAME=\route-service"
set "VEHICLE_COMMUNICATION_DIR_NAME=\vehicle-communication"
set "DISPATCH_SYS_FRONT_DIR_NAME=\dispatch-sys-front"

:: 删除上次备份
if exist %BACKUP_URL% rd /S /Q %BACKUP_URL%

:: 创建文件夹
md %BACKUP_URL%

:: 创建备份文件夹
md %BACKUP_URL%%DISPATCH_APP_DIR_NAME%
md %BACKUP_URL%%MAP_INFO_SERVICE_DIR_NAME%
md %BACKUP_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME%
md %BACKUP_URL%%VEHICLE_INFO_SERVICE_DIR_NAME%
md %BACKUP_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME%
md %BACKUP_URL%%ROUTE_SERVICE_DIR_NAME%
md %BACKUP_URL%%VEHICLE_COMMUNICATION_DIR_NAME%
md %BACKUP_URL%%DISPATCH_SYS_FRONT_DIR_NAME%

:: 后端文件备份开始
echo -----------backup dispatch start-------
xcopy /E /Y /Q /K %BASE_URL%%DISPATCH_APP_DIR_NAME% %BACKUP_URL%%DISPATCH_APP_DIR_NAME% 
echo= 
xcopy /E /Y /Q /K %BASE_URL%%MAP_INFO_SERVICE_DIR_NAME% %BACKUP_URL%%MAP_INFO_SERVICE_DIR_NAME% 
echo= 
xcopy /E /Y /Q /K %BASE_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME% %BACKUP_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME% 
echo= 
xcopy /E /Y /Q /K %BASE_URL%%VEHICLE_INFO_SERVICE_DIR_NAME% %BACKUP_URL%%VEHICLE_INFO_SERVICE_DIR_NAME% 
echo= 
xcopy /E /Y /Q /K %BASE_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME% %BACKUP_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME% 
echo= 
xcopy /E /Y /Q /K %BASE_URL%%ROUTE_SERVICE_DIR_NAME% %BACKUP_URL%%ROUTE_SERVICE_DIR_NAME% 
echo= 
xcopy /E /Y /Q /K %BASE_URL%%VEHICLE_COMMUNICATION_DIR_NAME% %BACKUP_URL%%VEHICLE_COMMUNICATION_DIR_NAME% 
echo -----------backup dispatch end---------
:: 后端文件备份结束
echo=  

:: 前端文件备份开始
echo -----------backup dispatch-sys-front start-------
xcopy /E /Y /Q /K %BASE_URL%%DISPATCH_SYS_FRONT_DIR_NAME% %BACKUP_URL%%DISPATCH_SYS_FRONT_DIR_NAME%
echo -----------backup dispatch-sys-front end-------
:: 前端文件备份结束
echo=  

:: 数据库脚本备份开始
echo -----------backup dispatch db start-------
mysqldump -uroot -p123456 -h127.0.0.1 --databases dispatcher --single-transaction > %BACKUP_URL%\dispatcher.sql
echo -----------backup dispatch db end-------
:: 数据库脚本备份结束
echo=  
echo --------------------------------------------
pause