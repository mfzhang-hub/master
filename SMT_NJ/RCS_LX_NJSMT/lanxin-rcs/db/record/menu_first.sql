DROP TABLE IF EXISTS `menu_first`;
CREATE TABLE `menu_first`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `menu_code` VARCHAR(50) NOT NULL COMMENT '菜单code',
  `menu_name` VARCHAR(20) NOT NULL COMMENT '菜单中文名称',
  `priority` INT NOT NULL COMMENT '显示优先级'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='一级菜单表';

-- 初始一级菜单数据 by jhh/21.05.14
INSERT INTO `menu_first` (
  `id`,
  `menu_code`,
  `menu_name`,
  `priority`
)
VALUES
  (1, 'monitor', '实时监控', 1),
  (2, 'task', '任务管理', 2),
  (3, 'device', '设备管理', 3),
  (4, 'map', '地图管理', 4),
  (5, 'config', '配置管理', 5),
  (6, 'account', '账号管理', 6) ;

-- 增加系统分析一级菜单 by jhh/21.06.18
update `menu_first` set  priority = 7 where id = 6;
insert into `menu_first` value (7, 'analysis', '系统分析', 6);
