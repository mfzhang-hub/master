CREATE TABLE `equipment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '设备类型名称',
  `manager` varchar(40) NOT NULL COMMENT '管理者类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 初始化蓝芯标准自动门和电梯协议类型 by jhh
insert  into `equipment_type`(`id`,`name`,`manager`) values (0,'LX-自动门','ModbusAutomaticDoor');
insert  into `equipment_type`(`id`,`name`,`manager`) values (0,'LX-电梯','ModbusElevator');

-- 2021/7/7  增加485类型协议电梯 by fp
insert  into `equipment_type`(`id`,`name`,`manager`) values (0, 'LX-485电梯', 'Modbus485Elevator');
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charge_pile_history
-- ----------------------------
DROP TABLE IF EXISTS `charge_pile_history`;
CREATE TABLE `charge_pile_history`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `charge_pile_id` bigint(20) NOT NULL COMMENT '充电桩的ID',
  `amr_id` bigint(20) NOT NULL COMMENT 'AMR的ID',
  `task_chain_id` bigint(20) DEFAULT NULL COMMENT '充电任务链ID',
  `start_time` datetime(0) NOT NULL COMMENT '占用开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '占用结束时间',
  `use_time` int(10) NOT NULL COMMENT '占用时长（单位：分钟）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
-- 新增功能表,配置此区域小车开启强制休息功能 by syz 2022/01/18
DROP TABLE IF EXISTS `amr_rest_forced_area`;
CREATE TABLE `amr_rest_forced_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL COMMENT '区域id',
  `enable` tinyint(1) NOT NULL COMMENT '0停用1启用,没有配置的区域默认0',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_area_id` (`area_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小车强制休息区域配置表';
DROP TABLE IF EXISTS `amr_battery_log`;
CREATE TABLE `amr_battery_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `battery_seq` varchar(20) DEFAULT NULL COMMENT '电池序列号',
  `current_battery` double(4,1) DEFAULT NULL COMMENT '当前电量',
  `battery_temp` double(4,1) DEFAULT NULL COMMENT '电池温度',
  `amr_id` bigint(20) NOT NULL COMMENT '所属设备',
  `area_id` bigint(20) NOT NULL COMMENT '所在区域id',
  `is_online` tinyint(1) DEFAULT NULL COMMENT '在线状态；0:不在线；1:在线',
  `charge_times` mediumint(3) DEFAULT NULL COMMENT '已充电次数',
  `statistics_time` datetime DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB  CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;



-- create 2021/07/12 jhh
DROP TABLE IF EXISTS `traffic_block`;
CREATE TABLE `traffic_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(20) NOT NULL COMMENT '区域id',
  `block_name` varchar(30) NOT NULL COMMENT '块名称',
  `block_vertex` varchar(30) NOT NULL COMMENT '块的点位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交管块';


-- update 2021/07/30 xujun000288
ALTER TABLE `traffic_block` MODIFY COLUMN block_vertex VARCHAR(255);
DROP TABLE IF EXISTS `amr_warn_log`;
CREATE TABLE `amr_warn_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `amr_id` bigint(20) NOT NULL COMMENT '异常车辆id',
  `warn_list_id` bigint(20) NOT NULL COMMENT '异常清单表关联id',
  `map_id` varchar(20) DEFAULT NULL COMMENT '异常位置地图id',
  `point` varchar(20) DEFAULT NULL COMMENT '异常点位',
  `start_time` datetime NOT NULL COMMENT '异常开始时间（异常入库时间）',
  `close_time` datetime DEFAULT NULL COMMENT '异常关闭时间',
  `warn_state` int(1) NOT NULL COMMENT '异常状态，0：未关闭；1：已关闭',
  `pos` varchar(45) DEFAULT NULL COMMENT '异常位置',
  `order_chain_id` bigint(20) DEFAULT NULL COMMENT '任务链id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='amr异常日志表';

-- 2021/07/08  xujun000288 增加 warn_source 字段
ALTER TABLE amr_warn_log ADD warn_source INT ( 1 ) NULL COMMENT '异常来源；0:小车上报；1:RCS上报';

-- 2021/07/13 xujun000288 增加  warn_level 字段
ALTER TABLE amr_warn_log ADD warn_level INT ( 1 ) NULL COMMENT '异常等级';


-- creat table 2021/4/20 jhh
DROP TABLE IF EXISTS `user_area_conf`;
CREATE TABLE `user_area_conf`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `user_id` BIGINT NOT NULL COMMENT '用户ID',
  `area_id` BIGINT NOT NULL COMMENT '区域ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户区域关联表';
-- MySQL dump 10.13  Distrib 5.7.28, for macos10.14 (x86_64)
--
-- Host: 192.168.2.196    Database: ercs
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amr_rest_config`
--

DROP TABLE IF EXISTS `amr_rest_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amr_rest_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) DEFAULT NULL COMMENT '车辆id',
  `idle` int(11) DEFAULT NULL COMMENT '空闲时间（秒数）',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rest_vertex_id` bigint(20) DEFAULT NULL COMMENT '休息点位id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车辆休息配置';
/*!40101 SET character_set_client = @saved_cs_client */;

-- 更新绑定休息点id字段为休息站id by syz 2021/09/17
ALTER TABLE amr_rest_config CHANGE COLUMN rest_vertex_id rest_station_id BIGINT(20) DEFAULT NULL COMMENT '休息站id';

-- 清除历史遗留绑定的休息点数据 by syz 2021/11/05
UPDATE amr_rest_config SET `rest_station_id` = NULL;
/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 27/01/2021 15:34:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amr_time_charge_config
-- ----------------------------
DROP TABLE IF EXISTS `amr_time_charge_config`;
CREATE TABLE `amr_time_charge_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) NOT NULL COMMENT '车id',
  `force_charge_start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '强制充电时间起点string类型 格式\'HH-mm\'',
  `force_charge_end_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '强制充电时间终点string类型 格式\'HH-mm\'',
  `enable` int(1) NULL DEFAULT NULL COMMENT '是否启用 0-禁用 1-启用',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'uuid , 同步',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 2021/7/28 新增强制充电时间内的任务派发策略字段 By syz
ALTER TABLE amr_time_charge_config ADD strategy int(1) NOT NULL DEFAULT 0 COMMENT '任务派发策略 0默认除充电任务外不接任何任务 1接充电和回休息点 2充满后执行任何任务';
CREATE TABLE `amr_bind_charge_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) DEFAULT NULL,
  `charge_pile_id` bigint(20) DEFAULT NULL COMMENT '绑定的充电桩id',
  `charge_pile_model_id` varchar(255) DEFAULT NULL COMMENT '适配充电桩型号ids,例:1,2,3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2021/11/17 新增充电桩是否被强制绑定  by jhh
