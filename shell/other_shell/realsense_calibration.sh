#! /bin/bash
systemctl stop kinco
cd /mnt
source devel_isolated/setup.bash
roslaunch camera_calibration camera_calibration.launch --screen
