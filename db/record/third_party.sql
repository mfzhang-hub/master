DROP TABLE IF EXISTS `third_party`;
CREATE TABLE `third_party`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `name` VARCHAR(20) NOT NULL UNIQUE COMMENT '第三方机构名称',
  `token` VARCHAR(20) NOT NULL COMMENT 'token令牌',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='第三方权限认证表';

ALTER TABLE `user` MODIFY COLUMN `USERNAME` VARCHAR(20) BINARY;

insert into `third_party` value (0, 'lx-script', 'admin123',  true);

insert into `third_party` value (0, 'lx-panel', '123456',  true);
