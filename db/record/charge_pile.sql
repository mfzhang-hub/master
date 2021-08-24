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
