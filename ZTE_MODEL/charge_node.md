//车辆推到充电桩上面，无需打开继电器
charge_station_check:
{

    cd /.ros/log/zte/ztexing_node/
    rostopic echo /ztexing_node/charge_station_check;
    
    
}
echo {"true" or "false"}:
"true":{
    "检测到传感器"
},
"false":{
    "未检测到传感器"
}