ALTER TABLE amr_bind_charge_config ADD COLUMN force_bind BOOLEAN COMMENT '是否强制绑定';
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
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 10/11/2020 16:16:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `task_chain_id` bigint(11) NOT NULL COMMENT '任务链ID',
  `action` int(10) NOT NULL COMMENT '任务类型',
  `loading` int(4) NULL DEFAULT NULL COMMENT '上下料 0-上料 1-下料',
  `sequence` double NOT NULL COMMENT '任务链中位置',
  `docking_direction` int(4) NULL DEFAULT NULL COMMENT '对接方向 0-左,1-右 ,2-前 ,3-后,4-左调整,5-右调整,6-后调整',
  `docking_x` double NULL DEFAULT NULL COMMENT '对接x距离',
  `docking_y` double NULL DEFAULT NULL COMMENT '对接y距离',
  `docking_theta` double NULL DEFAULT NULL COMMENT '对接角度',
  `force_load` int(1) NULL DEFAULT NULL COMMENT '强制上下料',
  `map_id` bigint(11) NOT NULL COMMENT '地图id',
  `end_point_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '终点code',
  `status` int(4) NOT NULL DEFAULT 0 COMMENT '任务状态;0-未执行;1-正在执行;2-结束;3-取消;4-执行异常;5-跳过',
  `amr_id` bigint(11) NULL DEFAULT NULL COMMENT '车辆id',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '任务开始时间',
  `finish_time` datetime(0) NULL DEFAULT NULL COMMENT '任务结束时间',
  `time_takes` bigint(20) NULL DEFAULT NULL COMMENT '任务耗时',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `ref_task_sequence` double NULL DEFAULT NULL COMMENT '相同任务链中关联的Task',
  `flag` int(4) NULL DEFAULT NULL COMMENT '任务特殊标识',
  `extend` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务拓展字段',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '同步标志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `INDEX_TASK_CHAIN_ID`(`task_chain_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 2021/11/19 对status字段增加索引 by syz
ALTER TABLE `task` ADD INDEX INDEX_STATUS (`STATUS`);
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
-- create 2021/12/30 luoyy

