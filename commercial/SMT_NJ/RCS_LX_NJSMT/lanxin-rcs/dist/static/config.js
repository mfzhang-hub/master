var config = {
  name: 'lx-panel',
  token: '123456',
  title: '机器人调度系统',  //标题
  fixedHeader: false, //是否固定页面头部
  sidebarLogo: true,   //是否显示左侧菜单栏的左上角: logo + title
  hiddenLogo: false,  //是否隐藏页面内logo图标；包括登录页左上角和左侧菜单栏的左上角logo图标。当没有新的logo图标替代，只是想隐藏图标时，改为true
  hiddenSidebarAndNavbar: false,  //是否隐藏左侧菜单栏和头部导航栏, 用于ignition
  pointsSpacing: [0.5, 3], //自动插点 [最小间距，最大间距]；点位之间间隔不要大于车直径的2倍，以所有运行车当中直径最小的车为准

  updateContent: ["交管块配置页新增功能:移除交管块，跨地图交管配置只允许同区域，优化跨服务器交管配置", "增加单车web包管理(系统分析-软件管理)", "新增页面: 自定义协议管理(外设管理-协议管理)", "增加子页面: 表数据清除配置(系统分析-软件管理)", "监控页面: 优先根据故障情况展示小车、增加小车离线状态", "反射板数据为空时，也创建.feature.json文件"]
}

config.updateContent = config.updateContent.map((item, i) => { return i + 1 + '. ' + item }).join(';</br>') + "。"







// 判断客户端类型，是否是PC端
const os = function () {
  var ua = navigator.userAgent,
    isWindowsPhone = /(?:Windows Phone)/.test(ua),
    isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,
    isAndroid = /(?:Android)/.test(ua),
    isFireFox = /(?:Firefox)/.test(ua),
    isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),
    isPhone = /(?:iPhone)/.test(ua) && !isTablet,
    isPc = !isPhone && !isAndroid && !isSymbian && !isTablet;
  return isPc
}

config.isPc = os() && window.innerWidth > 1024

window.globalConfig = config