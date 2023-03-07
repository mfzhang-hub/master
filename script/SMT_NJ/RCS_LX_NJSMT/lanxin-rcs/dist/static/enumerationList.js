/*
~~~~~ 单车web: 地图中路径和点位的数据枚举值 ~~~~~
*/

// 点位 - 功能
const SpotTypeEnum = ["路径标点", "工位点", "充电点", "休息点", "对接点", "滚筒点"]

// 点位 - 对接方向
const OrientEnum = ["左", "右", "前", "后", "左调整", "右调整", "后调整", "不指定"]

// 点位 - 禁止掉头
const property4Enum = ["允许掉头", "禁止掉头", "禁止满车掉头"]

// 是否避障等   布尔值
const CheckboxEnum = ['否', '是']

//路径 - 到点模式
const PointModeEnum = ["精确", "一般", "精确（无头模式）", "一般（无头模式）"]

//路径 - 导航模式
const Property2Enum = ["前进", "后退", "无头", "左移", "右移", "左右无头", "全向"]

//路径 - 转弯方式
const Property3Enum = ["圆弧", "直行", "盲走", "斜行", "圆弧斜行"]


/*
~~~~~ 点位key值对造表 ~~~~~
*/
const SpotLabelEnum = {
    code: '编号',
    alias: '别名',
    description: '描述',
    refId: 'refId',
    _x: 'x 坐标',   //显示激光值
    _y: 'y 坐标',
    codePrefix: '编号前缀',
    codeSuffix: '编号后缀',
    aliasPrefix: '别名前缀',
    aliasSuffix: '别名后缀',
    dir: '方向',
    type: '类型',
    layingOff: '下料',
    orient: '对接方向',
    offset: '对接距离',
    isTraffic: '交管分割',
    isForbidden: '强制上下料',
    offsetX: '对接 x',
    offsetY: '对接 y',
    offsetTheta: '对接 θ',
    relocWeight: '重定位阈值',
    property2X: '入栈拆分量 x',
    property2Y: '入栈拆分量 y',
    property2Theta: '入栈拆分量 θ',
    property3X: '出栈拆分量 x',
    property3Y: '出栈拆分量 y',
    property3Theta: '出栈拆分量 θ',
    property4: '禁止掉头',
    property5: '允许停车',
}

// 新:根据要求隐藏的点位key列表
const SportKeyHiddenList = ["refId", "offset", "isTraffic", "relocWeight", "extend", "offsetX", "offsetY", "offsetTheta"]

// 批量修改中，禁止修改的点位key列表
const SpotBatchHiddenList = ["code", 'alias', 'description', "refId", "offset", "isTraffic", "relocWeight", "extend"]
// 批量修改中，禁止修改的路径key列表
const routeBatchHiddenList = ["refId", 'startSpotRefId', 'endSpotRefId', 'walkConfidence', "property1", "property4", 'walkConfidence', 'walkMode', 'type', "extend"]

/*
~~~~~ 旧:路径key值对造表 ~~~~~
*/
const RouteLabelEnum = {
    refId: "refId",
    startSpotRefId: "起点编号",
    endSpotRefId: "终点编号",
    maxSpeed: "最大速度",
    securityDist: "安全距离",
    pointMode: "到点模式",
    isAvoidance: "是否避障",
    avoidanceMode: "避障模式",
    expansionMode: "膨胀模式",
    property2: "导航模式",
    property3: "转弯方式",
    property5: "禁止空车",
    fullWeight: "禁止满车",
    // walkMode : "行走模式", // 废弃
}

// 新:根据要求隐藏的路径key列表
const RouteKeyHiddenList = ["refId", "extend"]


// 地图展示的点位键名集合
const SpotKeyList = ["编号", "别名", "功能类型", "X坐标值", "Y坐标值", "角度值", "对接方向", "对接距离", "属性1", "属性2"];

// 地图展示的路径键名集合
const RouteKeyList = ["路径ID", "起点编号", "终点编号", "最大速度", "安全距离", "到点模式", "是否避障", "导航模式", "转弯方式", "禁止空车", "禁止满车"];

