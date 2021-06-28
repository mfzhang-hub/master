#ifndef __TASK_KEYS__
#define __TASK_KEYS__


// pritask cmd
namespace eRobotTask{
enum{
    NO_TASK       = 1,
    CANCEL_TASK   = 2,
    NAV_TASK      = 3,
    NAV_APPEND    = 4,
    CHARGE_TASK   = 5,
    ABUT_TASK     = 6,
    CONFIRM_TASK  = 7,  //用户确认，用户在小车子上点击确认
    CYCLE_TASK    = 8,
    REASSIGN_SEND_TASK = 9,
    INSERT_SEND_TASK   = 10,
    REASSIGN_TASK = 11,
    FINISH_CONFIRM_TASK = 12, //调度确认，用户在调度上点击确认
    // 33任务已经被调度使用
    
    ROLLER_TASK   = 100,
    ALIGN_FRONT_ONLOAD_ROLLER_TASK = 101,
    HW_ALIGN_FRONT_UNLOAD_ROLLER_TASK = 102,

    FSE_ROLLER_TASK = 106,
    DCROLLER_TASK   = 110,
    HWBSROLLER_TASK = 131,
    WBROLLER_TASK   = 136,

    //叉车任务
    FORKLIFT_TASK   = 170,
    FORKLIFT_TASK_CARGO = 171,
    FORKLIFT_TASK_PREUP = 172,
    FORKLIFT_TASK_BLIND_BACK_WALK = 173,

    //双舵轮横向移动任务
    SDL_MOVE_TASK   =180,

    ELEV_TASK       = 200,
    QR_LINE_TASK    = 201,
    ELEV_MQTT_TASK  = 202,  //和自兴项目
    ELEV_FIND_SHAPE = 205,
    ELEV_ROT_TASK   = 210,  //顶升旋转任务
    QR_ARRIVE_TASK  = 211,
    QR_STACK_TASK   = 212,
    QR_STACK_CALI_POSE   = 213,
    QR_STACK_CALI_THETA   = 214,
    ELEV_MODEL_DOCK  =215,
    CALI_QR_POSE   = 216,
    PICK_TASK       = 300,
    PICKNAV_TASK    = 301,
 
    QA_CONFIRM_TASK = 400,
    ONLOAD_AWAIT    = 401,      // 上料等待任务
    UNLOAD_AWAIT    = 402,      // 下料等待任务

    SWITCH_MAP      = 500,
    
    DISPATCH_CONFIRM = 600,

//********************************/
//拣货任务
    PICKER_PICK_NAV_TASK = 701,
    PICKER_PICK_TASK     = 702,
    PICKER_PICK_RTURN    = 703,
    PICKER_PICK_TEST    = 704,
/*********************************/
//补货任务
    PICKER_PUT_NAV_TASK = 711,
    PICKER_PUT_TASK     = 712,
    PICKER_PUT_RTURN    = 713,
    PICKER_PUT_TEST     = 714,

    RETURN_ZERO         = 720,

    LIFTER_TASK           = 750,//对印刷机而言的上料/下料
    LIFTER_TASK_LINE_SIDE = 751,//从线边仓上下料
    LIFTER_TASK_RECLAIM   = 752,//从打倒装置取料

/*********************************/  
// 相机标定任务
   ARUCO_EXTERNAL_TASK  = 800,

    // used internally
    TMP_TASK  = 1000,
    NOT_MATCH_TASK = 1001,
    SHUTDOWN_TASK = 1100,
    CHARGE_HANDLE_TASK = 1200
};
} // ns


/// sub tasks
namespace eTaskCmd{
enum
{
    /// 0-20 reserved (see lxind_libs/keys/task_key0.h)
    //...
    //// 
    NO_TASK = 0,

    STOP_URGENT       = 1,  //急刹车
    STOP_SMOOTH       = 2,  //缓慢刹车
    GO_FIXED_PATH     = 3,  //指定路径进行跟踪，给定目标路径，机器人沿目标路径移动到目标点
    GO_AUTO_PATH      = 4,  //自主导航-绕障模式
    GO_BLIND_WALK     = 5,  //盲走模式
    GO_FIXED_AND_BUTT = 6,  //固定路径导航加上精定位对接
    GO_FIXED_APPEND   = 7,  // 导航过程中追加点
    GO_NAV_BLIND_WALK = 8, //导航拆分出来的盲走，可以追加点
    GO_ERROR = 9,//任务处理异常

