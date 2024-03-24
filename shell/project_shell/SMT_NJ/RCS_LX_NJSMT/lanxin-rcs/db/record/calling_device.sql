DROP TABLE IF EXISTS `calling_device`;
CREATE TABLE `calling_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL UNIQUE COMMENT '呼叫盒编号',
  `ip` varchar(20) NOT NULL UNIQUE COMMENT '设备通信ip',
  `port` int default NULL COMMENT '设备通信端口',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用 0-禁用 1-启用',
  `type_id` bigint(20) NOT NULL COMMENT '呼叫盒类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
