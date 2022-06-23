-- create by hwb  2021012024
-- global_config definition

CREATE TABLE `global_config`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) NOT NULL COMMENT '名称',
    `value`       varchar(100) DEFAULT NULL COMMENT '配置value',
    `key`         varchar(100) NOT NULL COMMENT '配置key',
    `create_time` datetime     DEFAULT NULL,
    `update_time` datetime     DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `global_config_key_IDX` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;



INSERT INTO global_config
( name, value, `key`, create_time, update_time)
VALUES('转弯系数', NULL, 'TURN_FACTOR', '2021-12-24 11:44:58', '2021-12-24 11:44:58'),
      ('开启交管块的碰撞检测,默认不检测', NULL, 'OPEN_TRAFFIC_BLOCK_COLLISION_CHECK', '2021-12-24 11:45:58', '2021-12-24 11:45:58'),

      ('死锁检测周期,单位:秒', NULL, 'DEAD_LOCK_CHECK_TIMER', '2021-12-24 11:47:35', '2021-12-24 11:47:35'),
      ( '掉头定义角度', NULL, 'FULL_BACK_THETA', '2021-12-24 14:33:23', '2021-12-24 14:33:23'),
      ( '匹配点位阈值', NULL, 'MATCH_VERTEX_THRESHOLD', '2021-12-24 14:34:19', '2021-12-24 14:34:19'),
      ( '匹配虚拟点位阈值', NULL, 'MATCH_VIRTUAL_VERTEX_THRESHOLD', '2021-12-24 14:36:12', '2021-12-24 14:36:12'),
      ( '车辆通信服务器端口', NULL, 'COMMON_SERVER_PORT', '2021-12-24 14:36:47', '2021-12-24 14:36:47'),
      ('车辆掉线时间', NULL, 'AMR_OFFLINE_TIME', '2021-12-24 14:37:25', '2021-12-24 14:37:25'),
      ( '点位 距离车辆坐标太近 忽略发送', NULL, 'SENT_TO_AMR_VERTEX_IGNORE_DISTANCE', '2021-12-24 14:38:25', '2021-12-24 14:38:25'),
      ( '释放充电桩距离', NULL, 'RELEASE_CHARGE_PILE_DISTANCE', '2021-12-24 14:38:49', '2021-12-24 14:38:49'),
      ( '锁点总长度', NULL, 'LOCK_POINT_TOTAL_LENGTH', '2021-12-24 14:44:03', '2021-12-24 14:44:03'),
      ( '充电重试次数', NULL, 'CHARGE_AUTO_RETRY_TIME', '2021-12-24 14:45:00', '2021-12-24 14:45:00'),
      ( '全局默认车辆空闲休息时间', NULL, 'AMR_REST_IDLE_TIME', '2021-12-24 14:45:27', '2021-12-24 14:45:27'),
      ( '等待任务等待时间', NULL, 'TASK_FINISH_PAUSE_TIME', '2021-12-24 14:45:46', '2021-12-24 14:45:46'),
      ('入栈拆分对接可忽略距离', NULL, 'IGNORE_DOCKING_SPLIT_DISTANCE', '2021-12-24 14:46:14', '2021-12-24 14:46:14'),
      ( '默认全局平局速度', NULL, 'DEFAULT_ROAD_AVG_SPEED', '2021-12-24 14:46:37', '2021-12-24 14:46:37'),
      ( '是否启用动态路径权重', NULL, 'DYNAMIC_WEIGHT_ENABLE', '2021-12-24 14:53:09', '2021-12-24 14:53:09'),
      ( '旋转任务拆分角度阈值', NULL, 'ROTATE_ANGLE_THRESHOLD', '2021-12-24 14:53:31', '2021-12-24 14:53:31'),
      ( '起点旋转任务拆分角度阈值', NULL, 'ORIGIN_ROTATE_ANGLE_THRESHOLD', '2021-12-24 14:53:50', '2021-12-24 14:53:50'),
      ( '调度异常错误码上限大小', NULL, 'RCS_EXCEPTION_CODE_LIMIT', '2021-12-24 14:54:28', '2021-12-24 14:54:28'),
      ('边的插点距离', NULL, 'INSERT_POINT_DISTANCE', '2021-12-24 14:55:11', '2021-12-24 14:55:11'),
      ( '异常车占用的路径的权重', NULL, 'EXCEPTION_EDGE_WEIGHT', '2021-12-24 14:55:38', '2021-12-24 14:55:38'),
      ( '圆弧曲率阈值', NULL, 'ARC_CURVATURE_THRESHOLD', '2021-12-24 14:56:16', '2021-12-24 14:56:16'),
      ( '货架调整忽略旋转距离', NULL, 'ADJUST_IGNORE_ROTATE_DISTANCE', '2021-12-24 14:58:09', '2021-12-24 14:58:09'),
      ( '是否启用绕开异常车功能', NULL, 'DETOURS_MANAGER_SWITCH', '2021-12-24 14:58:37', '2021-12-24 14:58:37'),
      ( '是否启用后退解死锁功能', NULL, 'BACK_MANAGER_SWITCH', '2021-12-24 15:00:41', '2021-12-24 15:00:41'),
      ( '满充间隔时间', NULL, 'AMR_FULL_CHARGE_TIME', '2021-12-24 15:01:47', '2021-12-24 15:01:47'),
      ( '满充间隔充电次数', NULL, 'AMR_FULL_CHARGE_NUM', '2021-12-24 15:02:07', '2021-12-24 15:02:07'),
      ( '是否开启工位点通道独占功能', NULL, 'OCCUPIED_PASSAGE_WAY_ALONE', '2021-12-24 15:02:52', '2021-12-24 15:02:52'),
      ( '定时监控充电任务周期,单位：秒', NULL, 'CHARGE_TASK_MONITOR_TIMER', '2021-12-24 15:05:14', '2021-12-24 15:05:14'),
      ( '是否关闭交管死锁检测线程,单位：秒', NULL, 'CLOSE_TRAFFIC_DEAD_LOCK_CHECKER', '2021-12-24 15:05:40', '2021-12-24 15:05:40'),
      ( '是否开启小车候选选车器', NULL, 'AMR_CANDIDATE_CHOOSER', '2021-12-24 15:06:38', '2021-12-24 15:06:38'),
      ( '候选任务检测周期', NULL, 'CANDIDATE_TASK_MONITOR_TIME', '2021-12-24 15:10:38', '2021-12-24 15:10:38'),
      ('是否关闭，候选任务检测器', NULL, 'CLOSE_CANDIDATE_TASK_MONITOR', '2021-12-24 15:11:08', '2021-12-24 15:11:08'),
      ( '交管锁点离最近不能锁点的距离（虽然锁到，但是离锁不到的点太近了，就剪切掉）', NULL, 'TRAFFIC_TAIL_CUT_DISTANCE', '2021-12-24 15:11:51', '2021-12-24 15:11:51');

