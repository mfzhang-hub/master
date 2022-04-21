-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `transport_order_model`;
CREATE TABLE `transport_order_model` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- delete table 2021/04/20 syz
DROP TABLE IF EXISTS `transport_order_model`;
-- create table 2021/04/20 syz
CREATE TABLE `task_chain_template` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '模板名称',
  `amr_id` bigint(11) DEFAULT NULL COMMENT 'amr id',
  `group_id` bigint(11) DEFAULT NULL COMMENT '车组id',
  `area_id` bigint(11) DEFAULT NULL COMMENT '区域id',
  `priority` int(10) DEFAULT NULL COMMENT '优先级',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用禁用标识0:禁用 1启用 预留字段 可做删除标记',
  `repeat_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '重复下发标记 0:不可重复 1:可重复',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务链模板表';
