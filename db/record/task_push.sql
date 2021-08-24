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
