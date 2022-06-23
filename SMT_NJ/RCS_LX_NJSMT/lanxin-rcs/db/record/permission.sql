DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `first_menu_id` BIGINT NOT NULL COMMENT '所属一级菜单ID',
  `second_menu_id` BIGINT COMMENT '所属二级菜单ID',
  `permission_code` VARCHAR(50) NOT NULL UNIQUE COMMENT '权限名称',
  `permission_type` INT NOT NULL COMMENT '权限类型,0-菜单,1-按钮',
  `permission_name` VARCHAR(20) NOT NULL COMMENT '权限中文名称'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- 初始权限数据 by jhh/21.05.14
insert  into `permission`(`id`,`first_menu_id`,`second_menu_id`,`permission_code`,`permission_type`,`permission_name`)
values
(1,1,NULL,'monitor',0,'实时监控'),
(2,2,NULL,'task',0,'任务管理'),
(3,2,1,'task/list',0,'任务列表'),
(4,2,1,'task/list/add',1,'新增任务'),
(5,2,1,'task/list/cancel',1,'取消任务'),
(6,2,2,'task/plan',0,'定时任务'),
(7,2,2,'task/plan/add',1,'新增定时任务'),
(8,2,2,'task/plan/delete',1,'删除定时任务'),
(9,2,3,'task/model',0,'任务模板'),
(10,2,3,'task/model/add',1,'新增任务模板'),
(11,2,3,'task/model/submit',1,'提交任务模板'),
(12,2,3,'task/model/update',1,'编辑任务模板'),
(13,2,3,'task/model/delete',1,'删除任务模板'),
(14,3,NULL,'device',0,'设备管理'),
(15,3,10,'device/amr',0,'机器人管理'),
(16,3,10,'device/amr/add',1,'机器人新增'),
(17,3,10,'device/amr/update',1,'机器人编辑'),
(18,3,10,'device/amr/delete',1,'机器人删除'),
(19,4,NULL,'map',0,'地图管理'),
(20,4,NULL,'map/add',1,'地图上传'),
(21,4,NULL,'map/download',1,'地图下载'),
(22,4,NULL,'map/update',1,'地图编辑'),
(23,4,NULL,'map/delete',1,'地图删除'),
(24,5,NULL,'config',0,'配置管理'),
(25,5,4,'config/area',0,'区域管理'),
(26,5,4,'config/area/add',1,'区域新增'),
(27,5,4,'config/area/update',1,'区域编辑'),
(28,5,4,'config/area/delete',1,'区域删除'),
(29,5,5,'config/chargeLevel',0,'充电档位'),
(30,5,5,'config/chargeLevel/add',1,'充电档位新增'),
(31,5,5,'config/chargeLevel/update',1,'充电档位编辑'),
(32,5,5,'config/chargeLevel/delete',1,'充电档位删除'),
(33,5,6,'config/chargeTime',0,'充电时间'),
(34,5,6,'config/chargeTime/add',1,'充电时间新增'),
(35,5,6,'config/chargeTime/update',1,'充电时间编辑'),
(36,5,6,'config/chargeTime/delete',1,'充电时间删除'),
(37,5,7,'config/chargePile',0,'充电桩'),
(38,5,7,'config/chargePile/add',1,'充电桩新增'),
(39,5,7,'config/chargePile/update',1,'充电桩编辑'),
(40,5,7,'config/chargePile/delete',1,'充电桩删除'),
(41,6,NULL,'account',0,'账号管理'),
(42,6,8,'account/user',0,'用户管理'),
(43,6,8,'account/user/add',1,'用户新增'),
(44,6,8,'account/user/update',1,'用户编辑'),
(45,6,8,'account/user/delete',1,'用户删除'),
(46,6,9,'account/role',0,'角色管理'),
(47,6,9,'account/role/add',1,'角色新增'),
(48,6,9,'account/role/update',1,'角色编辑'),
(49,6,9,'account/role/delete',1,'角色删除'),
(50,2,2,'task/plan/update',1,'编辑定时任务');

-- 新增操作日志权限 by jhh/21.06.18
insert  into `permission` value (51,7,NULL,'analysis',0,'系统分析');
insert  into `permission` value (52,7,11,'analysis/operation',0,'操作日志');

-- 新增分组管理权限 by syz/21.06.28
insert  into `permission` value (53,6,12,'account/group',0,'分组管理');
insert  into `permission` value (54,6,12,'account/group/add',1,'分组新增');
insert  into `permission` value (55,6,12,'account/group/update',1,'分组编辑');
insert  into `permission` value (56,6,12,'account/group/delete',1,'分组删除');

-- 新增设备管理权限 by fp/21.07.07
insert  into `permission` value (57,3,13,'device/equipment',0,'外设管理');
insert  into `permission` value (58,3,13,'device/equipment/add',1,'外设新增');
insert  into `permission` value (59,3,13,'device/equipment/update',1,'外设编辑');
insert  into `permission` value (60,3,13,'device/equipment/delete',1,'外设删除');

-- 新增统计分析权限 by fp/21.07.07
insert  into `permission` value (61,7,14,'analysis/amrwarn',0,'故障统计');
insert  into `permission` value (62,7,15,'analysis/battery',0,'电池统计');

-- 新增避让点管理权限 by syz/21.08.13
insert  into `permission` value (63,5,16,'config/specialVertex',0,'避让点管理');
insert  into `permission` value (64,5,16,'config/specialVertex/add',1,'新增避让点');
insert  into `permission` value (65,5,16,'config/specialVertex/update',1,'编辑避让点');
insert  into `permission` value (66,5,16,'config/specialVertex/delete',1,'删除避让点');

-- 新增稼动率权限 by xujun/21.09.09
INSERT INTO `ercs`.`permission`(`id`, `first_menu_id`, `second_menu_id`, `permission_code`, `permission_type`, `permission_name`) VALUES (67, 7, 17, 'analysis/amrTime', 0, '稼动率统计');

-- 新增软件管理下的子菜单权限 by xujun/21.09.18
INSERT INTO `ercs`.`permission`(`id`, `first_menu_id`, `second_menu_id`, `permission_code`, `permission_type`, `permission_name`) VALUES (68, 7, 18, 'analysis/softManager', 0, '软件管理');

-- 新增避让点管理权限 by syz/21.09.23
insert  into `permission` value (69,5,19,'config/restStation',0,'休息站管理');
insert  into `permission` value (70,5,19,'config/restStation/add',1,'新增休息站');
insert  into `permission` value (71,5,19,'config/restStation/update',1,'编辑休息站');
insert  into `permission` value (72,5,19,'config/restStation/delete',1,'删除休息站');

-- 新增呼叫器管理按钮权限 by jhh/22.03.01
insert  into `permission` value (73,3,20,'device/calling',0,'呼叫器管理');
insert  into `permission` value (74,3,20,'device/calling/add',1,'呼叫器新增');
insert  into `permission` value (75,3,20,'device/calling/update',1,'呼叫器编辑');
insert  into `permission` value (76,3,20,'device/calling/delete',1,'呼叫器删除');
