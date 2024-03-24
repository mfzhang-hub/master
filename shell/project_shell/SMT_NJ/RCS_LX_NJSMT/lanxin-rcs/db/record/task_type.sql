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
