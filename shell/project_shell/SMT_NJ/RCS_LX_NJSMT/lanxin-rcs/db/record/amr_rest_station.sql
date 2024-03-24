DROP TABLE IF EXISTS `amr_rest_station`;
CREATE TABLE `amr_rest_station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '休息站名',
  `map_id` bigint(20) NOT NULL,
  `rest_vertex_codes` varchar(255) NOT NULL COMMENT '休息点集合,顺序排序,英文逗号分隔',
  `enable` tinyint(255) DEFAULT '1' COMMENT '停用启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
