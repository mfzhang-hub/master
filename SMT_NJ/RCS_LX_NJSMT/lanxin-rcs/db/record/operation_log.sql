CREATE TABLE `operation_log`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `name` VARCHAR(20) NOT NULL COMMENT '用户名',
  `user_type` INT NOT NULL COMMENT '用户类型',
  `ip` VARCHAR(20) COMMENT 'IP',
  `operation_name` VARCHAR(20) COMMENT '操作行为名称',
  `operation_result` BOOLEAN COMMENT '操作结果',
  `operation_message` VARCHAR(50) COMMENT '操作返回信息',
  `operation_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '操作时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='操作日志表';
