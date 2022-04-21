SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charge_pile_history
-- ----------------------------
DROP TABLE IF EXISTS `charge_pile_history`;
CREATE TABLE `charge_pile_history`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `charge_pile_id` bigint(20) NOT NULL COMMENT '充电桩的ID',
  `amr_id` bigint(20) NOT NULL COMMENT 'AMR的ID',
  `task_chain_id` bigint(20) DEFAULT NULL COMMENT '充电任务链ID',
  `start_time` datetime(0) NOT NULL COMMENT '占用开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '占用结束时间',
  `use_time` int(10) NOT NULL COMMENT '占用时长（单位：分钟）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
