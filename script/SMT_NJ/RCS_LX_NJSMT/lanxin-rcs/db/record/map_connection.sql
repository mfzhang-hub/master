DROP TABLE IF EXISTS `map_connection`;
CREATE TABLE `map_connection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_map_id` bigint(20) DEFAULT NULL COMMENT '起始地图id',
  `target_map_id` bigint(20) DEFAULT NULL COMMENT '目标地图id',
  `source_connect_point` bigint(20) DEFAULT NULL COMMENT '起始点位id',
  `target_connect_point` bigint(20) DEFAULT NULL COMMENT '目标点位id',
  `virtual_distance` double DEFAULT NULL COMMENT '虚拟距离',
  `bind_device_id` bigint(20) DEFAULT NULL COMMENT '绑定设备id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- alter table luoyy 2021/04/23

alter table map_connection modify source_connect_point varchar(255) null comment '起始点位id';

alter table map_connection modify target_connect_point varchar(255) null comment '目标点位id';
