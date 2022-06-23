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