    //特殊附加导航功能
    CHARGE_GO_IN       = 101,  //自主充电进站
    CHARGE_OPEN_RELAY  = 102,  //打开充电继电器
    CHARGE_CLOSE_RELAY = 103,  //关闭充电继电器
    PREC_LOC           = 110,
    //双舵轮移动任务
    SDLMOVE_TASK       =111,

    /// ROLL
    ROLLER_ALIGN      = 120,  //辊筒对接进站
    ROLLER_LIGHT_DET  = 121,  //辊筒对接完成光后电开关检测
    ROLLER_ROLL_LOAD  = 122,  //辊筒动作执行: 上下料
    ROLLER_ROLL_STOP  = 123,  //辊筒动作执行: STOP
    ROLLER_HW_RESET   = 124,  //辊筒重置硬件

    ROLLER_ROLL_WAIT  = 125,  //辊筒准备

    ROLLER_LOAD_WAIT  = 126,  //挡板上下料准备
    ROLLER_GUARD_RISE = 127,  //滚轮护板上升
    ROLLER_AUTO_ROLL  = 128,  //
    ROLLER_LOAD_DET   = 129,   //上下料异常针对跳过添加物料传感器的状态
   
    
    ///// EXTERNAL sub task
    E_MQTT_DOCKER_SEND          = 130,
    E_MQTT_DOCKER_AMR_REPORT_LD = 131,

    E_MQTT_DOCKER_WAIT_RECV     = 132,
    E_MQTT_DOCKER_AMR_REPORT_UD = 133,
    ROLLER_HW_GUARD_CLOSE       = 134,
    ROLLER_HW_GUARD_SECURITY    = 135,
    /// EXTERNAL

    //威邦码头
    WBDOCK_LOADING     = 136,  //威邦码头上下料
    ROLLER_HW_GUARD_OPEN = 137,
    //V型板校验
    V_SHAPE_CHECK       = 138,

    // PICK
    PICKER_DETECT_NEW   = 140,
    PICKER_DETECT       = 141,
    PICKER_MOVE_ELE     = 142,
    PICKER_ROT_ELE      = 143,
    PICKER_PICK_BOX     = 144,
    PICKER_RETURN_ORI   = 145,
    PICKER_RESET        = 146,
    PICKER_CLEAR_CABIN  = 147,
    PICKER_CLOSE_PUMP   = 148,
    PICKER_OFFLOAD      = 149,
    PICKER_ROT_BACK     = 150,
    PICKER_RESTART_CHIP = 151,

    // ELEV
    ELEV_ALIGN    = 160,
    ELEV_MOVEUP   = 161,
    ELEV_MOVEDOWN = 162,
    ELEV_RESET    = 163,    //顶升重置
    ELEV_CONDITION_RESET=164,   //满足条件的复位，当前为初次开机顶升复位

    ELEV_MOVEUP_SECOND  = 166,
    ELEV_MOVEUP_HIGH    = 167,

    LASER_STACK = 165,

    

    // BASE
    BASE_SHUTDOWN = 170,
    BASE_RESET = 171,
    BASE_INIT = 172,
    BASE_CLEAR = 173,

    // QR
    QR_SEND_LOC = 180,      // 识别二维码位姿，给二维码对接提供位姿
    QR_MONITOR = 182,       // 监控货架有没有出问题
    QR_EXTRACT_INFO = 183,  // 识别二维码，上传货架号和二维码角度

    //SHELF ROTATE
    SHELF_ROTATE = 190, //顶升状态下的货架调整任务
    SHELF_TURN_TASK= 191, //顶板旋转任务
    VEL_TURN_TASK= 192, //小车旋转任务

    //QR_NAV_ARRIVE
    QR_NAV_ARRIVE = 195, // 二维码精确到点

    //QrStackTask
    QRSTACK_TASK = 197, // 二维码进栈

