
const config = {
  name: 'lx-panel',
  token: '123456',
  title: '蓝芯机器人调度系统',  //标题
  fixedHeader: false, //是否固定页面头部
  sidebarLogo: true,   //是否显示左侧菜单栏的左上角: logo + title
  hiddenLogo: false,  //是否隐藏页面内logo图标；包括登录页左上角和左侧菜单栏的左上角logo图标。当没有新的logo图标替代，只是想隐藏图标时，改为true
  hiddenSidebarAndNavbar: false,  //是否隐藏左侧菜单栏和头部导航栏, 用于ignition
  pointsSpacing: [0.5, 3], //自动插点 [最小间距，最大间距]；点位之间间隔不要大于车直径的2倍，以所有运行车当中直径最小的车为准
  updateContent: "0:本次更新:最大循环次数根据循环类型切换、查看日志优化;</br>1.增加菜单页面: 分组管理、外部设备、操作日志、异常日志、电池管理;</br>2. 调度任务页面增加: 批量取消调度任务、暂停/恢复任务;</br>3. 新增版本号和更新内容展示;</br>4. 地图监控页面增加：锁点、交管块、外部设备展示、充电桩、暂停小车、任务信息等;</br>5. 首页自适应屏幕变化;</br>6. 呼叫中心页面, 按栏位展示库位;</br>7. 增加隐藏页面: 地图编辑(从地图列表页进入)、交管块(从区域管理进入)、设备详情;</br>8. 监控页面中, 小车增加载物状态和等待确认状态;</br>9. 优化查看日志;</br>10. 机器人管理和任务列表页面, id搜索时不允许输入非数字。",
}
window.globalConfig = config