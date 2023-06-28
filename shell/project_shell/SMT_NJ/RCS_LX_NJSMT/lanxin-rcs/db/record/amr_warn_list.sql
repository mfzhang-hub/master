DROP TABLE IF EXISTS `amr_warn_list`;
CREATE TABLE `amr_warn_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `warn_id` bigint(20) NOT NULL COMMENT '异常id',
  `warn_type` varchar(30) DEFAULT NULL COMMENT '异常来源（所属类目）',
  `warn_name` varchar(30) DEFAULT NULL COMMENT '异常(名)内容',
  `enable` tinyint(1) DEFAULT NULL COMMENT '异常是否统计（启用），0:不启用；1:启用',
  `is_push` tinyint(1) DEFAULT NULL COMMENT '是否推送，0:不推送；1:推送',
  `warn_time` bigint(20) NOT NULL COMMENT '异常统计阈值时间，单位：秒',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='amr异常字典表';


--  2021/07/15 xujun000288 insert 表数据初始化
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (1, '本体', '看门狗触发', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (4294967297, '底盘', '急停', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (4294967298, '底盘', '碰撞', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (8589934593, '电机', '非使能', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (8589934594, '电机', '刹车', 1, 0, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (12884901889, '电池', '断连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (12884901890, '电池', '欠压', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES (12884901891, '电池', '充电没检测到电压', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 12884901892, '电池', '无充电电流', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 17179869185, '定位', '重定位失败', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 17179869186, '定位', '打滑', 1, 0, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 21474836483, '导航', '近处停障', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 21474836485, '导航', '路径被挡', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 25769803777, '顶升', '顶升位置异常', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 25769803778, '顶升', '顶升不平衡', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 34359738369, '激光', '前激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 34359738370, '激光', '前激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 38654705665, '激光', '后激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 38654705666, '激光', '后激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 47244640257, '激光', '左前激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 47244640258, '激光', '左前激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 60129542145, '激光', '右前激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 60129542146, '激光', '右前激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 64424509441, '激光', '右后激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 64424509442, '激光', '右后激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 68719476737, '激光', '顶激光超时', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 68719476738, '激光', '顶激光重连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874241, '深度相机', '后深度相机打不开', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874242, '深度相机', '后深度相机无数据', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874243, '深度相机', '后深度相机无设备', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 279172874244, '深度相机', '后深度相机标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841537, '深度相机', '前深度相机打不开', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841538, '深度相机', '前深度相机无数据', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841539, '深度相机', '前深度相机无设备', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841539, '深度相机', '前深度相机无设备', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841540, '深度相机', '前深度相机标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 283467841540, '深度相机', '前深度相机标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 292057776129, '二维码相机', '上相机打不开', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 292057776130, '二维码相机', '上相机无数据', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 292057776131, '二维码相机', '上相机断连', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 296352743425, '二维码相机', '下相机打不开', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 296352743426, '二维码相机', '下相机无数据', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 296352743427, '二维码相机', '下相机断连', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 300647710721, '二维码相机', '上相机外参标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 304942678017, '二维码相机', '下相机外参标定失败', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 330712481796, '视觉定位', '超过3s无图像', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 330712481797, '视觉定位', '超过3s无里程计', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 330782481796, '视觉定位', '长时间无特征', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 377957122049, '对接', '对接障碍', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 420906795009, 'x轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 425201762305, 'y轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 429496729601, 'z轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 433791696897, '相机轴任务出错', '印刷机执行机构', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 438086664193, 'x轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 442381631489, 'y轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 446676598785, 'z轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 450971566081, '相机轴电机报警', '印刷机执行机构', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 472446402561, '物料检测', '应该有料但未检测到', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 472446402562, '物料检测', '应该无料但检测到', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 476741369857, 'MQTT', 'MQTT通讯异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 481036337153, '分条机执行机构', '分条机上升轴电机报警', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 485331304449, '分条机执行机构', '分条机上升轴任务出错', 1, 1, 0);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 10, 'RCS', 'Amr执行任务异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 20, 'RCS', 'Amr注册异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 30, 'RCS', '路由计算异常', 1, 1, 30);
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 40, 'RCS', 'Amr任务拆分异常', 1, 1, 30);

-- 2021/10/26  xujun  update 更新异常数据
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='x轴任务出错' where warn_type='x轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='y轴任务出错' where warn_type='y轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='z轴任务出错' where warn_type='z轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='相机轴任务出错' where warn_type='相机轴任务出错';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='x轴电机报警' where warn_type='x轴电机报警';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='y轴电机报警' where warn_type='y轴电机报警';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='z轴电机报警' where warn_type='z轴电机报警';
update amr_warn_list  set warn_type='印刷机执行机构',warn_name='相机轴电机报警' where warn_type='相机轴电机报警';

-- 2021/12/15  lqk  insert 新增其他异常
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 10010, 'RCS', '其他异常', 1, 1, 30);
-- 2022/3/28 hwb  新增车辆连接超时异常
INSERT INTO `ercs`.`amr_warn_list`( `warn_id`, `warn_type`, `warn_name`, `enable`, `is_push`, `warn_time`) VALUES ( 50, 'RCS', '车辆连接超时异常', 1, 1, 30);
