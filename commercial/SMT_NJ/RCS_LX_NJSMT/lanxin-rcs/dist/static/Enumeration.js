// 任务优先级
export const taskPriorityEnum = {
    "-5": "低",
    0: "正常",
    5: "高",
}

// 小车用途
export const abilityOptions = {
    0: "普通搬运",
    1: "拣货",
    2: "消毒",
}
// 3d绘制方法里引用了
export const amrStateList = {
    1: "空闲",
    2: "工作中",
    3: "充电中",
    4: "等待中",
    5: "托管中",
    6: "外部中断",
    7: "有异常",
    8: "异常暂停",
    9: "等待确认",
    10: "离线",
  }

// 任务状态列表
export const taskStateList = {
    '-1': "无任务",
    0: "未执行",
    1: "正在执行",
    2: "已完成",
    3: "已取消",
    4: "异常",
    5: "跳过",
    6: "暂停",
}

// 任务状态颜色列表
export const stateColorList = {
    0: "#e6a23c",
    1: "#77e640",
    2: "#66b1ff",
    3: "#909399",
    4: "#ec3b64",
    5: "#e13bec",
    6: "#e13bec",
}

//库位状态列表
export const locationStatusList = {
    0: {
        status: 0,
        name: "空容器",
        color: "#409eff",
    },
    1: {
        status: 1,
        name: "即将满",
        color: "#E6A23C",
    },
    2: {
        status: 2,
        name: "满容器",
        color: "#67C23A",
    },
    3: {
        status: 3,
        name: "即将空",
        color: "#909399",
    }
}

// 点位类型枚举
export const SpotTypeEnum = ["路径标点", "工位点", "充电点", "休息点", "对接点", "滚筒点"]

// 导出天数限制
export const exportDays = 7;

// 调度1.0的小车状态枚举
export const amrOldStatusEnum = (status)=>{
    switch (status) {
        case "CHARGING":
            return 3
        case "IDLE":
            return 1
        case "WAITING":
        case "CHARGE_RETRY":
        case "TRAFFIC_REQUIRE":
        case "REASSIGNING":
            return 8
        case "WARNING":
            return 4
        case "CONFIRMING":
            return 9
        default:
            return 2
    }
}