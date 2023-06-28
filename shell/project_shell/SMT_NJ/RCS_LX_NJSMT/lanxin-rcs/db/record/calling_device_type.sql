DROP TABLE IF EXISTS `calling_device_type`;
CREATE TABLE `calling_device_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '类型名称',
  `buttons_num` int NOT NULL COMMENT '按钮个数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 初始化蓝芯标准自动门和电梯协议类型 by jhh
insert  into `calling_device_type`(`id`,`name`,`buttons_num`) values (0,'AW04标准1.0',4);
