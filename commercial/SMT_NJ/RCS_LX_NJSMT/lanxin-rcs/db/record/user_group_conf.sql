-- creat table 2021/4/20 jhh
DROP TABLE IF EXISTS `user_group_conf`;
CREATE TABLE `user_group_conf`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `user_id` BIGINT NOT NULL COMMENT '用户id',
  `group_id` BIGINT NOT NULL COMMENT '组id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组关联表';