    //smt dock 
    SMTDOCK_TASK = 198, 
    //QrLineTask
    QRLINE_TASK = 199, //寻二维码带

    // FORKLIFT
    FORKLIFT_ALIGN = 201,
    FORKLIFT_UP    = 211,
    FORKLIFT_DOWN  = 212,
    FORKLIFT_ONLOAD_BK  = 213,
    FORKLIFT_UNLOAD_BK  = 214,
    FORKLIFT_RET        = 215,
    FORKLIFT_AHEAD_BK   = 216,

    //qrdock
    QRDOCK_ALIGN = 220,

    //dockloc
    DOCK_LASER_LOC = 225,
    DOCK_CONTROL = 226,

    //质检、串口版本号获取
    MOTOR_DEV_STATUS_EXAMINE = 230,     //电机、设备质检
    SERIAL_DEV_VERSION_GET = 231,       //串口版本、设备号获取

    // misc
    USER_NOR_CONFIRM    = 300,  // normal confirm
    USER_EXC_CONFIRM    = 301,  // exception confirm
    REASSIGN            = 302,  // 改派任务
    CAL_INIT_POSE       = 303,  // 重定位
    EXC_FORWARD         = 310,  // 异常转发
    SUB_DISPATCH_CONFIRM = 320, //

    // spec
    QA_CONFIRM = 400,

    // other
    PC_SHUTDOWN = 500,  // exception confirm


    //PICKER
	PICKER_MOVE_TO_CABIN= 600,//移动到后车框
	PICKER_MOVE_TO_SHELF= 601,//移动到货架
	PICKER_PICK         = 602,//捡货
	PICKER_RELEASE      = 603,//释放
    PICKER_UP_AND_DOWN  = 604,//单独升降
    PICKER_RESET_TASK   = 605,

    //FSE roller
    ROLLER_ROLL_RISE  = 650,  //辊筒上升
    ROLLER_ROLL_DROP  = 651, //辊筒下降
    ROLLER_ROLL_REACH = 652, //辊筒伸出
    ROLLER_ROLL_RETRACT = 653, //辊筒收缩
    
    //质量检测的任务指令
    INSPECT_GUARD_RISE  = 700, //挡板上升合并
    INSPECT_GUARD_DOWN  = 701, //挡板下降
    INSPECT_AUTO_TEST   = 702, //一键自动检测
    INSPECT_ROLLER_ROLL_LEFT = 703, //辊筒左旋转
    INSPECT_ROLLER_ROLL_RIGHT = 704,
    INSPECT_ROLLER_ROLL_STOP = 705,
    INSPECT_ROLLER_LOAD =706,
    INSPECT_ROLLER_UNLOAD = 707,


    LIFTER_BASE_ALIGN = 749,
    LIFTER_REACH_OUT_CAMERA = 750,
    LIFTER_ARM_UP_OR_DOWN  = 751,
    LIFTER_ARM_RIGHT_OR_LEFT = 752,
    LIFTER_ARM_STOP = 753,
    LIFTER_ARM_RETURN_TO_ZERO = 754,
    LIFTER_TACK_BACK_CAMERA = 755,
    LIFT_RESET = 756,
    LIFTER_SEND_ARRIVE_SIGNAL = 757,
    LIFTER_SEND_LEAVE_SIGNAL=758,
    LIFTER_SEND_ALIGN_SIGNAL=759,
    LIFTER_PRI_RESET = 760,
    LIFTER_ARM_DOWN_FIRST=761,
    LIFTER_SEND_RECLA_SIGNAL = 762,
    ARM_UP_UNTIL_ENOUGH=763,
    PRINT_FACTORY_CONTROLLER = 764,
    LIFTER_ZERO_SEARCH_CHECK = 765,
    LIFTER_ZERO_SEARCH = 766,

    //和自兴mqtt
    E_MQTT_AGV_ENTER_REQ =800,
    E_MQTT_AGV_ENTER_COMPLETED=801,

    //HTTP子任务
    HTTP_POST =851,
    HTTP_GET =852

};
} // ns


// exceptions 
namespace eTaskException{
enum
{
    // report to middle
    EXC_NOTHING               = 0,
    EXC_SHELF_ALREADY_CARRIED = 9,  // 有货架状态不能再去上料

