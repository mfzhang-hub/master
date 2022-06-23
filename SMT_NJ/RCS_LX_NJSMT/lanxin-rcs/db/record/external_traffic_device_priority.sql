DROP TABLE IF EXISTS `external_traffic_device_priority`;
CREATE TABLE `external_traffic_device_priority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `priority` int(1) NOT NULL COMMENT '申请优先级,同优先级时,按照申请时间排序',
  `device_code` varchar(255) NOT NULL COMMENT '申请设备编码',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '停用启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_code_uk` (`device_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
