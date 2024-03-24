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
