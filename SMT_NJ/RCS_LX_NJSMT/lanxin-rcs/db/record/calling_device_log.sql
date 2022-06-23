DROP TABLE IF EXISTS `calling_device_log`;
CREATE TABLE `calling_device_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL COMMENT '呼叫器id',
  `device_code` varchar(20) NOT NULL COMMENT '呼叫器编号',
  `device_ip` varchar(20) NOT NULL COMMENT '呼叫器编号',
  `button_id` varchar(20) COMMENT '呼叫器按钮',
  `task_id` bigint(20) COMMENT '任务链ID',
  `response` varchar(30) COMMENT '下发成功失败信息',
  `insert_time` datetime DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

