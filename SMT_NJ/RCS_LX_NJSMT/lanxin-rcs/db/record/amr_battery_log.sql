DROP TABLE IF EXISTS `amr_battery_log`;
CREATE TABLE `amr_battery_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `battery_seq` varchar(20) DEFAULT NULL COMMENT '电池序列号',
  `current_battery` double(4,1) DEFAULT NULL COMMENT '当前电量',
  `battery_temp` double(4,1) DEFAULT NULL COMMENT '电池温度',
  `amr_id` bigint(20) NOT NULL COMMENT '所属设备',
  `area_id` bigint(20) NOT NULL COMMENT '所在区域id',
  `is_online` tinyint(1) DEFAULT NULL COMMENT '在线状态；0:不在线；1:在线',
  `charge_times` mediumint(3) DEFAULT NULL COMMENT '已充电次数',
  `statistics_time` datetime DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB  CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;



