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
