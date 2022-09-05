-- create 2021/12/30 luoyy

DROP TABLE IF EXISTS `third_part_traffic`;
CREATE TABLE  `third_part_traffic`
(
     id            int auto_increment
            primary key,
        traffic_code  varchar(255)                  not null comment '第三方交管区域名',
        bound_points  text                          not null comment '改该交管区绑定的点,文本类型，点位之间用逗号隔开',
        map_id        bigint                        not null comment '地图ID',
        traffic_key   varchar(255) default 'lanxin' null comment '第三方交管对接键值',
        occupy_device varchar(255)                  null comment '占用该公共区域的设备',
        create_time   datetime                      null,
        update_time   datetime                      null
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方交管数据关联表';
