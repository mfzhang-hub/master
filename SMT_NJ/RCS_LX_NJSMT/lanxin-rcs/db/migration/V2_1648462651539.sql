

CREATE TABLE `zx_scanner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT '扫描器名称',
  `ip` varchar(40) DEFAULT NULL,
  `port` int(20) DEFAULT NULL,
  `address` int(20) DEFAULT NULL,
  `plat_form_id` bigint(20) DEFAULT NULL COMMENT '扫描器所属站台',
  `enable` int(5) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `zx_scanner`(`id`,`name`,`ip`,`port`,`address`,`plat_form_id`,`enable`) values (1,'101扫描器','172.31.125.35',502,8,1,0),(2,'102扫描器','172.31.125.35',502,28,2,0);




CREATE TABLE `zx_plat_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plat_id` bigint(20) DEFAULT NULL COMMENT '接驳台id',
  `plat_name` varchar(66) DEFAULT NULL COMMENT '接驳台名字',
  `status` int(4) NOT NULL COMMENT '任务状态',
  `order_no` varchar(255) NOT NULL COMMENT '虚拟编号',
  `box_code` varchar(255) DEFAULT NULL COMMENT '箱码',
  `batch` varchar(66) DEFAULT NULL COMMENT '批次',
  `insert_time` datetime DEFAULT NULL COMMENT '插入时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `target_dock` varchar(40) NOT NULL COMMENT '目标接驳台',
  `procedures` varchar(40) DEFAULT NULL COMMENT '工序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;



CREATE TABLE `zx_plat_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '站台名称',
  `point_code` varchar(255) NOT NULL COMMENT '点位编码',
  `type` int(10) NOT NULL COMMENT '站台类型0码头区域 1焊装区域',
  `in_out` int(10) NOT NULL COMMENT '进出料类型 0进料 1出料',
  `ip` varchar(20) NOT NULL,
  `port` int(10) NOT NULL,
  `read_addr` int(20) NOT NULL COMMENT '呼叫地址',
  `enable` int(5) DEFAULT NULL COMMENT '是否启用0启用1禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

