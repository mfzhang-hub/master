"lxSource_code":[
{
"warning":[{

    "Type":[

      {
        "name": "ExceptioType",
        "sort": [
          { "ModificationMethod": "模块(id-1)*1000+模块异常id" },
          {
            "MIDDLE": 1,
            "middle": "中间层"
          },
          {
            "LOCALIZATION": 2,
            "localization": "定位"
          },
          {
            "NAVIGATION": 3,
            "navigation": "导航"
          },
          {
            "INTASK": 4,
            "intask": "任务"
          },
          {
            "LASER": 5,
            "laser": "激光"
          },
          { "GENERATOR": 6 },
          {
            "STOP": 7,
            "stop": "急停"
          },
          {
            "COLLISION": 8,
            "collision": "碰撞"
          },
          { "ELEV": 9 },
          { "ROLL": 10 },
          { "DOCK": 11 },
          { "PICK": 12 },
          {
            "CAMERA": 13,
            "camera": "相机"
          },
          { "BATTERY": 14 },
          { "SOCKETREGISTER": 15 },
          { "SOCKETTONGBU": 16 },
          { "SOCKETRELOC": 17 },
          { "SOCKETPOINTQUERY": 18 },
          { "SOCKETTASKREPORT": 19 },
          { "BASE": 20 },
          { "WIFI": 21 },
          { "PCL": 22 }
        ]
      },
      {
        "comment": "showmode: 1 冒泡 2 弹窗 ",
        "modelVersion": "V1.0.0build20201222"
      },

    {"name": "buttonfunc",
    "sort":[
    {"signal_exceptionButtonResetAGV":0,"id":"重置"},
    {"signal_exceptionButtonRebootAGV":1,"id":"重启"}, // 端口未开通，暂未实现
    {"signal_exceptionButtonSkip":2,"id":"大跳过"},
    {"signal_exceptionButtonAmarragemanuel":3,"id":"手动对接"},
    {"signal_exceptionButtonCancelTask":4,"id":"取消所有任务"},
    {"signal_exceptionButtonReloc":5,"id":"跳到重定位"}, // 端口未开通，暂未实现
    {"signal_exceptionButtonContinue":8,"id":"重试/继续"},
    {"signal_exceptionButtonOneTaskSkip":10,"id":"跳过当前子任务"},
    {"signal_exceptionButtonCancelSlip1":12,"id":"取消打滑并取消任务"},
    {"signal_exceptionButtonCancelSlip2":14,"id":"取消打滑但不会取消任务"},
    {"signal_exceptionButtonClose":100,"id":"关闭（关闭弹窗）"},
    {"signal_exceptionButton":-1,"id":"无按钮/隐藏"}
    ]},

    {"name":"sound",
    "sort":[
        {"1":"alert.wav"},
        {"2":"lowPower.wav"},
        {"3":"obstacle.wav"},
        {"4":"recharge.wav"},
        {"wifi":"哎呀，网络又断开了.mp3"},
        {"显示屏":"触摸屏已旋出.mp3"},
        {"7":"到点取物料.wav"},
        {"8":"等待调度任务.wav"},
        {"9":"地图切换中.wav"},
        {"10":"顶板倾斜请检修设备.mp3"},
        {"11":"发生异常，需要人工处理.mp3"},
        {"12":"后退中，请注意.wav"},
        {"13":"货架状态异常.mp3"},
        {"14":"路径规划异常.wav"},
        {"15":"码头对接失败，请重试.wav"},
        {"16":"目标点已到达.mp3"},
        {"17":"任务非正常完成.mp3"},
        {"18":"任务完成了.wav"},
        {"19":"提示音2.wav"},
        {"20":"提示音3.wav"},
        {"21":"提示音4.wav"},
        {"22":"提示音5.wav"},
        {"23":"提示音6.wav"},
        {"24":"提示音7.wav"},
        {"25":"提示音8.wav"},
        {"26":"提示音9.wav"},
        {"27":"提示音10.wav"},
        {"28":"提示音11.wav"},
        {"29":"提示音12.wav"},
        {"wifi":"网络连接中断.wav"},
        {"30":"未到达指定位置.wav"},
        {"31":"物料卸载异常.wav"},
        {"32":"物料异常，请移除物料.wav"},
        {"33":"物料异常，请重新移入.wav"},
        {"34":"物料装载异常.wav"},
        {"35":"右转"},
        {"36":"左转"},
        {"37":"Kiss The Rain.mp3"},
        {"38":"初雪.mp3"},
        {"39":"梦中的婚礼.mp3"}
    ]}
        ]            
            }]
}
]
}
