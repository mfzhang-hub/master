DROP TABLE IF EXISTS `amr_warn_log`;
CREATE TABLE `amr_warn_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `amr_id` bigint(20) NOT NULL COMMENT '异常车辆id',
  `warn_list_id` bigint(20) NOT NULL COMMENT '异常清单表关联id',
  `map_id` varchar(20) DEFAULT NULL COMMENT '异常位置地图id',
  `point` varchar(20) DEFAULT NULL COMMENT '异常点位',
  `start_time` datetime NOT NULL COMMENT '异常开始时间（异常入库时间）',
  `close_time` datetime DEFAULT NULL COMMENT '异常关闭时间',
  `warn_state` int(1) NOT NULL COMMENT '异常状态，0：未关闭；1：已关闭',
  `pos` varchar(45) DEFAULT NULL COMMENT '异常位置',
  `order_chain_id` bigint(20) DEFAULT NULL COMMENT '任务链id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='amr异常日志表';

-- 2021/07/08  xujun000288 增加 warn_source 字段
ALTER TABLE amr_warn_log ADD warn_source INT ( 1 ) NULL COMMENT '异常来源；0:小车上报；1:RCS上报';

-- 2021/07/13 xujun000288 增加  warn_level 字段
ALTER TABLE amr_warn_log ADD warn_level INT ( 1 ) NULL COMMENT '异常等级';


