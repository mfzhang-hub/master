
var baseIp = window.location.host
window.g = {
  baseURL: window.location.protocol +'//' + baseIp + '/api',
  // fixed：端口号由固定8080改为实时获取
  wsURL: 'ws://' + baseIp,
  imgURL:'http://' + baseIp,
  name:'lx-panel',
  token:'123456',
  showPanel:false, // 是否显示面板页，false表示不显示，true表示显示
  title:'蓝芯机器人调度系统' // 一行最多显示11个汉字，超出11个汉字换行，总共可添加22个汉字
}
