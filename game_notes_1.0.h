// continuous 
namespace nav_data //激光导航数据（内部数据可转视频查看车辆行驶状态）
{
  enum{
      use_max_speed,  //  使用最大的速度,x,y,theta
      path_data    ,  //  
      nav_speed    ,  //  发送的控制速度
      loc_state    ,  //  当前位姿和速度
      laser_data   ,  //  当前周围激光数据
    };  
} //
namespace nav_Odom //车辆行驶时驱动轮状态（速度，位姿等）
{
   enum{
    //GET pose:(L_c:-35915952 R_c:-24859527 )->(0 0 0, 9.6493 5.85385 -3.09008 )         
      GET_pose_Lc,       //  左编码器值
       GET_pose_Rc,       //  右编码器值
       GET_speed_Ls,      //  左驱动轮速度值
       GET_speed_Rs,      //  右驱动轮速度值
       SEND_speed,        //  下发速度值
       prev_send_speed,   //  上一次速度值
   };
} //

// middle_module
namespace middle //本体调度通讯日志（任务下发接收）
{
    enum{
         m_orderId,             // 本体与调度通讯报文id
         carryState,            // 货架背负状态
         ele,                   // 当前电量
         is_exist_task,         // 任务是否存在，true存在false不存在
         mapId,                 // 地图id号
         next_point,            // 下一个点位名称
         orderChainId,          // 任务链id
         oderId,                // 任务id
         pre_point,             // 前一个点位名称
         qrcode,                // 二维码点位信息
         sessionId,             // 会话id
         targetName,            // 目标点位
         vth,                   // 角度
         vx,                    // x轴线速度
         warnId,                // 异常id
         x,                     // x坐标
         y,                     // y坐标
         enableState,           // 是否启用
         exception,             // 是否有异常
         robot_state,           // 机器人状态
         chargeNum,             // 充电桩id
         designCapacity,        // 电池设计容量
         temperature,           // 电池温度值
         voltage,               // 电压值
         runningTime,           // 运行时间
    };
}//

// movebase 
namespace map_manager // 地图模块
{
    enum{
        path,                         // 地图文件读取路径
        Map_read_with_resolution,     // 地图分辨率
        line,                         // 路线
    };
} //
namespace movebase // 本体主程序模块
{
    enum{
         actual_task_cmd,             // 实际任务指令
         task_id,                     // 任务id
         exc_code,                    // 异常信号
         pri_task_cmd,                // 任务指令id号
         init_state,                  // 初始状态
         target_state,                // 目标状态
         target_name,                 // 目标名称
         to_goal_mode,                // 目标模式
         enable_oa,                   // 是否开启绕障功能
         max_speed,                   // 最大速度
         min_turn_radius,             // 最小转弯半径
         fixed_path_size,             // 固定路径大小
         load_mode,                   // 上下料模式
         direction,                   // 对接方向
         first_task_cmd,              // 第一个任务状态
         isSplitTaskCmd,              // 是否为拆分任务
         // w...
    };
} //
namespace params //movebase模块下的本体配置信息
{
    enum{
         target_split_dist_load,       //上料预拆分距离
         target_split_dist_unload,     // 下料预拆分距离
         route_find_name,              // 点位信息查询模式，true在线，false离线
    };
} //

// pcl_module
namespace cloud_agg // 本体pcl模块下的配置信息
{
    enum{
        use_laser,             // 前激光开关
        use_back_laser,        // 后激光开关
        min_laser_range,       // 最小激光范围
        front_laser_filter,    // 前激光过滤值
        back_laser_filter,     // 后激光过滤值
        use_front_tof,         // 前tof开关
        use_back_tof,          // 后tof开关
        front_laser_inv,       // 前激光倒装参数
        back_laser_inv,        // 后激光倒装参数
        front_laser_wait_time, // 前激光超时时间
        back_laser_wait_time,  // 后激光超时时间
        front_tof_wait_time,   // 前tof超时时间
        back_tof_wait_time,    // 后tof超时时间
        odom_wait_time,        // 里程计超时时间
        use_tof_mode,          // tof使用模式
        front_min_theta,       // 前激光最小识别角度
        front_max_theta,       // 前激光最大识别角度
        back_min_theta,        // 后激光最小识别角度
        back_max_theta,        // 后激光最大识别角度
        filter_shape,          // 滤波参数
        front_laser_pose,      // 前激光位置
        back_laser_pose,       // 后激光位置
        zhichang_mode,         // 智昌项目定制开关
        reflector_num,         // 反射器数量
        reflector_max_range,   // 反射器最大射程
        // w...
    };
} //