UPDATE  global_config set name = "满充间隔时间,单位：天" WHERE `key` = "AMR_FULL_CHARGE_TIME";

UPDATE  global_config set name = "保持的车距,单位：米" WHERE `key` = "TRAFFIC_TAIL_CUT_DISTANCE";
ALTER table global_config add reboot int default 0 comment "是否需要重启 0 不需要 1需要";
UPDATE global_config set reboot = 1 WHERE `key` in ("COMMON_SERVER_PORT","AMR_OFFLINE_TIME","CHARGE_TASK_MONITOR_TIMER","CLOSE_TRAFFIC_DEAD_LOCK_CHECKER","CANDIDATE_TASK_MONITOR_TIME","CLOSE_CANDIDATE_TASK_MONITOR","DEAD_LOCK_CHECK_TIMER","TASK_FINISH_PAUSE_TIME");

-- 新增任务派发时间膨胀因子配置 by qklee 2021/12/31
INSERT INTO `global_config` (`name`, `value`, `key`, `create_time`, `update_time`)
VALUES ('任务派发时间膨胀因子，单位米', NULL, 'TASK_DISPATCH_TIME_FACTOR', '2021-12-31 14:05:50', '2021-12-31 14:05:50'),
       ('任务派发可忽略时间膨胀的优先级阈值', NULL, 'TASK_DISPATCH_PRIORITY_THRESHOLD', '2021-01-05 10:38:50', '2021-01-05 10:38:50');

