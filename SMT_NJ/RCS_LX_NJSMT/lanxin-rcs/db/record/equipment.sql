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

-- update by jhh 2021.09.07
ALTER TABLE equipment ADD COLUMN `vertex_codes` varchar(50) DEFAULT NULL COMMENT '关联多个点位code';
ALTER TABLE equipment ADD COLUMN `map` bigint(20) DEFAULT NULL COMMENT '地图ID';

-- update by syz 2022.03.21
ALTER TABLE equipment ADD COLUMN `protocol_id` int(1) DEFAULT NULL COMMENT '关联设备协议表的protocol_id';
ALTER TABLE equipment ADD COLUMN `inside_vertex_codes` varchar(50) DEFAULT NULL COMMENT '电梯类型设备内部点位code';
