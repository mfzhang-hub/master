DROP TABLE IF EXISTS `vertex`;
CREATE TABLE `vertex` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '名称',
  `alias` varchar(255) DEFAULT NULL COMMENT '别名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `x` double DEFAULT NULL COMMENT 'x坐标',
  `y` double DEFAULT NULL COMMENT 'y坐标',
  `theta` double DEFAULT NULL COMMENT '角度,弧度制',
  `type` int(4) DEFAULT NULL COMMENT '类型',
  `loading` int(4) DEFAULT NULL COMMENT '上下料 0-上料 1-下料',
  `docking_direction` int(4) DEFAULT NULL COMMENT '对接方向 0-左,1-右 ,2-前 ,3-后,4-左调整,5-右调整,6-后调整',
  `docking_x` double DEFAULT NULL COMMENT '对接x距离',
  `docking_y` double DEFAULT NULL COMMENT '对接y距离',
  `docking_theta` double DEFAULT NULL COMMENT '对接角度',
  `outbound_x` double NULL DEFAULT NULL COMMENT '出站x距离',
  `outbound_y` double NULL DEFAULT NULL COMMENT '出站y距离',
  `outbound_theta` double NULL DEFAULT NULL COMMENT '对接角度',
  `force_load` int(4) DEFAULT 0 COMMENT '是否强制上下料 0-否 ,1-是',
  `reloc_threshold` double DEFAULT NULL COMMENT '重定位阈值',
  `forbidden_back` int(4) DEFAULT 0 COMMENT '是否禁止掉头 0-否 ,1 -是',
  `allow_park` int(4) DEFAULT 1 COMMENT '是否允许停靠 0-否 , 1-是',
  `extend` varchar(2550) DEFAULT NULL COMMENT '拓展属性 ,使用JSON字符串格式',
  `map_id` bigint(20) DEFAULT NULL COMMENT '地图id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