// pritask_module 
namespace charge_task // 充电子任务模块
{
    enum{
         vehicle_mode,                          // 车辆模式
         charge__blindmove_dist,                // 充电完成后的盲走距离
         charge__blindmove_dist_short,          // 充电完成后的最小盲走距离
         charge_max_fail_count,                 // 充电失败重试次数
         charge_wait_sec,                       // 充电等待时间
         charge_mode,                           // 充电模式
         test_mode_skip_charge,                 // 是否跳过充电环节（子任务）
    };
} //
namespace elev_task   // 对接主任务模块
{
    enum{
        custom_task_type,                       // 货架对接方式
        rot_task_type,                          // 激光导航新版本下料调整配置
        use_forbidden,                          // 强制上料点开关
        skip_mode,                              // 跳过模式
        qr_check,                               // 二维码方向校验开关
        add_nav,                                // 未匹配货架腿盲走开关
        qr_stack_type,                          // 二维码导航新版本下料调整配置
        laserdock_try_counts,                   // 激光货架腿对接尝试次数
        qrdock_try_counts,                      // 二维码货架对接尝试次数
        find_speed_speed,                       // 查找二维码时最大行驶速度
        align_blind_move,                       // 对接盲走距离
        findshape_blind_move,                   // 匹配模型盲走距离
        blind_move_vx,                          // 盲走线速度
        blind_move_dist,                        // 盲走距离
        find_shape_pub_chain,                   // 空车回收任务是否改派
        situ_dist,                              // 原地对接判断距离
        max_qr_code_wait_time,                  // 最大二维码对接等待时间
        check_qr_before_elev_up,                // 背负状态下的二维码校验
        check_theta,                            // 检查差别角度
        check_dist,                             // 检测差别距离
        check_shelf_before_algin,               // 对接前校验顶板角度
        use_qr_arrive,                          // 是否使用二维码精确到点
        test_mode_without_elev_up,              // 只进行对接任务不顶升
        change_model_dist,                      // 短模板（上料小于一定距离）
        open_camera,                            // 相机开启
        test_mode_without_mqtt,                 // 和自兴mqtt通讯
    };
} //
namespace nav_task //导航主任务模块
{
    enum{
         task_cmd,                               // 任务命令
         completed,                              // 导航是否完成
         exc_code,                               // 异常信号
         ori_task_cmd,                           // 主任务
         split_task_type,                        // 拆分任务类型
         init_state,                             // 初始状态
         target_state,                           // 目标点坐标
         target_name,                            // 目标点名称
         blind_walk_mode,                        // 盲走模式
         safe_dist,                              // 路径安全距离
         min_turn_radius,                        // 最小转弯半径
         load_mode,                              // 上下料模式
         use_seamless_align,                     // 使用无缝对接
         m_bSubtaskFinished,                     // 子任务已完成
         no_head_mode,                           // 无头模式
         temp_route_theta,                       // 直角转弯角度大于这个需要拆分
         cur_path_angle,                         // 当前路径角度
    };
} //
namespace other_task //配置信息模块（地图配置信息）
{
    enum{
        m_newMapName,             // 地图名称
        node_properties_path,     // 地图点位配置信息读取文件
    };
} //
namespace tmp_task 
{
    enum{
     
    };
} //
namespace roller_task // 辊筒对接，二维码带对接等模块
{
    enum{
        roller_blindmove_dist,               // 滚筒对接完成后盲走距离
        roller_blindmove_dist_short,         // 辊筒对接盲走最小距离
        align_retry_count,                   // 对接时重试次数
        is_load_guard_close,                 // 上料时挡板是否关闭
        use_material_check,                  // 是否使用 物料检测
        use_v_shape_check,                   // 是否使用V型板校验
        use_qr_check,                        // 使用相机检查
        roller_mode,                         // 二维码带对接模式
        open_camera,                         // 开启相机
        use_qr_arrive,                       // 使用相机到达点位
        test_without_det,                    // 只进行对接动作
    };
} //

// qrtask_module 二维码相机模块
namespace qrtask
{
    enum{
        template_id,                           // 上视模板id
        template_id_down,                      // 下视模板id
        K1,                                    // 内参数据
        camera_x1,                             // x轴信息
        camera_y1,                             // y轴信息
        camera_yaw1,                           // yaw值
        bad_param,                             // 错误参数
        camera_rotate,                         // 相机旋转角度
     
    };
} //

