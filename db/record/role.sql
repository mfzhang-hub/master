-- creat table 2021/4/19 jhh
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `role_code` VARCHAR(20) NOT NULL UNIQUE COMMENT '角色名',
  `description` VARCHAR(200) COMMENT '角色描述',
  `super_admin` BOOLEAN NOT NULL DEFAULT FALSE COMMENT '是否为超级管理员',
  `creat_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

insert into role value (1, '超级管理员', '超级管理员', true, NOW());
