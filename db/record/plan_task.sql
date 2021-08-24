-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `plan_task`;
CREATE TABLE `plan_task` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `last_executed_time` datetime DEFAULT NULL,
  `loop_type` int(11) NOT NULL,
  `loop_time` int(11) DEFAULT NULL,
  `loop_count` int(11) DEFAULT NULL,
  `amr_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- delete table 2021/04/27 syz
DROP TABLE IF EXISTS `plan_task`;
-- create table 2021/04/27 syz
CREATE TABLE `plan_task` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '任务计划名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '计划状态0未开始,1进行中,2已完成',
  `start_time` datetime NOT NULL COMMENT '启动时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `loop_type` int(1) NOT NULL COMMENT '循环类型0:不循环,1每天,2每周,3每月,4自定义',
  `loop_type_detail` varchar(100) DEFAULT NULL COMMENT '类型详情:记录特殊类型执行策略',
  `loop_count` int(3) NOT NULL COMMENT '循环次数:最大50',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否激活启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务计划表';
