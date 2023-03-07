

CREATE TABLE `zx_scanner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT '扫描器名称',
  `ip` varchar(40) DEFAULT NULL,
  `port` int(20) DEFAULT NULL,
  `address` int(20) DEFAULT NULL,
  `plat_form_id` bigint(20) DEFAULT NULL COMMENT '扫描器所属站台',
  `enable` int(5) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

insert  into `zx_scanner`(`id`,`name`,`ip`,`port`,`address`,`plat_form_id`,`enable`) values (1,'101扫描器','172.31.125.35',502,8,1,0),(2,'102扫描器','172.31.125.35',502,28,2,0);


