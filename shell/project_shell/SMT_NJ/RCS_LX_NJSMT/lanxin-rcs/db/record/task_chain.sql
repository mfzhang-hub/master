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

-- 2022/02/25 新增任务链类型
ALTER TABLE `task_chain` ADD `type` int(4)  DEFAULT NULL COMMENT '任务链类型' AFTER `candidate_amr_id`;

-- 2022/03/09 新增动态改派标识
ALTER TABLE `task_chain` ADD `replaceable` tinyint(1) DEFAULT 0 COMMENT '动态派发替换标识，默认不支持';
