//车辆推到充电桩上面，无需打开继电器
charge_station_check:
{
   charge{
    cd /.ros/log/zte/ztexing_node/
    rostopic echo /ztexing_node/charge_station_check;
    
    }
}
//{"true" or "false"}:
"true_charge":{
    "检测到传感器"
},
"false_charge":{
    "未检测到传感器"
}