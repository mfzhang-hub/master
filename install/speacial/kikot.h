//{
//    "数据库":[
//    {"数据库导出指令":
//   "mysqldump -u root -p dispacher > /home/lanxin/java-service/dispacher.sql"
//    },
//    {
//           "数据库时间段查询":
//           "SELECT * FROM wxlalian.order_chain where INSERT_TIME between '2021-04-01' AND '2021-05-10' ;"
//       SELECT * FROM wxlalian.vehicle_warn_log where START_TIME between '2021-03-01' AND '2021-03-31' and WARN_LIST_ID=82;
//    },
//    {
//    "redis清理指令":
//     "redis-cli  >>  dbsize  >> flushall  >>  exit" // "./redis-cli -h 127.0.0.1 -p 6379"
//    }


// {伟星对接：在地图文件夹的properties.json中某个点位上增加了"angle_calib"属性，负值往右转，正值往左转}





















//    {"查询配置所在指令":"sudo find / -name nginx.conf"
//    }, 
//    {"开机自启":"gnome-session-properties"},
//   {"中科机械臂：机械臂模块开机自启设置":"在开机自启界面设置gnome-terminal -x bash -c "/home/ubuntu/start.sh;exec bash"}"
//     {"老版本无法更新地图":"在app的jar包test文件上增加server.tomcat.basedir = ./tmp"},
//    {"无法打印batt_procoal.log日志":
//    "终端启动程序后输入rostopic echo battery_status或rostopic echo battery_status >> log.txt输出到log日志"}]
// }
// {
//"firmware":[
//    {
        
//      "小底盘/优化底盘底盘固件查询指令":"ac ed 0a 00 00 04 00 00 00 00 00 00 00 0e",
//        "小底盘/优化底盘顶升固件查询指令":"ac ed 0a 00 00 04 00 00 00 00 00 00 00 0e",
//        "标准底盘底座及顶升固件查询指令":"ac ed 06 00 08 00 00 00 00 0E",
//        "辊筒固件查询指令":"ac ed 09 00 10 00 00 00 00 00 00 00 19"
        
//    }
// ]
// }

//   {"2.0激光查询"：
//   cd ~/hontai/log
//    cat laser.log* | grep -a timeout

//    laser.log*为匹配所有激光日志
//    -a选项可以忽略二进制乱码(例如掉电关机了)
//       解释:
//    Location: 8为右后激光,  ust05la为北阳小激光
//    Location: 7为右前激光, wj716为万集716
//    以此类推
//      }

//{
//    充电失败: 无电压(一般没怼到位)
//cat driver.log | grep "pow" | grep @5=-1
//充电失败: 无电流
//cat driver.log | grep "pow" | grep @5=-2
//}