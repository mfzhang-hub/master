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
