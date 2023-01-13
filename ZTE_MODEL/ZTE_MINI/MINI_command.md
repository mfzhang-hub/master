
触发使用前先source下！！！

    激光测试：
[
ip配置(正对车头)：
{
    左前激光:192.168.100.104
    右前激光:192.168.100.107
    叉根避障激光:192.168.100.106  //首批三台样机ip配置
    叉根避障激光:192.168.100.102
    顶部激光:192.168.100.109
    叉尖对接激光：192.168.100.108
},
 激光原始数据测试:
{
    左前激光: rostopic echo /scan_front
    右前激光: rostopic echo /scan_back
    叉根避障激光: rostopic echo /scan_back_forklift
    顶部激光: rostopic echo /scan_top
    叉尖对接激光：
}
]

[
        叉臂货物检测:
        {
        左叉臂限位光电触发检测指令: rosparam get /forklift/left_arm_cargo
        触发时终端打印:true;
        未触发时终端打印:false;
        注：单次触发，单一信号，不连续刷新
        }
        {
        右叉臂限位光电触发检测指令: rosparam get /forklift/right_arm_cargo
        触发时终端打印:true;
        未触发时终端打印:false;
        注：单次触发，单一信号，不连续刷新
        }
]

[
        叉臂高度获取:
        {
            终端指令:rosparam get /forklift/height
            终端反馈:高度值
        }
]

[
    灯光测试:
    {
        左灯:rostopic pub /light_command std_msgs/UInt8 "data: 6"
    },
    {
        右灯:rostopic pub /light_command std_msgs/UInt8 "data: 7"
    }
]
    
[
        TFmini测距检测: //叉臂下方,首批3台老车使用，新车去除
        {
            左侧TFmini: rostopic echo /tfmini_left/TFmini
            右侧TFmini: rostopic echo /tfmini_right/TFmini
        }
]

[
        叉臂升降控制:
        {
            单位(mm):rostopic pub /ztexing_node/forklift_height std_msgs/UInt16 "data: "
        }
]

[
        充电对接:
        {
           "1"为充电对接,"0"为充电结束: rostopic pub /charge_command "1" 
        }
]

[
        维感相机：
        {
           ip配置：192.168.100.82
           数据指令： 
        }
]