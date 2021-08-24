@ECHO OFF  
TITLE  dispatch revert  
echo=  
echo=  
set "BASE_URL=D:\lanxin\java-server" 
set "BACKUP_URL=%BASE_URL%\backup"

:: 服务版本号
set "VERSION=1.1.0"

:: 服务名
set "DISPATCH_APP=dispatch-app-%VERSION%-SNAPSHOTService"
set "MAP_INFO_SERVICE=map-info-service-provider-%VERSION%-SNAPSHOTService"
set "DEVICE_MANAGEMENT_SERVICE=device-management-service-provider-%VERSION%-SNAPSHOTService"
set "VEHICLE_INFO_SERVICE=vehicle-info-service-provider-%VERSION%-SNAPSHOTService"
set "TRAFFIC_MANAGEMENT_SERVICE=traffic-management-service-provider-%VERSION%-SNAPSHOTService"
set "ROUTE_SERVICE=route-service-provider-%VERSION%-SNAPSHOTService"
set "VEHICLE_COMMUNICATION=vehicle-communication-%VERSION%-SNAPSHOTService"
:: 文件名
set "DISPATCH_APP_DIR_NAME=\dispatch-app"
set "MAP_INFO_SERVICE_DIR_NAME=\map-info-service"
set "DEVICE_MANAGEMENT_SERVICE_DIR_NAME=\device-management"
set "VEHICLE_INFO_SERVICE_DIR_NAME=\vehicle-info-service"
set "TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME=\traffic-management"
set "ROUTE_SERVICE_DIR_NAME=\route-service"
set "VEHICLE_COMMUNICATION_DIR_NAME=\vehicle-communication"
set "DISPATCH_SYS_FRONT_DIR_NAME=\dispatch-sys-front"

:: 效验下备份的文件是否存在  不存在则不执行下列脚本
if not exist %BACKUP_URL% exit

:: 停止调度服务
net stop %DISPATCH_APP%
net stop %VEHICLE_COMMUNICATION% 
net stop %ROUTE_SERVICE%
net stop %TRAFFIC_MANAGEMENT_SERVICE%
net stop %VEHICLE_INFO_SERVICE%
net stop %DEVICE_MANAGEMENT_SERVICE%
net stop %MAP_INFO_SERVICE%


:: 删除调度服务
sc delete %VEHICLE_COMMUNICATION% 
sc delete %ROUTE_SERVICE%
sc delete %TRAFFIC_MANAGEMENT_SERVICE%
sc delete %VEHICLE_INFO_SERVICE%
sc delete %DEVICE_MANAGEMENT_SERVICE%
sc delete %MAP_INFO_SERVICE%
sc delete %DISPATCH_APP%

:: 等待3s
timeout 3

:: 删除当前版本调度
rd /S /Q %BASE_URL%%MAP_INFO_SERVICE_DIR_NAME%
rd /S /Q %BASE_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME%
rd /S /Q %BASE_URL%%VEHICLE_INFO_SERVICE_DIR_NAME%
rd /S /Q %BASE_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME%
rd /S /Q %BASE_URL%%ROUTE_SERVICE_DIR_NAME%
rd /S /Q %BASE_URL%%VEHICLE_COMMUNICATION_DIR_NAME%
rd /S /Q %BASE_URL%%DISPATCH_SYS_FRONT_DIR_NAME%
rd /S /Q %BASE_URL%%DISPATCH_APP_DIR_NAME%

:: 等待3s
timeout 3

:: 重新创建文件夹
md %BASE_URL%%DISPATCH_APP_DIR_NAME%
md %BASE_URL%%MAP_INFO_SERVICE_DIR_NAME%
md %BASE_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME%
md %BASE_URL%%VEHICLE_INFO_SERVICE_DIR_NAME%
md %BASE_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME%
md %BASE_URL%%ROUTE_SERVICE_DIR_NAME%
md %BASE_URL%%VEHICLE_COMMUNICATION_DIR_NAME%
md %BASE_URL%%DISPATCH_SYS_FRONT_DIR_NAME%

:: 等待3s
timeout 3

:: 还原文件开始
echo -----------revert dispatch start-------
xcopy /E /Y /Q /K %BACKUP_URL%%DISPATCH_APP_DIR_NAME% %BASE_URL%%DISPATCH_APP_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%MAP_INFO_SERVICE_DIR_NAME% %BASE_URL%%MAP_INFO_SERVICE_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME% %BASE_URL%%DEVICE_MANAGEMENT_SERVICE_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%VEHICLE_INFO_SERVICE_DIR_NAME% %BASE_URL%%VEHICLE_INFO_SERVICE_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME% %BASE_URL%%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%ROUTE_SERVICE_DIR_NAME% %BASE_URL%%ROUTE_SERVICE_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%VEHICLE_COMMUNICATION_DIR_NAME% %BASE_URL%%VEHICLE_COMMUNICATION_DIR_NAME%
echo= 
xcopy /E /Y /Q /K %BACKUP_URL%%DISPATCH_SYS_FRONT_DIR_NAME% %BASE_URL%%DISPATCH_SYS_FRONT_DIR_NAME%
echo -----------revert dispatch end---------
:: 还原文件结束
echo=  
:: 数据库还原开始
echo -----------revert dispatch db start-------
mysql -uroot -p123456 -h127.0.0.1 < %BACKUP_URL%\dispatcher.sql
echo -----------revert dispatch db end-------
:: 数据库还原结束
echo=  

:: 等待3s
timeout 3

:: 注册调度服务
d:
cd lanxin\java-server%DISPATCH_APP_DIR_NAME%
cd ..\%MAP_INFO_SERVICE_DIR_NAME%
%MAP_INFO_SERVICE%.exe install
echo= 
cd ..\%DEVICE_MANAGEMENT_SERVICE_DIR_NAME%
%DEVICE_MANAGEMENT_SERVICE%.exe install
echo= 
cd ..\%VEHICLE_INFO_SERVICE_DIR_NAME%
%VEHICLE_INFO_SERVICE%.exe install
echo= 
cd ..\%TRAFFIC_MANAGEMENT_SERVICE_DIR_NAME%
%TRAFFIC_MANAGEMENT_SERVICE%.exe install
echo= 
cd ..\%ROUTE_SERVICE_DIR_NAME%
%ROUTE_SERVICE%.exe install
echo= 
cd ..\%VEHICLE_COMMUNICATION_DIR_NAME%
%VEHICLE_COMMUNICATION%.exe install
cd ..\%DISPATCH_APP_DIR_NAME%
%DISPATCH_APP%.exe install
echo= 

:: 等待3s
timeout 3

:: 启动调度服务
net start %MAP_INFO_SERVICE%
net start %DEVICE_MANAGEMENT_SERVICE%
net start %VEHICLE_INFO_SERVICE%
net start %TRAFFIC_MANAGEMENT_SERVICE%
net start %ROUTE_SERVICE%
net start %VEHICLE_COMMUNICATION% 
net start %DISPATCH_APP%
echo=  
echo --------------------------------------------
pause