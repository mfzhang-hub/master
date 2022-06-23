DROP TABLE IF EXISTS `menu_second`;
CREATE TABLE `menu_second`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `menu_code` VARCHAR(50) NOT NULL COMMENT '菜单code',
  `menu_name` VARCHAR(20) NOT NULL COMMENT '菜单中文名称',
  `menu_first_id` BIGINT NOT NULL COMMENT '一级菜单ID',
  `priority` INT NOT NULL COMMENT '显示优先级'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='二级菜单表';

-- 初始二级菜单数据 by jhh/21.05.14
insert  into `menu_second`(`id`,`menu_code`,`menu_name`,`menu_first_id`,`priority`)
values
(1,'task/list','任务列表',2,1),
(2,'task/plan','定时任务',2,2),
(3,'task/model','任务模板',2,3),
(4,'config/area','区域管理',5,1),
(5,'config/chargeLevel','充电档位',5,2),
(6,'config/chargeTime','充电时间',5,3),
(7,'config/chargePile','充电桩',5,4),
(8,'account/user','用户管理',6,1),
(9,'account/role','角色管理',6,2),
(10,'device/amr','机器人管理',3,1);

-- 增加操作日志二级菜单数据 by jhh/21.06.18
insert into `menu_second` value (11, 'analysis/operation', '操作日志', 7, 1);

-- 增加分组管理二级菜单数据 by syz/21.06.22
insert into `menu_second` value (12, 'account/group', '分组管理', 6, 3);

-- 增加设备管理耳机菜单数据 by fp/21.07.07
insert into `menu_second` value (13, 'device/equipment', '外部设备', 3, 2);

-- 增加故障和电池统计分析二级菜单数据 by fp/21.07.07
insert into `menu_second` value (14, 'analysis/amrwarn', '故障统计', 7, 2);
insert into `menu_second` value (15, 'analysis/battery', '电池统计', 7, 3);

-- 增加配置管理二级菜单数据 by syz/21.08.13
insert into `menu_second` value (16, 'config/specialVertex','避让点管理',5,5);

-- 增加稼动率二级菜单 by xujun/21.09.09
INSERT INTO `ercs`.`menu_second`(`id`, `menu_code`, `menu_name`, `menu_first_id`, `priority`) VALUES (17, 'analysis/amrTime', '稼动率统计', 7, 4);

-- 增加软件管理二级菜单by xujun/21.09.18
INSERT INTO `ercs`.`menu_second`(`id`, `menu_code`, `menu_name`, `menu_first_id`, `priority`) VALUES (18, 'analysis/softManager', '软件管理', 7, 5);

-- 增加配置管理二级菜单数据 by syz/21.09.23
insert into `menu_second` value (19, 'config/restStation','休息站管理',5,6);

-- 增加呼叫器管理二级菜单数据 by jhh/22.03.01
insert into `menu_second` value (20, 'device/calling', '呼叫器管理', 3, 3);
