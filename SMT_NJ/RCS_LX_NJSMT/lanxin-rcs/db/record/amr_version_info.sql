DROP TABLE IF EXISTS `amr_version_info`;

CREATE TABLE `amr_version_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `version_code` varchar(100) NOT NULL COMMENT '版本名称',
  `path` varchar(100) NOT NULL COMMENT '存储相对路径',
  `absolute_path` varchar(100) NOT NULL COMMENT '存储绝对路径',
  `enable` BOOLEAN NOT NULL DEFAULT FALSE COMMENT '是否启用',
  `upload_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本体版本上传信息表';

-- 2022/3/15 add column jhh
ALTER TABLE amr_version_info
    ADD type int (1) NOT NULL DEFAULT 0 COMMENT '程序包类型0-本体程序,1-本体后台';
-- 2022/3/15 update column length jhh
ALTER TABLE amr_version_info MODIFY path VARCHAR(200) NOT NULL COMMENT '存储相对路径';
ALTER TABLE amr_version_info MODIFY absolute_path VARCHAR(200) NOT NULL COMMENT '存储绝对路径';
