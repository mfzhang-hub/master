DROP TABLE IF EXISTS `calling_device_task_ref`;
CREATE TABLE `calling_device_task_ref` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL COMMENT '呼叫器id',
  `button_id` bigint(20) NOT NULL COMMENT '呼叫器按钮ID',
  `task_id` bigint(20) NOT NULL COMMENT '任务链模板ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
