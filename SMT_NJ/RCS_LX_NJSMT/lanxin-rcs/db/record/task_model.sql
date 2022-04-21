-- create table 2021/3/3 luoyy
DROP TABLE IF EXISTS `task_model`;
create table `task_model`
(
    id         varchar(50)   not null
        primary key,
    task_index int default 0 not null,
    order_id   varchar(50)   not null,
    target     varchar(200)  not null,
    map_id     varchar(200)  not null,
    actions    varchar(5000) not null
)
    collate = utf8mb4_unicode_ci;

-- update table 2021/03/18 syz
ALTER TABLE task_model ADD COLUMN extend varchar(512) DEFAULT NULL COMMENT '任务拓展';

-- delete table 2021/04/20 syz
DROP TABLE IF EXISTS `task_model`;
-- create table 2021/04/20 syz
CREATE TABLE `task_template` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sequence` double NOT NULL DEFAULT '0' COMMENT '排序',
  `task_chain_template_id` bigint(11) NOT NULL COMMENT '任务链模板id',
  `end_point_code` varchar(255) NOT NULL COMMENT '目标点',
  `map_id` bigint(20) NOT NULL COMMENT '地图id',
  `action` int(4) NOT NULL COMMENT '动作类型',
  `extend` varchar(512) DEFAULT NULL COMMENT '任务拓展',
  `docking_direction` int(4) DEFAULT NULL COMMENT '对接方向',
  `docking_x` double DEFAULT NULL COMMENT '对接x距离',
  `docking_y` double DEFAULT NULL COMMENT '对接y距离',
  `loading` int(4) DEFAULT NULL COMMENT '上下料',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='子任务模板表';