-- 更新配置描述 by qklee 2022/01/06
UPDATE  `global_config` set `name` = '是否开启交管块的碰撞检测' WHERE `key` = 'OPEN_TRAFFIC_BLOCK_COLLISION_CHECK';
UPDATE  `global_config` set `name` = '掉头定义角度, 单位：度' WHERE `key` = 'FULL_BACK_THETA';
UPDATE  `global_config` set `name` = '匹配点位阈值, 单位：米' WHERE `key` = 'MATCH_VERTEX_THRESHOLD';
UPDATE  `global_config` set `name` = '匹配虚拟点位阈值, 单位：米' WHERE `key` = 'MATCH_VIRTUAL_VERTEX_THRESHOLD';
UPDATE  `global_config` set `name` = '车辆掉线时间, 单位：秒' WHERE `key` = 'AMR_OFFLINE_TIME';
UPDATE  `global_config` set `name` = '忽略发送点位距离, 单位：米' WHERE `key` = 'SENT_TO_AMR_VERTEX_IGNORE_DISTANCE';
UPDATE  `global_config` set `name` = '释放充电桩距离, 单位：米' WHERE `key` = 'RELEASE_CHARGE_PILE_DISTANCE';
UPDATE  `global_config` set `name` = '锁点总长度, 单位：米' WHERE `key` = 'LOCK_POINT_TOTAL_LENGTH';
UPDATE  `global_config` set `name` = '全局默认车辆空闲休息时间, 单位：秒' WHERE `key` = 'AMR_REST_IDLE_TIME';
UPDATE  `global_config` set `name` = '用户确认等待时间, 单位：秒' WHERE `key` = 'TASK_FINISH_PAUSE_TIME';
UPDATE  `global_config` set `name` = '入栈拆分对接可忽略距离, 单位：米' WHERE `key` = 'IGNORE_DOCKING_SPLIT_DISTANCE';
UPDATE  `global_config` set `name` = '默认全局平局速度, 单位：米/秒' WHERE `key` = 'DEFAULT_ROAD_AVG_SPEED';
UPDATE  `global_config` set `name` = '路径旋转拆分角度阈值, 单位：度' WHERE `key` = 'ROTATE_ANGLE_THRESHOLD';
UPDATE  `global_config` set `name` = '起点旋转拆分角度阈值, 单位：度' WHERE `key` = 'ORIGIN_ROTATE_ANGLE_THRESHOLD';
UPDATE  `global_config` set `name` = '边的插点距离, 单位：米' WHERE `key` = 'INSERT_POINT_DISTANCE';
UPDATE  `global_config` set `name` = '货架调整忽略旋转距离, 单位：米' WHERE `key` = 'ADJUST_IGNORE_ROTATE_DISTANCE';
UPDATE  `global_config` set `name` = '是否关闭交管死锁检测线程' WHERE `key` = 'CLOSE_TRAFFIC_DEAD_LOCK_CHECKER';
UPDATE  `global_config` set `name` = '候选任务检测周期, 单位：秒' WHERE `key` = 'CANDIDATE_TASK_MONITOR_TIME';
UPDATE  `global_config` set `name` = '是否关闭候选任务检测器' WHERE `key` = 'CLOSE_CANDIDATE_TASK_MONITOR';
UPDATE  `global_config` set `name` = '任务派发时间膨胀因子, 单位：米' WHERE `key` = 'TASK_DISPATCH_TIME_FACTOR';
UPDATE  `global_config` set `name` = '任务派发可忽略时间膨胀的优先级',  `create_time` = '2022-01-05 10:38:50', `update_time` = '2022-01-05 10:38:50' WHERE `key` = 'TASK_DISPATCH_PRIORITY_THRESHOLD';


