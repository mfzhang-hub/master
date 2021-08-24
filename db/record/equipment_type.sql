CREATE TABLE `equipment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '设备类型名称',
  `manager` varchar(40) NOT NULL COMMENT '管理者类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 初始化蓝芯标准自动门和电梯协议类型 by jhh
insert  into `equipment_type`(`id`,`name`,`manager`) values (0,'LX-自动门','ModbusAutomaticDoor');
insert  into `equipment_type`(`id`,`name`,`manager`) values (0,'LX-电梯','ModbusElevator');

-- 2021/7/7  增加485类型协议电梯 by fp
insert  into `equipment_type`(`id`,`name`,`manager`) values (0, 'LX-485电梯', 'Modbus485Elevator');
