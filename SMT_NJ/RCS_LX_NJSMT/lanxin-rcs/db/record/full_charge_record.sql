DROP TABLE IF EXISTS `full_charge_record`;
CREATE TABLE `full_charge_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) NOT NULL,
  `battery_serial` varchar (30) NOT NULL COMMENT '电池序号',
  `charge_num` int COMMENT '本次满充的充电次数',
  `charge_time` datetime NOT NULL DEFAULT NOW() COMMENT '本次满充的时间',
  `charge_order_id` bigint(20)  COMMENT '充电任务ID',
  `charge_status` BOOLEAN DEFAULT NULL COMMENT '是否满充成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