// serial_module 串口模块
namespace base_protocol //
{
    enum{

    };
} //
namespace batt_protocol // 力奥电池电芯数据
{
    enum{
         BATT_PROTOCOL_tempterature,         // 电池温度
         BATT_PROTOCOL_cell_volt,            // 电池16个电芯日志
         current,                            // 电流值
         batt_voltage,                       // 电池电压
         batt_full,                          // 电池总容量
         batt_remaining,                     // 电池显示百分比
         batt_cycle,                         // 电池循环次数
         design_capacity,                    // 电池设计容量
    };
} //
namespace controller_batt // 力奥电池显示数据
{
    enum{
        alarm_thres_percent,                  // 报警百分比
        batt_jump_limit,                      // 电池跳跃极限
        full_battery,                         // 大于这个参数值认为满电状态
        port,                                 // 电池串口号
        temper_alarm_low,                     // 电池温度报警最低值
        temper_alarm_high,                    // 电池温度报警最高值
        battery_version,                      // 电池版本号
        voltage,                              // 电压值
        current,                              // 电流值
        remain_bat,                           // 剩余容量
        full_bat,                             // 总容量
        remaining_percentage,                 // 电池显示百分比
        is_battery_full,                      // 电池是否满电
        batt_life,                            // 电池生命值

    };
} //
namespace controller_base  //  顶升、底座模块
{
    enum{
         vel_timeout,             // 上层无下发速度
         vx,                      // x轴线速度
         w,                       // 角速度

    };
} //
namespace controller_roller // 辊筒模块
{
    enum{
        load_fail_skip,                   // 上料失败是否跳过
        load_retry_exc_code,              // 上料失败重试硬件异常码
        load_retry_times,                 // 硬件异常码重试次数
        load_skip_exc_code,               // 上料跳过异常码
        unload_time_out,                  // 下料超时时间
        unload_retry_exc_code,            // 下料失败重试硬件异常码
        unload_skip_exc_code,             // 下料跳过异常码
        param_has_power_is,               // 码头是否为有动力码头
        emerg_pressed,                    // 急停按下
        front_task_status,                // 前/上辊筒任务状态
        exc_code,                         // 异常信号
        is_last_cmd1_unload,              // 上层或下层辊筒是否有任务
        ROLLER_TASK_COMPLETED,            // 辊筒子任务完成
        task_cmd,                         // 子任务ID任务指令
        ori_task_cmd,                     // 动作指令
        front_task_status,                // 前滚筒任务状态
        back_task_status,                 // 后滚筒任务状态

    };
} //
namespace serial_base
{
    enum{

    };

} //
namespace serial_batt
{
    enum{

    };
} //
namespace serial_elev
{
    enum{

    };
} //
namespace serial_picker
{
    enum{

    };
} //
namespace serial_roller // 辊筒串口数据模块
{
    enum{
    task_cmd,                                 // 子任务ID任务指令
    task_status,                              // 任务状态
    exc_code,                                 // 异常码
    ldet_on,                                  // 左侧光电检测
    rdet_on,                                  // 右侧光电检测
    fdet_obj_on,                              // 前物料检测
    bdet_obj_on,                              // 后侧物料检测
    edet_on,                                  // 中间光电检测
    mdet_obj_on,                              // 中间物料检测
    firmware_id,                              // 固件id
    emerg_btn_on,                             // 急停是否触发
    bump_bar_on,                              // 防撞条是否触发

    };
} //

// subtask_module  子任务模块
namespace arrive
{
    enum{
        robot_width,                            // 车宽
        robot_front_dist,                       // 车中心到前方距离
        robot_back_dist,                        // 车中心到后方距离
        robot_rotate_r,                         // 倒角
        robot_add_slow,                         // 减速圈的厚度
        limit_time,                             // 模块超时时间
        acc_w,                                  // 最大角加速度
        acc_v,                                  // 最大线加速度
        stop_dist,                              // 近处停障参数
        stop_theta,                             // 近处停障角度
        save_img,                               // 是否保存图片

    };
} //

namespace dockctrl  // 模板对接模块
{
    enum{
       limit_time,                              // 超时时间
       stop_times,                              // 近处停障时间
       stop_dist,                               // 近处停障参数
       stop_theta,                              // 近处停障角度

    };
} //
namespace navigation //导航，局部路径规划模块
{
    enum{
        seamless_align_dist,                      // 无缝对接距离
        target_dist_,                             // 目标距离
        m_dMaxSpeed,                              // 最大速度
        cur_task,                                 // 执行的任务信息
        Safe_dist,                                // 路径安全距离
        stop_ront_dist,                           // 前方停障距离
        set_max_speed,                            // 下发最大速度值
        cur_v,                                    // 当前线速度
        cur_state,                                // 当前状态
        to_goal_mode,                             // 去目标点模式
        cur_target,                               // 当前目标点
        Smooth_adjust_speed,                      // 
        after_Safe_adjust_speed,                  // 停障之后安全速度
        obsStop,                                  // 是否停止
        Safe_flag,                                // 路径是否安全
        safe_cnt,                                 // 路径是否安全触发次数
        publish_target_dist,                      // 发布目标距离
        now_max_speed,                            // 当前最大速度
        
    };
} //
namespace roller_align
{
    enum{

    };
} //

// tcp_module 



// tof_module



// ui_module  界面显示数据
namespace time_txt
{
    enum{
        logoName,                   // logo名称
        charge_Name,                // 充电点位名称
        restName,                   // 休息点位名称
        param_file,                 // 任务链读取地址
        lowPowerNum,                // 低电量充电值
        powerOffNum,                // 低电量关机值
        m_bDebug,                   // 调试模式
        passwordDlg,                // 高级设置密码开关
        password,                   // 密码
        temperatureFirstLevel,      // 电池温度第一档检测值
        temperatureSecondLevel,     // 电池温度第二档检测值
        warnMode,                   // 异常模式
        warnId,                     // 异常id
    };
} //