// 激光类型颜色列表
// ⭐️该列表必须包含所有web传上来的激光类型，否则会抛出错误
const lasersEnum = new Map().
    set(0, { key: 0, label: "未知激光", color: '#FF6347' }).
    set(1, { key: 1, label: "前激光", color: '#ff6600' }).
    set(2, { key: 2, label: "后激光", color: '#228B22' }).
    set(3, { key: 3, label: "左激光", color: '#800000' }).
    set(4, { key: 4, label: "左前激光", color: '#8A2BE2' }).
    set(5, { key: 5, label: "左后激光", color: '#F4A460' }).
    set(6, { key: 6, label: "右激光", color: '#D2B48C' }).
    set(7, { key: 7, label: "右前激光", color: '#ADFF2F' }).
    set(8, { key: 8, label: "右后激光", color: '#FF00FF' }).
    set(9, { key: 9, label: "顶部激光", color: '#00FF00' }).
    set(-1, { key: -1, label: "前深度相机", color: '#40E0D0' }).
    set(-2, { key: -2, label: "后深度相机", color: '#2F4F4F' }).
    set(-3, { key: -3, label: "左深度相机", color: '#00BFFF' }).
    set(-4, { key: -4, label: "左前深度相机", color: '#708090' }).
    set(-5, { key: -5, label: "左后深度相机", color: '#00008B' }).
    set(-6, { key: -6, label: "右深度相机", color: '#006633' }).
    set(-7, { key: -7, label: "右前深度相机", color: '#003300' }).
    set(-8, { key: -8, label: "右后深度相机", color: '#DA70D6' }).
    set(-9, { key: -9, label: "顶部深度相机", color: '#9900cc' }).
    set(-20, { key: -20, label: "点激光", color: '#551A8B' }).
    set(10, { key: 10, label: "负重识别激光", color: '#00FF33' })


// 本体上传图片枚举
const imageEnum = new Map().set(0, { key: 0, label: '上侧图像' }).set(1, { key: 1, label: "下侧图像" })

// 点云枚举
const cloudEnum = new Map().set(-1, { key: -1, label: '前侧点云' }).set(-2, { key: -2, label: "后侧点云" }).set(-3, { key: -3, label: "左侧点云" }).set(-6, { key: -6, label: "右侧点云" })

// 机械臂默认速度
const armSpeedDefault = 2000


// 小车类型枚举
const agvTypeEnum = {
    FR: '潜入式搬运机器人',
    FL: '叉车类机器人',
    SMT: '贴片生产线专机',
    PE: '印刷设备专机',
    SL: '分条线专机'
}

// 任务状态列表
const taskStateList = {
    '-1': "无任务",
    0: "未执行",
    1: "正在执行",
    2: "已完成",
    3: "已取消",
    4: "异常",
    5: "跳过",
    6: "暂停",
}

// 调度任务异常请求发出后，接收到的数据对照表
const rcsServerList = new Map()
    .set(1, "操作成功")
    .set(2, "授权失败")
    .set(3, "服务器内部异常")
    .set(4, "客户端异常")
    .set(5, "操作失败")
    .set(6, "滚筒正在恢复中, 请稍后再试")

//物料信息中，需要展示为按钮的键名匹配规则
const extendbuttonRE = /^button-/

// 任务没执行完成的状态列表
const doingStatusList = [0, 1]


// @ts-ignore 将枚举值放在全局
window.enumerationList = {
    SpotTypeEnum, OrientEnum, property4Enum, CheckboxEnum, PointModeEnum, Property2Enum, Property3Enum, SpotLabelEnum, SportKeyHiddenList, SpotBatchHiddenList, routeBatchHiddenList, RouteLabelEnum, RouteKeyHiddenList, SpotKeyList, RouteKeyList, lasersEnum, imageEnum, cloudEnum, armSpeedDefault, agvTypeEnum, taskStateList, rcsServerList, extendbuttonRE, doingStatusList
}