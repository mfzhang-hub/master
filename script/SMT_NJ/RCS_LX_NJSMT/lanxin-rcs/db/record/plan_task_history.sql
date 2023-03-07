-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `plan_task_history`;
CREATE TABLE `plan_task_history` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- delete table 2021/04/27 syz
DROP TABLE IF EXISTS `plan_task_history`;

-- create table 2021/04/28
CREATE TABLE `plan_task_execute` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `plan_task_id` bigint(11) NOT NULL,
  `task_chain_template_id` bigint(11) NOT NULL COMMENT '任务链id',
  `start_time` datetime DEFAULT NULL COMMENT '本次的开始时间',
  `loop_count` int(2) NOT NULL DEFAULT '0' COMMENT '循环次数:需跟任务计划保持一致',
  `execute_count` int(2) DEFAULT '0' COMMENT '实际执行的次数',
  `status` int(1) DEFAULT NULL COMMENT '0未开始 1结束',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='计划执行表';
