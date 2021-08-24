CREATE TABLE `equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL COMMENT '设备编号',
  `vertex_id` bigint(20) NOT NULL COMMENT '绑定的点的id',
  `ip` varchar(20) NOT NULL COMMENT '设备通信ip',
  `port` int NOT NULL COMMENT '设备通信端口',
  `addr` int COMMENT '设备首地址,提供首地址按协议解析',
  `pass_val` int COMMENT '状态到位寄存器地址值',
  `relation_id` bigint(20) COMMENT '关联设备id',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用 0-禁用 1-启用',
  `type_id` bigint(20) NOT NULL COMMENT '设备类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
