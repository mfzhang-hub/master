DROP TABLE IF EXISTS `amr_version_update_info`;

CREATE TABLE `amr_version_update_info` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `amr_id` BIGINT(11) NOT NULL,
  `version_code` VARCHAR(100) NOT NULL COMMENT '版本名称',
  `update_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='本体版本更新信息表';
