SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `equipment_protocol`;
CREATE TABLE `equipment_protocol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `protocol_id` int(1) NOT NULL COMMENT '协议id',
  `protocol_name` varchar(100) NOT NULL COMMENT '协议名称',
  `keyword` varchar(50) NOT NULL COMMENT '关键描述符',
  `addr` int(4) NOT NULL COMMENT 'plc地址位',
  `value` int(4) NOT NULL COMMENT '值',
  `enable` tinyint(1) NOT NULL COMMENT '停用启用协议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='自定义电梯协议';
