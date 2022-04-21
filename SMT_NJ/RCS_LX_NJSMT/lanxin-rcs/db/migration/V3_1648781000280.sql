
-- 2022/3/15 add column jhh
ALTER TABLE amr_version_info
    ADD type int (1) NOT NULL DEFAULT 0 COMMENT '程序包类型0-本体程序,1-本体后台';
-- 2022/3/15 update column length jhh
ALTER TABLE amr_version_info MODIFY path VARCHAR(200) NOT NULL COMMENT '存储相对路径';
ALTER TABLE amr_version_info MODIFY absolute_path VARCHAR(200) NOT NULL COMMENT '存储绝对路径';

-- 2022/03/15  增加自定义类型协议电梯 by syz
insert  into `equipment_type`(`id`,`name`,`manager`) values (0, 'LX-自定义电梯', 'ModbusCustomElevator');
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `equipment_protocol`;
CREATE TABLE `equipment_protocol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `protocol_id` int(1) NOT NULL COMMENT '协议id',
  `protocol_name` varchar(100) NOT NULL COMMENT '协议名称',
  `keyword` varchar(50) NOT NULL COMMENT '关键描述符',
  `addr` int(4) NOT NULL COMMENT 'plc地址位',
  `value` int(4) NOT NULL COMMENT '值',
  `enable` tinyint(1) NOT NULL COMMENT '停用启用协议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='自定义电梯协议';

-- 2022/02/25 新增任务结束后需要等待的时间字段
ALTER TABLE `task` ADD `waiting_time` int(4)  DEFAULT NULL COMMENT '等待时间 单位秒';
-- 2022/02/25 新增可忽略等待时间的距离字段
ALTER TABLE `task` ADD `ignore_waiting_distance` double  DEFAULT NULL COMMENT '忽略等待距离 单位米';
DROP TABLE IF EXISTS `amr_task_chain_type_config`;
CREATE TABLE amr_task_chain_type_config
(
    id                   bigint AUTO_INCREMENT
        PRIMARY KEY,
    amr_id               bigint       NOT NULL COMMENT '车辆id',
    task_chain_type_info varchar(255) NULL COMMENT '车辆可执行任务链类型信息',
    CONSTRAINT amr_id
        UNIQUE (amr_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COLLATE = utf8_general_ci COMMENT '车辆任务链类型关联表';

-- update by syz 2022.03.21
ALTER TABLE equipment ADD COLUMN `protocol_id` int(1) DEFAULT NULL COMMENT '关联设备协议表的protocol_id';
ALTER TABLE equipment ADD COLUMN `inside_vertex_codes` varchar(50) DEFAULT NULL COMMENT '电梯类型设备内部点位code';
-- 2022/3/28 hwb  新增车辆连接超时异常
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 50, 'RCS', '车辆连接超时异常', 1, 1, 30);

-- 2022/02/25 新增任务链类型
ALTER TABLE `task_chain` ADD `type` int(4)  DEFAULT NULL COMMENT '任务链类型' AFTER `candidate_amr_id`;

-- 2022/03/09 新增动态改派标识
ALTER TABLE `task_chain` ADD `replaceable` tinyint(1) DEFAULT 0 COMMENT '动态派发替换标识，默认不支持';

-- 新增动态派车相关配置 by qklee 2022/03/11
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('可替换任务经过路程比率阈值', NULL, 'REPLACEABLE_PROCESS_RATE_THRESHOLD', '2022-03-11 13:51:44', '2022-03-11 13:51:44', 0),
       ('动态替换距离阈值', NULL, 'DYNAMIC_REPLACEMENT_DISTANCE_THRESHOLD', '2022-03-11 13:51:44', '2022-03-11 13:51:44', 0);

-- 新增动态派车相关配置 by qklee 2022/03/16
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('空车是否能下料', NULL, 'UNLOAD_WHEN_EMPTY', '2022-03-16 13:51:44', '2022-03-16 13:51:44', 0);

-- 新增锁点数据缓存的开关 by hwb 2022/03/17
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('开启锁点数据缓存', NULL, 'OPEN_LOCK_CACHE', '2022-03-17 17:07:44', '2022-03-17 17:07:44', 0);

-- 新增目标点缩放尺寸配置
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('目标点缩放尺寸：前后左右,英文逗号隔开,负数缩小,正数增大.单位：米', NULL, 'TARGET_ZOOM_SCALE', '2022-03-18 16:31:21', '2022-03-18 16:31:21', 0);
-- 重启交管等待时间:秒 by hwb 2022/03/24
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('重启交管等待时间:秒', NULL, 'RESTART_TRAFFIC_WAIT_TIME', '2022-03-24 16:31:21', '2022-03-24 16:31:21', 0);