    EXC_NAV_PLAN_FAILED                = 11,
    EXC_NAV_CARRY_ERROR                = 12,  //货架状态异常
    EXC_NAV_SHAPE_ERROR                = 13,  //货架TPYE异常
    EXC_OA_FAILED                      = 14,
    EXC_NAV_GET_CUR_ROUTE_FAIL         = 15,  //读取当前路径失败，拍急停推到路径上，拉急停继续。
    EXC_NAV_TO_BLIND_OVER_LIMIT        = 16,  //当前角度偏差过大，需要人工转到合适的角度，拉急停继续。
    EXC_NAV_CANT_LOCAL_TURN_WITH_SHAPE = 17,  //背负货架不允许原地旋转，点击关闭，拍拉急停继续
    EXC_NAV_NODE_DIST_OVER_LIMIT       = 18,  //下发的点位距离超过阈值，点击关闭，拍拉急停继续

    EXC_NAV_CARGO_STATE_ERROR   = 19,
    EXC_NAV_LINMIT_SENSOR_ERROR = 20,

    EXC_CHARGE_STATION_UNFOUND = 21,  //充电桩标记没找到
    EXC_CHARGE_GOIN_FAILED     = 22,  //充电桩对接失败
    EXC_CHARGE_CURR_DET_FAILED = 23,  //充电检测失败
    EXC_CHARGE_CARRIED_CARGO   = 25,  //有货架状态下不能充电
    EXC_CHARGE_SMT_CHARGE_WARN = 26,

    EXC_JSON_FORMAT_ERROR = 29, //收到的json格式错误,关闭停用并检查配置

    EXC_ROLLER_DOCKER_NOT_FOUND = 30,
    EXC_ROLLER_ALIGN_FAILED     = 31,
    EXC_ROLLER_WAIT_FAILED      = 32,
    EXC_ROLLER_LOAD_FAILED      = 33,
    EXC_ROLLER_RESET_FAILED     = 34,
    EXC_UD_CHECK_CARGO_FAILED   = 35,
    EXC_NO_PLCIP_PARAM          = 36,

    EXC_DOCKER_COMMUNI_ERR = 37,
    EXC_LOAD_TIMEOUT       = 38,
    EXC_ROSPONSE_TIMEOUT   = 39,
    EXC_ROLLER_LOAD_RAT    = 40,
    EXC_ROLLER_LOAD_SKIP   = 41,
    EXC_ROLL_READY_FAILED  = 42,
    EXC_ROLL_NOHEIGHT      = 43,

    EXC_ROLLER_LOAD_MDET        = 44,
    EXC_ROLLER_UNLOAD_MDET      = 45,
    EXC_PICKER_DET_MISMATCHED   = 142,
    EXC_PICKER_OPERATION_FAILED = 144,  // failed, but no exception
    EXC_PICKER_OPERATION_EXC    = 145,
    EXC_PICKER_CABIN_FULL       = 146,
    EXC_PICKER_XI_FAILED        = 147,
    EXC_PICKER_ALARMED          = 148,
    EXC_PICKER_OUT_RANGE        = 149,
    EXC_PICKER_INIT_FAILED      = 150,

    EXC_ELEV_SHELF_NOTFOUND   = 51,
    EXC_ELEV_GOIN_FAILED      = 52,
    EXC_ELEV_MOVEOP_FAILED    = 53,
    EXC_ELEV_OVER_TIME        = 54,  //对接超时
    EXC_ELEV_OVER_DIST        = 55,  //对接运动距离异常
    EXC_ELEV_FINAL_CHECK_FAIL = 56,  //对接完成后货架校准失败
    EXC_ELEV_INIT_OVER_TIME   = 57,  //激光或传感器数据获取失败
    EXC_ELEV_BOARD_POS_ERROR  = 58,  //顶板位置错误
    EXC_ELEV_STATE_ERROR      = 59,  //货架错误或对接任务错误（重置）

    EXC_CANCEL_CARGO_FULL = 60,  // 有货物时取消任务，需要把把货架降下来

