-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `plan_task_detail`;
CREATE TABLE `plan_task_detail` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- delete table 2021/04/27 syz
DROP TABLE IF EXISTS `plan_task_detail`;
-- create table 2021/04/27 syz
CREATE TABLE `plan_task_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `plan_task_id` bigint(11) NOT NULL COMMENT '任务计划id',
  `task_chain_template_id` bigint(11) NOT NULL COMMENT '绑定的任务链模板id',
  `sequence` int(2) NOT NULL COMMENT '多绑定时的排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务计划详情表';