INSERT INTO `global_config` (`name`, `value`, `key`, `create_time`, `update_time`)
VALUES ('任务派发策略，0：任务选车 1：车选任务', NULL, 'TASK_DISPATCH_STRATEGY', '2021-01-10 15:10:50', '2021-01-10 15:10:50'),
       ('单次派发任务数量与车辆数量倍数因子', NULL, 'TASK_DISPATCH_NUM_FACTOR', '2021-01-10 15:10:50', '2021-01-10 15:10:50');

-- 新增路径规划边过滤配置 by hwb 2022/01/11
INSERT INTO ercs.global_config
( name, value, `key`, create_time, update_time, reboot)
VALUES( '路径规划边宽度过滤，默认关闭', NULL, 'OPEN_PATH_WIDTH_CHECK', '2022-01-11 11:29:37', '2022-01-11 11:29:37', 0);

-- 新增三方交管http地址配置 by ycm 2022/01/18
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('三方交管http地址', NULL, 'THIRD_PART_TRAFFIC_HTTP', '2022-01-18 15:40:44', '2022-01-18 15:40:46', 0);

-- 新增圆弧碰撞倍数配置 by luoyy 2022/01/19
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('检测圆弧碰撞时,膨胀一定的车身尺寸,默认0.1倍', NULL, 'ARC_EXPANSION_MULTIPLE', '2022-01-19 14:10:44', '2022-01-19 14:10:46', 0);

-- 更新圆弧碰撞检测时,膨胀数值说明
UPDATE  `global_config` set `name` = '检测圆弧碰撞时,膨胀一定的车身尺寸, 单位：米,默认膨胀0.1' WHERE `key` = 'TASK_DISPATCH_TIME_FACTOR';

-- 任务派发时间膨胀因子 by luoyy 2022/02/09
UPDATE  `global_config` set `name` = '任务派发时间膨胀因子, 单位：米' WHERE `key` = 'TASK_DISPATCH_TIME_FACTOR';

-- 更新圆弧碰撞检测时,膨胀数值说明 by luoyy 2022/02/09
UPDATE  `global_config` set `name` = '检测圆弧碰撞时,膨胀一定的车身尺寸, 单位：米,默认膨胀0.1' WHERE `key` = 'ARC_EXPANSION_MULTIPLE';

-- 新增服务器用户名配置 by qklee 2022/02/09
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('调度服务器用户名', NULL, 'RCS_SERVER_USER', '2022-02-09 13:51:44', '2022-02-09 13:51:44', 0);

-- 新增调度更新目录 by qklee 2022/02/16
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('调度更新目录', NULL, 'RCS_UPDATE_DIR', '2022-02-16 13:51:44', '2022-02-16 13:51:44', 0);

-- 新增本体更新版本功能的开关 by luoyy 2022/02/16
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('关闭本体版本自动更新功能', NULL, 'CLOSE_NOUMENON_VERSION_UPDATE', '2022-03-04 17:07:44', '2022-02-16 13:51:44', 1);

-- 新增特殊车型原地上下料功能 by qklee 2022/03/07
INSERT INTO `global_config`(`name`, `value`, `key`, `create_time`, `update_time`, `reboot`)
VALUES ('原地对接距离阈值', NULL, 'IN_SITU_DOCKING_DISTANCE', '2022-03-07 13:51:44', '2022-03-07 13:51:44', 0),
       ('原地对接角度阈值', NULL, 'IN_SITU_DOCKING_ANGLE', '2022-03-07 13:51:44', '2022-03-07 13:51:44', 0);

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