    // QR
    EXC_QR_SHELF_POSE_ERR = 62,  //货架位置错误
                                 // EXC_QR_SHELF_INFO_ERR    = 63,  //货架信息错误:本体不做处理,传给调度
    EXC_QR_DETECT_TIME_OUT   = 64,
    EXC_QR_GET_NO_POSE_COUNT = 65,  //无法获取位置信息(移动过程中货架出现偏移导致无法识别)
    EXC_QR_CAMERA_OPEN_ERR   = 66,  //相机未打开或者获取图像超时

    // PROJECT SPEC
    EXC_DC_COMMUNI_FAILED = 70,

    EXC_FORKLIFT_ALIGN_FAILED = 80,

    EXC_FINDSHAPE_REQUSTPATH_FAILED = 85,  //空车回收交管申请失败，点击重置
    EXC_FINDSHAPE_CANT_FIND_TASK    = 86,  //没找到对应的改派任务，点击重置

    /// 100-200: exception before task finished
    EXC_QR_NAV_ARRIVE_OVER_TIME  = 101,  //导航二维码精到点任务超时，移到二维码上方点击重试，或移到合适位置点击跳过
    EXC_QR_NAV_ARRIVE_OVER_DIST  = 102,
    EXC_QR_NAV_ARRIVE_OVER_THETA = 103,
    EXC_QR_NAV_LOC_ERROR         = 104,  //二维码位姿与里程计位姿偏差过大，需要转动小车到进入方向，点击重试

    EXC_QR_STACK_OVER_TIME              = 110,
    EXC_QR_STACK_ODOM_ERROR             = 111,
    EXC_QR_STACK_LASER_ERROR            = 112,
    EXC_QR_STACK_QR_ERROR               = 113,
    EXC_QR_STACK_LOC_ERROR              = 114,  //二维码位姿与里程计位姿偏差过大，需要转动小车到进入方向，点击重试
    EXC_QR_STACK_QR_READ_FAIL           = 115,  //栈板二维码识别超时，点击重试或者跳过
    EXC_QR_STACK_SHAPE_TPYE_ERROR       = 116,  //栈板货架类型不对，请检查配置
    EXC_QR_STACK_READ_TOPO_POINT_FAILED = 117,  // 读取拓扑点失败，请检查_properties.json文件和任务链

    EXC_PALLET_OVER_TIME       = 120,
    EXC_PALLET_INIT_FAILED     = 121,
    EXC_PALLET_SHAPE_ERROR     = 122,
    EXC_PALLET_ICP_ERROR       = 123,
    EXC_PALLET_PRECISION_ERROR = 124,

    //顶升二维码校验异常
    EXC_ELEV_QRCHECK_OVER_DIST  = 130,  // 对接二维码校验距离超出阈值，点击重置，将会降下货架并跳过本任务
    EXC_ELEV_QRCHECK_OVER_THETA = 131,  // 对接二维码校验角度超出阈值，点击重置，将会降下货架并跳过本任务
    EXC_ELEV_CARRY_STATE_ERROR  = 134,  // 货架状态未置位，需要停用，重置
    EXC_ELEV_READ_QR_OVER_TIME  = 135,  // 对接二维码识别失败，点击重试或者点击重置，重置将会降下货架并跳过本任务
    EXC_NAV_QRCHECK_OVER_DIST   = 140,  // 导航二维码校验距离超出阈值，点击重置，将会降下货架并跳过本任务
    EXC_NAV_QRCHECK_OVER_THETA  = 141,  // 导航二维码校验角度超出阈值，点击重置，将会降下货架并跳过本任务
    EXC_NAV_CARRY_STATE_ERROR   = 142,  // 导航货架状态异常，点击重置，将会降下货架并跳过本任务
    EXC_NAV_READ_QR_OVER_TIME   = 143,  // 导航二维码识别失败，点击重试或者点击重置，重置将会降下货架并跳过本任务

    //模板匹配异常
    EXC_DOCK_LOC_OVER_TIME         = 150,
    EXC_DOCK_LOC_INIT_MATCH_FAILED = 151,  //
    EXC_DOCK_LOC_MATCH_FAILED      = 152,
    EXC_DOCK_LOC_ODOM_CHECK_FAILED = 153,

