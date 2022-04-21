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

-- 2022/02/25 新增任务结束后需要等待的时间字段
ALTER TABLE `task` ADD `waiting_time` int(4)  DEFAULT NULL COMMENT '等待时间 单位秒';
-- 2022/02/25 新增可忽略等待时间的距离字段
ALTER TABLE `task` ADD `ignore_waiting_distance` double  DEFAULT NULL COMMENT '忽略等待距离 单位米';
