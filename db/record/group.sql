-- create 2021/04/20 jhh
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_name` varchar(20) NOT NULL COMMENT '组名',
  `area_id` BIGINT(20) NOT NULL COMMENT '分组所属区域',
  `creat_time` datetime NOT NULL DEFAULT NOW() COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='group分组表';
