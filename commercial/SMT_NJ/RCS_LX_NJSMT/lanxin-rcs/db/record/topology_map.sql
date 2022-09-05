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