DROP TABLE IF EXISTS `third_part_traffic`;
CREATE TABLE  `third_part_traffic`
(
     id            int auto_increment
            primary key,
        traffic_code  varchar(255)                  not null comment '第三方交管区域名',
        bound_points  text                          not null comment '改该交管区绑定的点,文本类型，点位之间用逗号隔开',
        map_id        bigint                        not null comment '地图ID',
        traffic_key   varchar(255) default 'lanxin' null comment '第三方交管对接键值',
        occupy_device varchar(255)                  null comment '占用该公共区域的设备',
        create_time   datetime                      null,
        update_time   datetime                      null
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方交管数据关联表';
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 22/10/2020 13:57:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amr_type
-- ----------------------------
DROP TABLE IF EXISTS `amr_type`;
CREATE TABLE `amr_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;


-- insert xies 2021/3/4
INSERT INTO `amr_type` VALUES ('1', 'FL21500S', null, null);
INSERT INTO `amr_type` VALUES ('2', 'FR3600L', null, null);
INSERT INTO `amr_type` VALUES ('3', 'PE41200J', null, null);
INSERT INTO `amr_type` VALUES ('4', 'SL31000Z', null, null);

-- update fp 2021/11/26
UPDATE `amr_type` set `model` = "SL31000Z" where `id` = 4;
DROP TABLE IF EXISTS `calling_device_log`;
CREATE TABLE `calling_device_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL COMMENT '呼叫器id',
  `device_code` varchar(20) NOT NULL COMMENT '呼叫器编号',
  `device_ip` varchar(20) NOT NULL COMMENT '呼叫器编号',
  `button_id` varchar(20) COMMENT '呼叫器按钮',
  `task_id` bigint(20) COMMENT '任务链ID',
  `response` varchar(30) COMMENT '下发成功失败信息',
  `insert_time` datetime DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 22/12/2020 10:02:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for topology_map
-- ----------------------------
DROP TABLE IF EXISTS `topology_map`;
CREATE TABLE `topology_map`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '别名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述信息',
  `map_file_url` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地图文件地址',
  `file_size` double NULL DEFAULT NULL COMMENT '文件大小',
  `origin_x` double NULL DEFAULT NULL COMMENT '原点x',
  `origin_y` double NULL DEFAULT NULL COMMENT '原点y',
  `height` double NULL DEFAULT NULL COMMENT '地图高度',
  `weight` double NULL DEFAULT NULL COMMENT '地图宽度',
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地图文件md5值',
  `background_img_url` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图地址',
  `background_img_size` double NULL DEFAULT NULL COMMENT '背景图文件大小',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `enable` int(4) NULL DEFAULT 1 COMMENT '是否启用 0-禁用 1-启用',
  `floor` int(11) NULL DEFAULT NULL COMMENT '所在楼层',
  `determine_turning_angle` double NULL DEFAULT NULL COMMENT '转弯角度',
  `change_road_cost_factory` double NULL DEFAULT NULL COMMENT '变道系数',
  `passed_cost` double NULL DEFAULT NULL COMMENT '经过路径增大权重',
  `steering_angle_cost` double NULL DEFAULT NULL COMMENT '转弯代价',
  `heuristic_type` int(4) NULL DEFAULT NULL COMMENT '启发式类型 1-默认的欧氏距离启发式 2-按路径算出的最短距离启发式',
  `close_dynamic_path` int(4) NULL DEFAULT 1 COMMENT '是否关闭动态路径 0 - 关闭  1-启用',
  `base_cost` double NULL DEFAULT NULL COMMENT '变道基数,默认情况下,当调整后的路径比正在执行的路径的权值之差大于该基数时 ,发送调整后的路径',
  `base_ref_count` int(11) NULL DEFAULT NULL COMMENT '繁忙点引用计数',
  `area_id` bigint(20) NULL DEFAULT NULL COMMENT '区域id',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'uuid ,用于保证同步问题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- add column 2021/3/2 luoyy
alter table topology_map
    add resolution double default 0.05 null comment '地图点云分辨率';
DROP TABLE IF EXISTS `third_party`;
CREATE TABLE `third_party`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `name` VARCHAR(20) NOT NULL UNIQUE COMMENT '第三方机构名称',
  `token` VARCHAR(20) NOT NULL COMMENT 'token令牌',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='第三方权限认证表';

insert into `third_party` value (1, 'lx-script', 'admin123',  true);

insert into `third_party` value (2, 'lx-panel', '123456',  true);
DROP TABLE IF EXISTS `charge_pile_model`;
CREATE TABLE `charge_pile_model`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- 2021/3/8 insert xies
INSERT INTO `charge_pile_model` VALUES ('1', 'DEFAULT', '通用');
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
-- create table 2021/1/28 luoyy
DROP TABLE IF EXISTS `user`;
create table `user`
(
    id             varchar(36) not null,
    loginName      varchar(20) not null,
    realName       varchar(30) null,
    mobile         varchar(20) not null,
    sex            varchar(4)  null,
    password       varchar(64) null,
    idCard         varchar(18) null,
    mobileVerified tinyint     null,
    createTime     datetime    null,
    state          int         not null,
    type           int         not null,
    PRIMARY KEY (`id`)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- update table 2021/4/19 jhh
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `username` VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
  `password` VARCHAR(50) NOT NULL COMMENT '密码',
  `nickname` VARCHAR(20) COMMENT '姓名',
  `phone_no` VARCHAR(20) COMMENT '手机号',
  `e_mail` VARCHAR(30) COMMENT '邮箱',
  `register_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '注册时间',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用',
  `role_id` BIGINT COMMENT '角色ID'
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into `user` value (1, 'admin', '220e2829735c7680dd597511fc4030ef', 'admin', '', '', NOW(), true, 1);

-- update 2021/5/28 jhh
ALTER TABLE `user` MODIFY COLUMN `USERNAME` VARCHAR(20) BINARY;
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
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 10/11/2020 16:19:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for task_chain
-- ----------------------------
DROP TABLE IF EXISTS `task_chain`;
CREATE TABLE `task_chain`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `area_id` bigint(11) NOT NULL COMMENT '区域id',
  `priority` int(10) NULL DEFAULT NULL COMMENT '优先级',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `amr_id` bigint(11) NULL DEFAULT NULL COMMENT '车辆id',
  `group_id` bigint(11) NULL DEFAULT NULL COMMENT '车组id',
  `come_from` int(1) NOT NULL COMMENT '来源类型',
  `from_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源明细',
  `repeat_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '来源类型',
  `status` int(4) NULL DEFAULT NULL COMMENT '任务链状态;0-未执行;1-正在执行;2-结束;3-取消;4-执行异常',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '任务链开始时间',
  `finish_time` datetime(0) NULL DEFAULT NULL COMMENT '任务链结束时间',
  `time_takes` bigint(20) NULL DEFAULT NULL COMMENT '任务耗时',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '同步标志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `INDEX_START_TIME`(`start_time`) USING BTREE,
  INDEX `INDEX_STATUS`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 2021/2/4 任务链添加标记 是否可以被打断 by Huoming
ALTER TABLE task_chain ADD interrupt INT DEFAULT 0 NULL COMMENT '是否可以打断 0-否 1-是';
-- 2021/6/10 任务链推送标记 是否推送 by fp
ALTER TABLE task_chain ADD is_return INT DEFAULT 0 NULL COMMENT '是否推送 0-否 1-是';

-- 2021/10/14 任务链候选AMR_ID
ALTER TABLE `task_chain` ADD `candidate_amr_id` bigint(11) NULL  DEFAULT NULL COMMENT '候选车辆id, 默认为null，-1代表预选被取消掉'AFTER `amr_id`;

-- 2022/01/07 更新候选AMR_ID, 未被候选统一为null
ALTER TABLE `task_chain` MODIFY `candidate_amr_id` bigint(11) NULL  DEFAULT NULL COMMENT '候选车辆id, 默认为null';
UPDATE `task_chain` SET `candidate_amr_id` = NULL WHERE `candidate_amr_id` = -1;
DROP TABLE IF EXISTS `amr_type_attachment`;
CREATE TABLE `amr_type_attachment`
(
    `id`            bigint(20) NOT NULL AUTO_INCREMENT,
    `amr_type_id`   bigint(20) NOT NULL COMMENT '车型id',
    `roller_length` double DEFAULT NULL COMMENT '辊筒长度',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- 2021/12/17 add column qklee
ALTER TABLE `amr_type_attachment` ADD `roller_number` int(4) DEFAULT NULL COMMENT '辊筒数量';

-- 2022/03/07 add column qklee
ALTER TABLE `amr_type_attachment` ADD `support_in_situ` tinyint(1) DEFAULT 0 COMMENT '是否支持原地上下料';
-- create table 2021/3/3 luoyy
DROP TABLE IF EXISTS `task_model`;
create table `task_model`
(
    id         varchar(50)   not null
        primary key,
    task_index int default 0 not null,
    order_id   varchar(50)   not null,
    target     varchar(200)  not null,
    map_id     varchar(200)  not null,
    actions    varchar(5000) not null
)
    collate = utf8mb4_unicode_ci;

-- update table 2021/03/18 syz
ALTER TABLE task_model ADD COLUMN extend varchar(512) DEFAULT NULL COMMENT '任务拓展';

-- delete table 2021/04/20 syz
DROP TABLE IF EXISTS `task_model`;
-- create table 2021/04/20 syz
CREATE TABLE `task_template` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sequence` double NOT NULL DEFAULT '0' COMMENT '排序',
  `task_chain_template_id` bigint(11) NOT NULL COMMENT '任务链模板id',
  `end_point_code` varchar(255) NOT NULL COMMENT '目标点',
  `map_id` bigint(20) NOT NULL COMMENT '地图id',
  `action` int(4) NOT NULL COMMENT '动作类型',
  `extend` varchar(512) DEFAULT NULL COMMENT '任务拓展',
  `docking_direction` int(4) DEFAULT NULL COMMENT '对接方向',
  `docking_x` double DEFAULT NULL COMMENT '对接x距离',
  `docking_y` double DEFAULT NULL COMMENT '对接y距离',
  `loading` int(4) DEFAULT NULL COMMENT '上下料',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='子任务模板表';
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 23/11/2020 16:34:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amr_charge_config
-- ----------------------------
DROP TABLE IF EXISTS `amr_charge_config`;
CREATE TABLE `amr_charge_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) DEFAULT NULL,
  `level1` double(4,2) DEFAULT NULL COMMENT '最低电量，低于该电量需要强制充电',
  `level2` double(4,2) DEFAULT NULL COMMENT '保障电量，可执行任务的保障电量',
  `level3` double(4,2) DEFAULT NULL COMMENT '最高电量，充电高于该电量，退出充电状态',
  `force_charge_start_time` varchar(10) DEFAULT NULL COMMENT '强制充电开始时间',
  `force_charge_end_time` varchar(10) DEFAULT NULL COMMENT '强制充电结束时间',
  `charge_pile_id` bigint(20) DEFAULT NULL COMMENT '绑定的充电桩id',
  `uuid` varchar(255) DEFAULT NULL COMMENT 'uuid用于同步',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;


-- 强制充电时间放在另外一张表中维护 by Huoming
ALTER TABLE amr_charge_config DROP COLUMN force_charge_start_time;
ALTER TABLE amr_charge_config DROP COLUMN force_charge_end_time;
-- 车辆 只能有一条充电配置 by Huoming
CREATE UNIQUE INDEX amr_charge_config_amr_id_uindex ON amr_charge_config (amr_id);
DROP TABLE IF EXISTS `edge`;
CREATE TABLE `edge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL COMMENT '起点code',
  `target` varchar(255) DEFAULT NULL COMMENT '目标点code',
  `type` int(4) DEFAULT NULL COMMENT '类型',
  `max_speed` double DEFAULT NULL COMMENT '最大速度',
  `safe_distance` double DEFAULT NULL COMMENT '安全距离',
  `point_mode` int(4) DEFAULT 1 COMMENT '到点模式 0-精确 1-一般 ,2-精确(无头0) ,3-一般(无头)',
  `is_avoidance` int(4) DEFAULT 1 COMMENT '是否避障 0-否 1-是',
  `avoidance_mode` int(4) DEFAULT 0 COMMENT '避障模式',
  `expansion_mode` int(4) DEFAULT 0 COMMENT '膨胀模式',
  `navigation_mode` int(4) DEFAULT 0 COMMENT '导航模式 0-前进模式 1-后退模式 2-无头模式',
  `turning_mode` int(4) DEFAULT 0 COMMENT '转弯模式 0-圆弧转弯 1-直角转弯',
  `cost` double DEFAULT 1 COMMENT '路线权重',
  `location_mode` int(4) DEFAULT 0 COMMENT '定位模式',
  `sensor` varchar(255) DEFAULT NULL COMMENT '传感器',
  `path_width` double DEFAULT 0 COMMENT '路径宽度',
  `min_turn_radius` double DEFAULT 0 COMMENT '最小转弯半径',
  `distance_2_point` double(255,0) DEFAULT 0 COMMENT '到点距离阈值',
  `angle_2_point` double(255,0) DEFAULT 0 COMMENT '到点角度阈值',
  `forbidden_full` int(4) DEFAULT 0 COMMENT '禁止满车 0-否 1-是',
  `forbidden_empty` int(4) DEFAULT 0 COMMENT '禁止空车 0-否 1-是',
  `extend` varchar(2550) DEFAULT NULL COMMENT '拓展 ,json格式',
  `map_id` bigint(20) DEFAULT NULL COMMENT '地图id',
  `distance` double DEFAULT 0 COMMENT '距离',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 23/10/2020 17:03:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_type
-- ----------------------------
DROP TABLE IF EXISTS `task_type`;
CREATE TABLE `task_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `action` int(4) UNIQUE NOT NULL COMMENT '任务类型',
  `enable` int(4) NOT NULL DEFAULT 1 COMMENT '是否启用 0 - 禁用 1-启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 2021/5/12 初始化任务类型枚举 by jhh
INSERT INTO `task_type` (`id`, `name`, `action`, `enable`)
VALUES
  (1, '移动任务', 0, 1),
  (2, '上料', 1, 1),
  (3, '下料', 2, 1),
  (4, '充电', 3, 1),
  (5, '关闭继电器', 4, 1),
  (6, '对接', 5, 1),
  (7, '原地旋转', 6, 1),
  (9, '货架调整', 7, 1),
  (10, '出站', 8, 1),
  (11, '切换地图', 9, 1),
  (12, '高位上料', 10, 1),
  (13, '高位下料', 11, 1),
  (14, '直接上料', 12, 1),
  (15, '直接下料', 13, 1) ;

-- 2021/12/21 新增原点任务类型 by qklee
INSERT INTO `task_type`  (`name`, `action`, `enable`) VALUE ('原点任务', 250, 1);
/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : ercs_push

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2021-06-11 09:34:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for task_push
-- ----------------------------
DROP TABLE IF EXISTS `task_push`;
CREATE TABLE `task_push` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `task_chain_id` bigint(20) DEFAULT NULL COMMENT '任务链id',
  `task_id` bigint(20) DEFAULT NULL COMMENT '子任务id',
  `status` int(4) DEFAULT '0' COMMENT '0未推送，1已推送',
  `insert_time` datetime DEFAULT NULL COMMENT '插入时间',
  `finish_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`),
  KEY `status_index` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- 2021/7/28 推送失败次数 by fp
ALTER TABLE task_push ADD push_index INT DEFAULT NULL COMMENT '推送失败次数';
-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `plan_task_detail`;
CREATE TABLE `plan_task_detail` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- delete table 2021/04/27 syz
DROP TABLE IF EXISTS `plan_task_detail`;
-- create table 2021/04/27 syz
CREATE TABLE `plan_task_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `plan_task_id` bigint(11) NOT NULL COMMENT '任务计划id',
  `task_chain_template_id` bigint(11) NOT NULL COMMENT '绑定的任务链模板id',
  `sequence` int(2) NOT NULL COMMENT '多绑定时的排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务计划详情表';
DROP TABLE IF EXISTS `amr_version_update_info`;

CREATE TABLE `amr_version_update_info` (
  `id` BIGINT(11) NOT NULL AUTO_INCREMENT,
  `amr_id` BIGINT(11) NOT NULL,
  `version_code` VARCHAR(100) NOT NULL COMMENT '版本名称',
  `update_time` DATETIME NOT NULL DEFAULT NOW() COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='本体版本更新信息表';
DROP TABLE IF EXISTS `calling_device_task_ref`;
CREATE TABLE `calling_device_task_ref` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL COMMENT '呼叫器id',
  `button_id` bigint(20) NOT NULL COMMENT '呼叫器按钮ID',
  `task_id` bigint(20) NOT NULL COMMENT '任务链模板ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 22/10/2020 13:57:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amr
-- ----------------------------
DROP TABLE IF EXISTS `amr`;
CREATE TABLE `amr`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` bigint(20) NULL DEFAULT NULL COMMENT '类型 , 关联amr_type表id',
  `area_id` bigint(20) NULL DEFAULT NULL COMMENT '区域id',
  `enable` int(4) NULL DEFAULT 1 COMMENT '是否启用 0-禁用 1-启动',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 2021/4/15 add column luoyy
alter table amr
    add mac_address varchar(20) null comment 'amr注册的mac地址';

-- 2021/6/22 add column jhh
ALTER TABLE amr
    ADD group_id BIGINT(20) NULL COMMENT 'amr分组';
DROP TABLE IF EXISTS `amr_rest_station`;
CREATE TABLE `amr_rest_station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '休息站名',
  `map_id` bigint(20) NOT NULL,
  `rest_vertex_codes` varchar(255) NOT NULL COMMENT '休息点集合,顺序排序,英文逗号分隔',
  `enable` tinyint(255) DEFAULT '1' COMMENT '停用启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.102
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 192.168.1.102:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 23/11/2020 16:34:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charge_pile
-- ----------------------------
DROP TABLE IF EXISTS `charge_pile`;
CREATE TABLE `charge_pile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '充电桩名称',
  `occupy` bigint(20) DEFAULT NULL COMMENT '占用 0-空闲 >0 表示占用amr的id',
  `x` double DEFAULT NULL COMMENT 'x坐标',
  `y` double DEFAULT NULL COMMENT 'y坐标',
  `vertex_id` bigint(20) DEFAULT NULL COMMENT '点位id',
  `area_id` bigint(20) DEFAULT NULL COMMENT '区域id',
  `map_id` bigint(20) DEFAULT NULL COMMENT '地图id',
  `uuid` varchar(255) DEFAULT NULL COMMENT 'uuid,用于同步',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

-- 2021/2/24 增加充电桩启用,规格型号id，占用时长 By jhh
ALTER TABLE charge_pile ADD enable BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用 0-禁用 1-启用';
ALTER TABLE charge_pile ADD charge_model_id bigint(20) DEFAULT NULL COMMENT '充电桩型号,关联charge_pile_model.id';
ALTER TABLE charge_pile ADD last_time datetime(0) NULL DEFAULT NULL COMMENT '最后占用时间';
ALTER TABLE charge_pile DROP COLUMN `uuid`;

-- 2021/3/9 删除充电桩x，y，area_id 的关联键 By huoming
ALTER TABLE charge_pile DROP COLUMN x;
ALTER TABLE charge_pile DROP COLUMN y;
ALTER TABLE charge_pile DROP COLUMN area_id;
ALTER TABLE charge_pile ADD COLUMN `task_chain_id` bigint(20) DEFAULT NULL COMMENT '关联任务链id';

ALTER TABLE charge_pile ADD COLUMN `vertex_code` varchar(50) DEFAULT NULL COMMENT '关联点位code';
DROP TABLE IF EXISTS `amr_time_statics`;
CREATE TABLE `amr_time_statics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `amr_id` bigint(20) NOT NULL COMMENT '设备id',
  `work_time` bigint(20) NOT NULL COMMENT '任务时间',
  `error_time` bigint(20) DEFAULT NULL COMMENT '异常时间',
  `rest_time` bigint(20) DEFAULT NULL COMMENT '休息时间',
  `charge_time` bigint(20) DEFAULT NULL COMMENT '充电时间',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
DROP TABLE IF EXISTS `full_charge_record`;
CREATE TABLE `full_charge_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) NOT NULL,
  `battery_serial` varchar (30) NOT NULL COMMENT '电池序号',
  `charge_num` int COMMENT '本次满充的充电次数',
  `charge_time` datetime NOT NULL DEFAULT NOW() COMMENT '本次满充的时间',
  `charge_order_id` bigint(20)  COMMENT '充电任务ID',
  `charge_status` BOOLEAN DEFAULT NULL COMMENT '是否满充成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
-- create 2021/04/20 jhh
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_name` varchar(20) NOT NULL COMMENT '组名',
  `area_id` BIGINT(20) NOT NULL COMMENT '分组所属区域',
  `creat_time` datetime NOT NULL DEFAULT NOW() COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='group分组表';
DROP TABLE IF EXISTS `task_route`;
CREATE TABLE `task_route`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `task_id` bigint(11) NOT NULL COMMENT '任务ID',
  `route` text NOT NULL COMMENT '任务路由信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `task_route`ADD INDEX INDEX_TASK_ID(`task_id`);
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
DROP TABLE IF EXISTS `map_connection`;
CREATE TABLE `map_connection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `source_map_id` bigint(20) DEFAULT NULL COMMENT '起始地图id',
  `target_map_id` bigint(20) DEFAULT NULL COMMENT '目标地图id',
  `source_connect_point` bigint(20) DEFAULT NULL COMMENT '起始点位id',
  `target_connect_point` bigint(20) DEFAULT NULL COMMENT '目标点位id',
  `virtual_distance` double DEFAULT NULL COMMENT '虚拟距离',
  `bind_device_id` bigint(20) DEFAULT NULL COMMENT '绑定设备id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- alter table luoyy 2021/04/23

alter table map_connection modify source_connect_point varchar(255) null comment '起始点位id';

alter table map_connection modify target_connect_point varchar(255) null comment '目标点位id';
/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 127.0.0.1:3306
 Source Schema         : ercs

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 25/04/2021 17:03:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for amr_group_config
-- ----------------------------
DROP TABLE IF EXISTS `amr_group_config`;
CREATE TABLE `amr_group_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` bigint(20) NULL DEFAULT NULL,
  `amr_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of amr_group_config
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
-- create by hwb  2021012024
-- global_config definition

CREATE TABLE `global_config`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) NOT NULL COMMENT '名称',
    `value`       varchar(100) DEFAULT NULL COMMENT '配置value',
    `key`         varchar(100) NOT NULL COMMENT '配置key',
    `create_time` datetime     DEFAULT NULL,
    `update_time` datetime     DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `global_config_key_IDX` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;



INSERT INTO global_config
( name, value, `key`, create_time, update_time)
VALUES('转弯系数', NULL, 'TURN_FACTOR', '2021-12-24 11:44:58', '2021-12-24 11:44:58'),
      ('开启交管块的碰撞检测,默认不检测', NULL, 'OPEN_TRAFFIC_BLOCK_COLLISION_CHECK', '2021-12-24 11:45:58', '2021-12-24 11:45:58'),

      ('死锁检测周期,单位:秒', NULL, 'DEAD_LOCK_CHECK_TIMER', '2021-12-24 11:47:35', '2021-12-24 11:47:35'),
      ( '掉头定义角度', NULL, 'FULL_BACK_THETA', '2021-12-24 14:33:23', '2021-12-24 14:33:23'),
      ( '匹配点位阈值', NULL, 'MATCH_VERTEX_THRESHOLD', '2021-12-24 14:34:19', '2021-12-24 14:34:19'),
      ( '匹配虚拟点位阈值', NULL, 'MATCH_VIRTUAL_VERTEX_THRESHOLD', '2021-12-24 14:36:12', '2021-12-24 14:36:12'),
      ( '车辆通信服务器端口', NULL, 'COMMON_SERVER_PORT', '2021-12-24 14:36:47', '2021-12-24 14:36:47'),
      ('车辆掉线时间', NULL, 'AMR_OFFLINE_TIME', '2021-12-24 14:37:25', '2021-12-24 14:37:25'),
      ( '点位 距离车辆坐标太近 忽略发送', NULL, 'SENT_TO_AMR_VERTEX_IGNORE_DISTANCE', '2021-12-24 14:38:25', '2021-12-24 14:38:25'),
      ( '释放充电桩距离', NULL, 'RELEASE_CHARGE_PILE_DISTANCE', '2021-12-24 14:38:49', '2021-12-24 14:38:49'),
      ( '锁点总长度', NULL, 'LOCK_POINT_TOTAL_LENGTH', '2021-12-24 14:44:03', '2021-12-24 14:44:03'),
      ( '充电重试次数', NULL, 'CHARGE_AUTO_RETRY_TIME', '2021-12-24 14:45:00', '2021-12-24 14:45:00'),
      ( '全局默认车辆空闲休息时间', NULL, 'AMR_REST_IDLE_TIME', '2021-12-24 14:45:27', '2021-12-24 14:45:27'),
      ( '等待任务等待时间', NULL, 'TASK_FINISH_PAUSE_TIME', '2021-12-24 14:45:46', '2021-12-24 14:45:46'),
      ('入栈拆分对接可忽略距离', NULL, 'IGNORE_DOCKING_SPLIT_DISTANCE', '2021-12-24 14:46:14', '2021-12-24 14:46:14'),
      ( '默认全局平局速度', NULL, 'DEFAULT_ROAD_AVG_SPEED', '2021-12-24 14:46:37', '2021-12-24 14:46:37'),
      ( '是否启用动态路径权重', NULL, 'DYNAMIC_WEIGHT_ENABLE', '2021-12-24 14:53:09', '2021-12-24 14:53:09'),
      ( '旋转任务拆分角度阈值', NULL, 'ROTATE_ANGLE_THRESHOLD', '2021-12-24 14:53:31', '2021-12-24 14:53:31'),
      ( '起点旋转任务拆分角度阈值', NULL, 'ORIGIN_ROTATE_ANGLE_THRESHOLD', '2021-12-24 14:53:50', '2021-12-24 14:53:50'),
      ( '调度异常错误码上限大小', NULL, 'RCS_EXCEPTION_CODE_LIMIT', '2021-12-24 14:54:28', '2021-12-24 14:54:28'),
      ('边的插点距离', NULL, 'INSERT_POINT_DISTANCE', '2021-12-24 14:55:11', '2021-12-24 14:55:11'),
      ( '异常车占用的路径的权重', NULL, 'EXCEPTION_EDGE_WEIGHT', '2021-12-24 14:55:38', '2021-12-24 14:55:38'),
      ( '圆弧曲率阈值', NULL, 'ARC_CURVATURE_THRESHOLD', '2021-12-24 14:56:16', '2021-12-24 14:56:16'),
      ( '货架调整忽略旋转距离', NULL, 'ADJUST_IGNORE_ROTATE_DISTANCE', '2021-12-24 14:58:09', '2021-12-24 14:58:09'),
      ( '是否启用绕开异常车功能', NULL, 'DETOURS_MANAGER_SWITCH', '2021-12-24 14:58:37', '2021-12-24 14:58:37'),
      ( '是否启用后退解死锁功能', NULL, 'BACK_MANAGER_SWITCH', '2021-12-24 15:00:41', '2021-12-24 15:00:41'),
      ( '满充间隔时间', NULL, 'AMR_FULL_CHARGE_TIME', '2021-12-24 15:01:47', '2021-12-24 15:01:47'),
      ( '满充间隔充电次数', NULL, 'AMR_FULL_CHARGE_NUM', '2021-12-24 15:02:07', '2021-12-24 15:02:07'),
      ( '是否开启工位点通道独占功能', NULL, 'OCCUPIED_PASSAGE_WAY_ALONE', '2021-12-24 15:02:52', '2021-12-24 15:02:52'),
      ( '定时监控充电任务周期,单位：秒', NULL, 'CHARGE_TASK_MONITOR_TIMER', '2021-12-24 15:05:14', '2021-12-24 15:05:14'),
      ( '是否关闭交管死锁检测线程,单位：秒', NULL, 'CLOSE_TRAFFIC_DEAD_LOCK_CHECKER', '2021-12-24 15:05:40', '2021-12-24 15:05:40'),
      ( '是否开启小车候选选车器', NULL, 'AMR_CANDIDATE_CHOOSER', '2021-12-24 15:06:38', '2021-12-24 15:06:38'),
      ( '候选任务检测周期', NULL, 'CANDIDATE_TASK_MONITOR_TIME', '2021-12-24 15:10:38', '2021-12-24 15:10:38'),
      ('是否关闭，候选任务检测器', NULL, 'CLOSE_CANDIDATE_TASK_MONITOR', '2021-12-24 15:11:08', '2021-12-24 15:11:08'),
      ( '交管锁点离最近不能锁点的距离（虽然锁到，但是离锁不到的点太近了，就剪切掉）', NULL, 'TRAFFIC_TAIL_CUT_DISTANCE', '2021-12-24 15:11:51', '2021-12-24 15:11:51');

UPDATE  global_config set name = "满充间隔时间,单位：天" WHERE `key` = "AMR_FULL_CHARGE_TIME";

UPDATE  global_config set name = "保持的车距,单位：米" WHERE `key` = "TRAFFIC_TAIL_CUT_DISTANCE";
ALTER table global_config add reboot int default 0 comment "是否需要重启 0 不需要 1需要";
UPDATE global_config set reboot = 1 WHERE `key` in ("COMMON_SERVER_PORT","AMR_OFFLINE_TIME","CHARGE_TASK_MONITOR_TIMER","CLOSE_TRAFFIC_DEAD_LOCK_CHECKER","CANDIDATE_TASK_MONITOR_TIME","CLOSE_CANDIDATE_TASK_MONITOR","DEAD_LOCK_CHECK_TIMER","TASK_FINISH_PAUSE_TIME");

-- 新增任务派发时间膨胀因子配置 by qklee 2021/12/31
INSERT INTO `global_config` (`name`, `value`, `key`, `create_time`, `update_time`)
VALUES ('任务派发时间膨胀因子，单位米', NULL, 'TASK_DISPATCH_TIME_FACTOR', '2021-12-31 14:05:50', '2021-12-31 14:05:50'),
       ('任务派发可忽略时间膨胀的优先级阈值', NULL, 'TASK_DISPATCH_PRIORITY_THRESHOLD', '2021-01-05 10:38:50', '2021-01-05 10:38:50');

-- 更新配置描述 by qklee 2022/01/06
UPDATE  `global_config` set `name` = '是否开启交管块的碰撞检测' WHERE `key` = 'OPEN_TRAFFIC_BLOCK_COLLISION_CHECK';
UPDATE  `global_config` set `name` = '掉头定义角度, 单位：度' WHERE `key` = 'FULL_BACK_THETA';
UPDATE  `global_config` set `name` = '匹配点位阈值, 单位：米' WHERE `key` = 'MATCH_VERTEX_THRESHOLD';
UPDATE  `global_config` set `name` = '匹配虚拟点位阈值, 单位：米' WHERE `key` = 'MATCH_VIRTUAL_VERTEX_THRESHOLD';
UPDATE  `global_config` set `name` = '车辆掉线时间, 单位：秒' WHERE `key` = 'AMR_OFFLINE_TIME';
UPDATE  `global_config` set `name` = '忽略发送点位距离, 单位：米' WHERE `key` = 'SENT_TO_AMR_VERTEX_IGNORE_DISTANCE';
UPDATE  `global_config` set `name` = '释放充电桩距离, 单位：米' WHERE `key` = 'RELEASE_CHARGE_PILE_DISTANCE';
UPDATE  `global_config` set `name` = '锁点总长度, 单位：米' WHERE `key` = 'LOCK_POINT_TOTAL_LENGTH';
UPDATE  `global_config` set `name` = '全局默认车辆空闲休息时间, 单位：秒' WHERE `key` = 'AMR_REST_IDLE_TIME';
UPDATE  `global_config` set `name` = '用户确认等待时间, 单位：秒' WHERE `key` = 'TASK_FINISH_PAUSE_TIME';
UPDATE  `global_config` set `name` = '入栈拆分对接可忽略距离, 单位：米' WHERE `key` = 'IGNORE_DOCKING_SPLIT_DISTANCE';
UPDATE  `global_config` set `name` = '默认全局平局速度, 单位：米/秒' WHERE `key` = 'DEFAULT_ROAD_AVG_SPEED';
UPDATE  `global_config` set `name` = '路径旋转拆分角度阈值, 单位：度' WHERE `key` = 'ROTATE_ANGLE_THRESHOLD';
UPDATE  `global_config` set `name` = '起点旋转拆分角度阈值, 单位：度' WHERE `key` = 'ORIGIN_ROTATE_ANGLE_THRESHOLD';
UPDATE  `global_config` set `name` = '边的插点距离, 单位：米' WHERE `key` = 'INSERT_POINT_DISTANCE';
UPDATE  `global_config` set `name` = '货架调整忽略旋转距离, 单位：米' WHERE `key` = 'ADJUST_IGNORE_ROTATE_DISTANCE';
UPDATE  `global_config` set `name` = '是否关闭交管死锁检测线程' WHERE `key` = 'CLOSE_TRAFFIC_DEAD_LOCK_CHECKER';
UPDATE  `global_config` set `name` = '候选任务检测周期, 单位：秒' WHERE `key` = 'CANDIDATE_TASK_MONITOR_TIME';
UPDATE  `global_config` set `name` = '是否关闭候选任务检测器' WHERE `key` = 'CLOSE_CANDIDATE_TASK_MONITOR';
UPDATE  `global_config` set `name` = '任务派发时间膨胀因子, 单位：米' WHERE `key` = 'TASK_DISPATCH_TIME_FACTOR';
UPDATE  `global_config` set `name` = '任务派发可忽略时间膨胀的优先级',  `create_time` = '2022-01-05 10:38:50', `update_time` = '2022-01-05 10:38:50' WHERE `key` = 'TASK_DISPATCH_PRIORITY_THRESHOLD';


INSERT INTO `global_config` (`name`, `value`, `key`, `create_time`, `update_time`)
VALUES ('任务派发策略，0：任务选车 1：车选任务', NULL, 'TASK_DISPATCH_STRATEGY', '2021-01-10 15:10:50', '2021-01-10 15:10:50'),
       ('单次派发任务数量与车辆数量倍数因子', NULL, 'TASK_DISPATCH_NUM_FACTOR', '2021-01-10 15:10:50', '2021-01-10 15:10:50');

-- 新增路径规划边过滤配置 by hwb 2022/01/11
INSERT INTO ercs.global_config
( name, value, `key`, create_time, update_time, reboot)
VALUES( '路径规划边宽度过滤，默认关闭', NULL, 'OPEN_PATH_WIDTH_CHECK', '2022-01-11 11:29:37', '2022-01-11 11:29:37', 0);

-- 新增三方交管http地址配置 by ycm 2022/01/18
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('三方交管http地址', NULL, 'THIRD_PART_TRAFFIC_HTTP', '2022-01-18 15:40:44', '2022-01-18 15:40:46', 0);

-- 新增圆弧碰撞倍数配置 by luoyy 2022/01/19
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('检测圆弧碰撞时,膨胀一定的车身尺寸,默认0.1倍', NULL, 'ARC_EXPANSION_MULTIPLE', '2022-01-19 14:10:44', '2022-01-19 14:10:46', 0);

-- 更新圆弧碰撞检测时,膨胀数值说明
UPDATE  `global_config` set `name` = '检测圆弧碰撞时,膨胀一定的车身尺寸, 单位：米,默认膨胀0.1' WHERE `key` = 'TASK_DISPATCH_TIME_FACTOR';

-- 任务派发时间膨胀因子 by luoyy 2022/02/09
UPDATE  `global_config` set `name` = '任务派发时间膨胀因子, 单位：米' WHERE `key` = 'TASK_DISPATCH_TIME_FACTOR';

-- 更新圆弧碰撞检测时,膨胀数值说明 by luoyy 2022/02/09
UPDATE  `global_config` set `name` = '检测圆弧碰撞时,膨胀一定的车身尺寸, 单位：米,默认膨胀0.1' WHERE `key` = 'ARC_EXPANSION_MULTIPLE';

-- 新增服务器用户名配置 by qklee 2022/02/09
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('调度服务器用户名', NULL, 'RCS_SERVER_USER', '2022-02-09 13:51:44', '2022-02-09 13:51:44', 0);

-- 新增调度更新目录 by qklee 2022/02/16
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('调度更新目录', NULL, 'RCS_UPDATE_DIR', '2022-02-16 13:51:44', '2022-02-16 13:51:44', 0);

-- 新增本体更新版本功能的开关 by luoyy 2022/02/16
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('关闭本体版本自动更新功能', NULL, 'CLOSE_NOUMENON_VERSION_UPDATE', '2022-03-04 17:07:44', '2022-02-16 13:51:44', 1);

-- 新增特殊车型原地上下料功能 by qklee 2022/03/07
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('原地对接距离阈值', NULL, 'IN_SITU_DOCKING_DISTANCE', '2022-03-07 13:51:44', '2022-03-07 13:51:44', 0),
       ('原地对接角度阈值', NULL, 'IN_SITU_DOCKING_ANGLE', '2022-03-07 13:51:44', '2022-03-07 13:51:44', 0);
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `special_vertex`;
CREATE TABLE `special_vertex` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vertex_code` varchar(255) NOT NULL COMMENT '点位code',
  `map_id` bigint(20) NOT NULL COMMENT '地图id',
  `type` int(255) NOT NULL DEFAULT '0' COMMENT '业务类型:0避让点',
  `priority` int(1) NOT NULL DEFAULT '0' COMMENT '优先级',
  `amr_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态值:0可用,1占用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特务点位配置表';
-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `plan_task_history`;
CREATE TABLE `plan_task_history` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- delete table 2021/04/27 syz
DROP TABLE IF EXISTS `plan_task_history`;

-- create table 2021/04/28
CREATE TABLE `plan_task_execute` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `plan_task_id` bigint(11) NOT NULL,
  `task_chain_template_id` bigint(11) NOT NULL COMMENT '任务链id',
  `start_time` datetime DEFAULT NULL COMMENT '本次的开始时间',
  `loop_count` int(2) NOT NULL DEFAULT '0' COMMENT '循环次数:需跟任务计划保持一致',
  `execute_count` int(2) DEFAULT '0' COMMENT '实际执行的次数',
  `status` int(1) DEFAULT NULL COMMENT '0未开始 1结束',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='计划执行表';
-- creat table 2021/4/20 jhh
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `r_id` BIGINT NOT NULL COMMENT '角色ID',
  `p_id` BIGINT NOT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限关联表';
-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `plan_task`;
CREATE TABLE `plan_task` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `last_executed_time` datetime DEFAULT NULL,
  `loop_type` int(11) NOT NULL,
  `loop_time` int(11) DEFAULT NULL,
  `loop_count` int(11) DEFAULT NULL,
  `amr_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- delete table 2021/04/27 syz
DROP TABLE IF EXISTS `plan_task`;
-- create table 2021/04/27 syz
CREATE TABLE `plan_task` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '任务计划名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '计划状态0未开始,1进行中,2已完成',
  `start_time` datetime NOT NULL COMMENT '启动时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `loop_type` int(1) NOT NULL COMMENT '循环类型0:不循环,1每天,2每周,3每月,4自定义',
  `loop_type_detail` varchar(100) DEFAULT NULL COMMENT '类型详情:记录特殊类型执行策略',
  `loop_count` int(3) NOT NULL COMMENT '循环次数:最大50',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否激活启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务计划表';

-- update table 2021/09/27 by syz
alter table plan_task modify column status int(1) NOT NULL DEFAULT '0' comment '计划状态0未开始,1进行中,3已完成';
-- create table 2021/1/25 xies
DROP TABLE IF EXISTS `transport_order_model`;
CREATE TABLE `transport_order_model` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- delete table 2021/04/20 syz
DROP TABLE IF EXISTS `transport_order_model`;
-- create table 2021/04/20 syz
CREATE TABLE `task_chain_template` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '模板名称',
  `amr_id` bigint(11) DEFAULT NULL COMMENT 'amr id',
  `group_id` bigint(11) DEFAULT NULL COMMENT '车组id',
  `area_id` bigint(11) DEFAULT NULL COMMENT '区域id',
  `priority` int(10) DEFAULT NULL COMMENT '优先级',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用禁用标识0:禁用 1启用 预留字段 可做删除标记',
  `repeat_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '重复下发标记 0:不可重复 1:可重复',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务链模板表';
DROP TABLE IF EXISTS `external_traffic_device_priority`;
CREATE TABLE `external_traffic_device_priority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `priority` int(1) NOT NULL COMMENT '申请优先级,同优先级时,按照申请时间排序',
  `device_code` varchar(255) NOT NULL COMMENT '申请设备编码',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '停用启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_code_uk` (`device_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `calling_device`;
CREATE TABLE `calling_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL UNIQUE COMMENT '呼叫盒编号',
  `ip` varchar(20) NOT NULL UNIQUE COMMENT '设备通信ip',
  `port` int default NULL COMMENT '设备通信端口',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用 0-禁用 1-启用',
  `type_id` bigint(20) NOT NULL COMMENT '呼叫盒类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `calling_device_type`;
CREATE TABLE `calling_device_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '类型名称',
  `buttons_num` int NOT NULL COMMENT '按钮个数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 初始化蓝芯标准自动门和电梯协议类型 by jhh
insert  into `calling_device_type`(`id`,`name`,`buttons_num`) values (0,'AW04标准1.0',4);
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- alter table 2021/06/10 qklee
alter table `area`
    modify column `id` bigint(11) not null auto_increment;
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `external_traffic_conf`;
CREATE TABLE `external_traffic_conf` (
  `id` bigint(20) NOT NULL,
  `traffic_code` varchar(255) NOT NULL COMMENT '交管区域的唯一编码',
  `device_code` varchar(255) DEFAULT NULL COMMENT '设备申请唯一编码,即当前申请的来源编码',
  `status` int(1) NOT NULL COMMENT '当前交管区域状态0可用,1占用',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `release_time` datetime DEFAULT NULL COMMENT '释放时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备申请交管区域配置表';

-- 交管区域编码唯一 2021/12/31 by syz
CREATE UNIQUE INDEX traffic_code_uindex ON external_traffic_conf (traffic_code);
DROP TABLE IF EXISTS `vertex`;
CREATE TABLE `vertex` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '名称',
  `alias` varchar(255) DEFAULT NULL COMMENT '别名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `x` double DEFAULT NULL COMMENT 'x坐标',
  `y` double DEFAULT NULL COMMENT 'y坐标',
  `theta` double DEFAULT NULL COMMENT '角度,弧度制',
  `type` int(4) DEFAULT NULL COMMENT '类型',
  `loading` int(4) DEFAULT NULL COMMENT '上下料 0-上料 1-下料',
  `docking_direction` int(4) DEFAULT NULL COMMENT '对接方向 0-左,1-右 ,2-前 ,3-后,4-左调整,5-右调整,6-后调整',
  `docking_x` double DEFAULT NULL COMMENT '对接x距离',
  `docking_y` double DEFAULT NULL COMMENT '对接y距离',
  `docking_theta` double DEFAULT NULL COMMENT '对接角度',
  `outbound_x` double NULL DEFAULT NULL COMMENT '出站x距离',
  `outbound_y` double NULL DEFAULT NULL COMMENT '出站y距离',
  `outbound_theta` double NULL DEFAULT NULL COMMENT '对接角度',
  `force_load` int(4) DEFAULT 0 COMMENT '是否强制上下料 0-否 ,1-是',
  `reloc_threshold` double DEFAULT NULL COMMENT '重定位阈值',
  `forbidden_back` int(4) DEFAULT 0 COMMENT '是否禁止掉头 0-否 ,1 -是',
  `allow_park` int(4) DEFAULT 1 COMMENT '是否允许停靠 0-否 , 1-是',
  `extend` varchar(2550) DEFAULT NULL COMMENT '拓展属性 ,使用JSON字符串格式',
  `map_id` bigint(20) DEFAULT NULL COMMENT '地图id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
CREATE TABLE `equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL COMMENT '设备编号',
  `vertex_id` bigint(20) NOT NULL COMMENT '绑定的点的id',
  `ip` varchar(20) NOT NULL COMMENT '设备通信ip',
  `port` int NOT NULL COMMENT '设备通信端口',
  `addr` int COMMENT '设备首地址,提供首地址按协议解析',
  `pass_val` int COMMENT '状态到位寄存器地址值',
  `relation_id` bigint(20) COMMENT '关联设备id',
  `enable` BOOLEAN NOT NULL DEFAULT TRUE COMMENT '是否启用 0-禁用 1-启用',
  `type_id` bigint(20) NOT NULL COMMENT '设备类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- update by jhh 2021.09.07
ALTER TABLE equipment ADD COLUMN `vertex_codes` varchar(50) DEFAULT NULL COMMENT '关联多个点位code';
ALTER TABLE equipment ADD COLUMN `map` bigint(20) DEFAULT NULL COMMENT '地图ID';
DROP TABLE IF EXISTS `amr_warn_list`;
CREATE TABLE `amr_warn_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `warn_id` bigint(20) NOT NULL COMMENT '异常id',
  `warn_type` varchar(30) DEFAULT NULL COMMENT '异常来源（所属类目）',
  `warn_name` varchar(30) DEFAULT NULL COMMENT '异常(名)内容',
  `enable` tinyint(1) DEFAULT NULL COMMENT '异常是否统计（启用），0:不启用；1:启用',
  `is_push` tinyint(1) DEFAULT NULL COMMENT '是否推送，0:不推送；1:推送',
  `warn_time` bigint(20) NOT NULL COMMENT '异常统计阈值时间，单位：秒',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='amr异常字典表';


--  2021/07/15 xujun000288 insert 表数据初始化
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (1, '本体', '看门狗触发', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (4294967297, '底盘', '急停', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (4294967298, '底盘', '碰撞', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (8589934593, '电机', '非使能', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (8589934594, '电机', '刹车', 1, 0, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (12884901889, '电池', '断连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (12884901890, '电池', '欠压', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (12884901891, '电池', '充电没检测到电压', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 12884901892, '电池', '无充电电流', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 17179869185, '定位', '重定位失败', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 17179869186, '定位', '打滑', 1, 0, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 21474836483, '导航', '近处停障', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 21474836485, '导航', '路径被挡', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 25769803777, '顶升', '顶升位置异常', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 25769803778, '顶升', '顶升不平衡', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 34359738369, '激光', '前激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 34359738370, '激光', '前激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 38654705665, '激光', '后激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 38654705666, '激光', '后激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 47244640257, '激光', '左前激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 47244640258, '激光', '左前激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 60129542145, '激光', '右前激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 60129542146, '激光', '右前激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 64424509441, '激光', '右后激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 64424509442, '激光', '右后激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 68719476737, '激光', '顶激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 68719476738, '激光', '顶激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874241, '深度相机', '后深度相机打不开', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874242, '深度相机', '后深度相机无数据', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874243, '深度相机', '后深度相机无设备', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874244, '深度相机', '后深度相机标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841537, '深度相机', '前深度相机打不开', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841538, '深度相机', '前深度相机无数据', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841539, '深度相机', '前深度相机无设备', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841539, '深度相机', '前深度相机无设备', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841540, '深度相机', '前深度相机标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841540, '深度相机', '前深度相机标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 292057776129, '二维码相机', '上相机打不开', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 292057776130, '二维码相机', '上相机无数据', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 292057776131, '二维码相机', '上相机断连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 296352743425, '二维码相机', '下相机打不开', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 296352743426, '二维码相机', '下相机无数据', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 296352743427, '二维码相机', '下相机断连', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 300647710721, '二维码相机', '上相机外参标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 304942678017, '二维码相机', '下相机外参标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 330712481796, '视觉定位', '超过3s无图像', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 330712481797, '视觉定位', '超过3s无里程计', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 330782481796, '视觉定位', '长时间无特征', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 377957122049, '对接', '对接障碍', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 420906795009, 'x轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 425201762305, 'y轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 429496729601, 'z轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 433791696897, '相机轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 438086664193, 'x轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 442381631489, 'y轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 446676598785, 'z轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 450971566081, '相机轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 472446402561, '物料检测', '应该有料但未检测到', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 472446402562, '物料检测', '应该无料但检测到', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 476741369857, 'MQTT', 'MQTT通讯异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 481036337153, '分条机执行机构', '分条机上升轴电机报警', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 485331304449, '分条机执行机构', '分条机上升轴任务出错', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 10, 'RCS', 'Amr执行任务异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 20, 'RCS', 'Amr注册异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 30, 'RCS', '路由计算异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 40, 'RCS', 'Amr任务拆分异常', 1, 1, 30);

-- 2021/10/26  xujun  update 更新异常数据
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='x轴任务出错' where warn_type='x轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='y轴任务出错' where warn_type='y轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='z轴任务出错' where warn_type='z轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='相机轴任务出错' where warn_type='相机轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='x轴电机报警' where warn_type='x轴电机报警';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='y轴电机报警' where warn_type='y轴电机报警';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='z轴电机报警' where warn_type='z轴电机报警';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='相机轴电机报警' where warn_type='相机轴电机报警';

-- 2021/12/15  lqk  insert 新增其他异常
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 10010, 'RCS', '其他异常', 1, 1, 30);
-- creat table 2021/4/20 jhh
DROP TABLE IF EXISTS `user_group_conf`;
CREATE TABLE `user_group_conf`(
  `id` BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
  `user_id` BIGINT NOT NULL COMMENT '用户id',
  `group_id` BIGINT NOT NULL COMMENT '组id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组关联表';
