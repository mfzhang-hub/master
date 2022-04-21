

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

