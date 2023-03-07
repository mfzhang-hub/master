-- 新增功能表,配置此区域小车开启强制休息功能 by syz 2022/01/18
DROP TABLE IF EXISTS `amr_rest_forced_area`;
CREATE TABLE `amr_rest_forced_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL COMMENT '区域id',
  `enable` tinyint(1) NOT NULL COMMENT '0停用1启用,没有配置的区域默认0',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_area_id` (`area_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小车强制休息区域配置表';