    //模板对接控制异常
    EXC_DOCK_CTRL_OVER_TIME        = 160,
    EXC_DOCK_CTRL_LOC_POSE_ERROR   = 161,
    EXC_DOCK_CTRL_DIST_PARAM_ERROR = 162,

    // SMT对接异常
    EXC_SMT_OVER_TIME         = 170,  // SMT对接超时
    EXC_SMT_NEED_TAR_LOC_POSE = 171,  //需要标定目标点位
    EXC_SMT_FIND_QR_FAILED    = 172,  //没找到二维码，点击取消

    EXC_SMT_ROLLER_STATE_ERROR     = 173,  //码头状态异常
    EXC_SMT_HTTP_RESPOND_ERROR     = 174,  //HTTP通信异常
    EXC_SMT_HTTP_CHECK_DOUBLE_NULL = 175,  //HTTP再次确认任务时异常
    EXC_SMT_QR_CODE_CHECK_FAILED   = 176,  //找不到二维码  
    EXC_SMT_CARGO_DET_FAILED       = 177,  //主任务开始前的物料检测失败 
    EXC_SMT_SENSOR_ERROR           = 178,  //传感器数据长时间没稳定下来
    EXC_ROLLING_TIME_EXCEEDED      = 179,  //滚筒滚动时间配置超限

    //二维码寻线对接异常
    EXC_QR_LINE_OVER_TIME = 180,
    EXC_QR_LINE_OVER_Y    = 181,  //左右偏差超出阈值


    EXC_SMT_CARGO_DET_BEFORE_FINISHED_FAILED    = 185,  //主任务结束前的物料检测失败 
    EXC_SMT_CARGO_DET_B_F_NEED_FRONT   = 186,  //上料需要前滚筒有料
    EXC_SMT_CARGO_DET_B_F_NEED_BACK    = 187,  //上料需要后滚筒有料
    EXC_SMT_CARGO_DET_B_F_NEED_BOTH    = 188,  //上料需要前后都有料

    
    //辊筒物料检测异常
    EXC_ROLLER_CANT_JUNP_WITH_MATERIAL = 190, //取走料以后点跳过
    EXC_ROLLER_CANT_JUNP_WITHOUT_MATERIAL = 191, //放上料以后点跳过,或者点大跳过
    EXC_ROLLER_QR_CODE_CHECK_FAILED=192,//二维码校验超时


    /// used internally, begin from 201
    EXC_PICKER_DET_FAILED    = 205,  // 41 before
    EXC_PICKER_INVALID_PARAM = 206,

    EXC_LIFTER_OVERTIME            = 250,
    EXC_PRINT_LEFT_DATA_OVERTIME   = 251,
    EXC_PRINT_RIGHT_DATA_OVERTIME  = 252,
    EXC_LIFTER_CHOICE              = 253,
    EXC_LIFTER_CAMERA_DATA_ERROR   = 254,
    EXC_LIFTER_TOO_UP_DIFF_VALUE   = 255,
    EXC_PRINT_ALIGN_TASK_OVER_TIME = 256,
    EXC_LIFTER_FATAL_ERROR         = 257,

    EXC_PICKDET_POSI_ERR = 301,

    EXC_INVALID_TASK = 401,  //执行与车型不匹配的任务

    /// Proj Spec: begin from 501


    EXC_LOCAL_TURN_OVER_TIME = 590, //旋转任务超时，点击重试或跳过
    EXC_LOCAL_TURN_NEED_TARGET = 591, //旋转任务缺乏目标点，需要联系开发人员处理

    EXC_QRDOCK_OVER_TIME        = 601,  //二维码对接超时
    EXC_QRDOCK_INIT_FAIL        = 602,  //二维码对接初始化失败
    EXC_QRDOCK_OVER_LIMIT       = 603,  //二维码对接精度超出阈值
    EXC_QRDOCK_NEED_CARRY_STATE = 604,  //二维码对接缺少货架状态
    EXC_QRDOCK_NEED_MOVE        = 605,  //二维码对接失败，需要拖到货架底下点重试。
    EXC_QRDOCK_LOC_ERROR        = 606,  //二维码位姿与里程计位姿偏差过大，需要转动小车到进入货架方向，点击重试
    EXC_QRDOCK_CARRY_STATE_ERROR        = 607,  //二维码方向与货架背负状态不符，请检查二维码是否贴错，或者背负状态是否异常

