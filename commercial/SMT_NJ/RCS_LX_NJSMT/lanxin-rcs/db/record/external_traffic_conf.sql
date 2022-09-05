SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `external_traffic_conf`;
CREATE TABLE `external_traffic_conf` (
  `id` bigint(20) NOT NULL,
  `traffic_code` varchar(255) NOT NULL COMMENT '交管区域的唯一编码',
  `device_code` varchar(255) DEFAULT NULL COMMENT '设备申请唯一编码,即当前申请的来源编码',
  `status` int(1) NOT NULL COMMENT '当前交管区域状态0可用,1占用',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `release_time` datetime DEFAULT NULL COMMENT '释放时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备申请交管区域配置表';

-- 交管区域编码唯一 2021/12/31 by syz
CREATE UNIQUE INDEX traffic_code_uindex ON external_traffic_conf (traffic_code);
