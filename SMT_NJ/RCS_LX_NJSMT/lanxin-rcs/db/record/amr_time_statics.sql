DROP TABLE IF EXISTS `amr_time_statics`;
CREATE TABLE `amr_time_statics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `amr_id` bigint(20) NOT NULL COMMENT '设备id',
  `work_time` bigint(20) NOT NULL COMMENT '任务时间',
  `error_time` bigint(20) DEFAULT NULL COMMENT '异常时间',
  `rest_time` bigint(20) DEFAULT NULL COMMENT '休息时间',
  `charge_time` bigint(20) DEFAULT NULL COMMENT '充电时间',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
