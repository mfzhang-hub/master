SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `special_vertex`;
CREATE TABLE `special_vertex` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vertex_code` varchar(255) NOT NULL COMMENT '点位code',
  `map_id` bigint(20) NOT NULL COMMENT '地图id',
  `type` int(255) NOT NULL DEFAULT '0' COMMENT '业务类型:0避让点',
  `priority` int(1) NOT NULL DEFAULT '0' COMMENT '优先级',
  `amr_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态值:0可用,1占用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特务点位配置表';