    EXC_ELEV_ALGIN_GET_SHELF_OVER_TIME = 610, //对接获取顶板角度超时，点击重试或硬件重启
    EXC_ELEV_ALGIN_SHELF_THETA_OVER_LIMIT = 611, //对接初始化时发现顶板角度不对，点击硬件重置

    EXC_SHELFROTATE_OVER_TIME         = 631,  //里程计货架调整超时
    EXC_SHELFROTATE_CARRY_STATE_ERROR = 632,  //里程计货架状态异常
    EXC_SHELFROTATE_TASK_FAIL         = 633,  //里程计货架调整失败
    EXC_SHELFROTATE_INIT_FAIL         = 634,  //激光或里程计无数据
    EXC_SHELFROTATE_NEED_TARGET       = 635,  //主任务未下发目标角度
    EXC_SHELFROTATE_SHAPE_ERROR       = 636,  //货架状态异常，当前任务将被取消，点击跳过 货架将降下，小车将执行下个任务
    EXC_SHELFROTATE_VEL_ANGLE_ERROR = 637, //货架调整后小车角度异常，点击跳过，货架将降下，小车将执行下个任务
    EXC_SHELFROTATE_POSE_FAR_TO_TARGET = 638, //货架调整时小车与目标点距离过远，推到目标点后点击继续，点击跳过，货架将降下，小车将执行下个任务

    EXC_DOCKER_COMMUNI_FAILED = 640,  //码头通信失败
    EXC_UP_DOCK_NO_BOXS       = 641,  //上层码头无料(上料点)
    EXC_UNDER_DOCK_HAS_BOXS   = 642,  //下层码头有料(小车下辊筒出料)
    EXC_UP_ROLLER_NO_BOXS     = 643,  //小车上层辊筒无料(下料点)
    EXC_UP_DOCK_HAS_BOXS      = 644,  //上层码头有料(下料点)

    EXC_UNDER_BOXS_TOO_MANY = 645,  //下层码头和下层辊筒料箱和大于2
    EXC_UP_BOXS_TOO_MANY    = 646,  //上层码头和上层辊筒料箱和大于2
    EXC_QUERY_BOXS_FAILED   = 647,  //查询料箱数失败
    EXC_BOXS_IS_NOT_RIGHT   = 648,  //料箱数不一致
    EXC_LOAD_OVER_TIME      = 649,  //上下料超时

    EXC_CAMERA_OUT_BACK = 660,     
    EXC_Y_MOVE          = 661,
    EXC_REST_FAILED     = 662,
    Y_MOTOR_ALARM       = 663,
    Z_MOTOR_ALARM       = 664,
    EXC_EMPTY         = 665,
    EXC_NOT_FIND_ZERO = 666,
    EXC_FIND_ZERO_ERROR = 667,

    EXC_ODOM_DATA_OVER_TIME      = 701,  //里程计超时，点击重试
    EXC_SHELF_DATA_OVER_TIME     = 702,  //顶板里程计超时，点击重试
    EXC_LASER_DATA_OVER_TIME     = 703,  //激光数据超时，点击重试
    EXC_QR_DATA_OVER_TIME        = 704,  //二维码数据超时，点击重试
    EXC_POINT_TOF_DATA_OVER_TIME = 705

    /// >1000 subtask exceptions

};
} //ns

namespace eTaskState{
    enum{
        NORMAL = 0,
        QR_GETING = 1,
        BEGIN_QR = 2
    };
}

#define EXC_INTASK_MODULE "intask_module"

namespace eInTaskException{
enum{
    EXC_NOTHING         = 0,
    EXC_NAV_CLOSER_OS = 12,
    EXC_NAV_PATH_OS   = 13,
};

}

enum class eExcHandleCode
{
    RESET = 0,
    CONTINUE,
    SKIP,
    SKIP_SUCCEED
};


#endif
