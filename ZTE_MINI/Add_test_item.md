    [
    factory_test.sh:
    
    {

    新增如下:
    1:叉车左前激光topic数据:        ./factory_test.sh 20
    2:叉车右前激光topic数据:        ./factory_test.sh 21
    3:叉车后对接激光topic数据:      ./factory_test.sh 22
    4:叉车顶部导航激光topick数据:   ./factory_test.sh 23
    5:左叉臂限位光电触发检测指令:    ./factory_test.sh 24
    6:右叉臂限位光电触发检测指令:    ./factory_test.sh 25
    7:叉臂高度获取:                 ./factory_test.sh 26
    8:左TFmini测距:                 ./factory_test.sh 27
    9:右TFmini测距:                 ./factory_test.sh 28
    10:触发充电开始:                 ./factory_test.sh 29
    11:触发充电结束:                 ./factory_test.sh 30
    }

    ]

    [
        roller_test.sh:

        {

            新增如下:
            1:叉臂回到原点：     ./roller_test.sh 34
            2:叉臂到达400行程：  ./roller_test.sh 35
            3:叉臂到达顶部行程：  ./roller_test.sh 36
        }

    ]