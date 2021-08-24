CREATE TABLE `amr_bind_charge_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amr_id` bigint(20) DEFAULT NULL,
  `charge_pile_id` bigint(20) DEFAULT NULL COMMENT '绑定的充电桩id',
  `charge_pile_model_id` varchar(255) DEFAULT NULL COMMENT '适配充电桩型号ids,例:1,2,3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
