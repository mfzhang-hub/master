
CREATE TABLE `zx_plat_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plat_id` bigint(20) DEFAULT NULL COMMENT '接驳台id',
  `plat_name` varchar(66) DEFAULT NULL COMMENT '接驳台名字',
  `status` int(4) NOT NULL COMMENT '任务状态',
  `order_no` varchar(500) NOT NULL COMMENT '虚拟编号',
  `box_code` varchar(500) DEFAULT NULL COMMENT '箱码',
  `batch` varchar(66) DEFAULT NULL COMMENT '批次',
  `insert_time` datetime DEFAULT NULL COMMENT '插入时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `target_dock` varchar(40) NOT NULL COMMENT '目标接驳台',
  `procedures` varchar(40) DEFAULT NULL COMMENT '工序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

