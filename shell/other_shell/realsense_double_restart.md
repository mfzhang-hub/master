单相机启动：
 在camera_scan.launch 中将 double_camera 配置成false

 双相机启动：
 在camera_scan.launch 中将 double_camera 配置成true
 配置两个相机序列号，在.ros/params中新建文件ralsenses_serial_number.yaml

 up: xxx   （上相机对应序列号）
 down: xxxx （下相机对应序列号）

 注意：相机序列号在终端输入：realsense-viewer中查看