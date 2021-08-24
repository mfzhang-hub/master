(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-af6ba9aa"],{2840:function(e,t,a){"use strict";a.d(t,"c",(function(){return o})),a.d(t,"b",(function(){return n})),a.d(t,"a",(function(){return r}));var i=a("b775");function o(e){return i["a"].post("/area/list",e)}function n(e){return i["a"].post("/area/update",e)}function r(e){return i["a"].post("/area/delete/"+e)}},"375c":function(e,t,a){"use strict";a.r(t);var i=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],staticClass:"mapDetails-container"},[a("div",{staticClass:"content-box step-main"},[a("el-steps",{staticStyle:{transform:"scale(1.3)"},attrs:{active:e.step,"align-center":""}},[a("el-step",{attrs:{title:"上传地图"}},[a("v-icon",{attrs:{slot:"icon",name:"arrow-alt-circle-up"},slot:"icon"})],1),a("el-step",{attrs:{title:"地图启用"}},[a("v-icon",{attrs:{slot:"icon",name:"play-circle"},slot:"icon"})],1),a("el-step",{attrs:{title:"完成"}},[a("v-icon",{attrs:{slot:"icon",name:"check-circle"},slot:"icon"})],1)],1),a("div",{staticClass:"step-title"},[e.backPage?a("el-page-header",{attrs:{content:e.topologyMap.alias||e.topologyMap.name},on:{back:e.goBack}}):a("span",[e._v(e._s(e.topologyMap.alias||e.topologyMap.name))])],1)],1),a("div",{staticClass:"spot-map-main"},[a("div",{staticClass:"content-box spot-main"},[a("div",{staticClass:"spot-filter"},[a("el-input",{attrs:{placeholder:"ID/编号/别名",clearable:"",maxlength:30},model:{value:e.spotFilter,callback:function(t){e.spotFilter="string"===typeof t?t.trim():t},expression:"spotFilter"}},[a("span",{attrs:{slot:"prepend"},slot:"prepend"},[e._v("工位点")])])],1),a("el-table",{attrs:{data:e.spots,height:e.innerHeight-288,"header-cell-style":{background:"#eee"},"highlight-current-row":"",stripe:""}},[a("el-table-column",{attrs:{align:"center",label:"ID",fixed:"left"},scopedSlots:e._u([{key:"default",fn:function(t){return[e._v(" "+e._s(t.row.vertexPo.id)+" ")]}}])}),a("el-table-column",{attrs:{align:"center",label:"编号"},scopedSlots:e._u([{key:"default",fn:function(t){return[e._v(" "+e._s(t.row.vertexPo.code)+" ")]}}])}),a("el-table-column",{attrs:{align:"center",label:"别名"},scopedSlots:e._u([{key:"default",fn:function(t){return[e._v(" "+e._s(t.row.vertexPo.alias||"---")+" ")]}}])})],1)],1),a("div",{staticClass:"content-box map-main",style:{height:e.innerHeight-228+"px"}},[a("div",{staticClass:"header"},[a("span",{staticClass:"title"},[e._v(e._s(e.topologyMap.alias||e.topologyMap.name))]),a("span",{staticClass:"buttons"},[a("el-switch",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:"map/update",expression:"'map/update'"}],staticClass:"switch",attrs:{"active-value":1,"inactive-value":0},on:{change:function(t){return e.toggleEnable()}},model:{value:e.topologyMap.enable,callback:function(t){e.$set(e.topologyMap,"enable","string"===typeof t?t.trim():t)},expression:"topologyMap.enable"}}),a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:"map/download",expression:"'map/download'"}],style:{marginRight:"10px"},attrs:{href:e.topologyMap.mapFileUrl&&("development"===e.nodeEnv?"/api/":"/")+e.topologyMap.mapFileUrl.replace(/\\/g,"/")}},[a("el-button",{attrs:{size:"mini",type:"primary",plain:""}},[e._v("下载")])],1),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:"map/update",expression:"'map/update'"}],attrs:{size:"mini",type:"warning",plain:""},on:{click:function(t){return e.openEditDialog()}}},[e._v("修改")]),a("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:"map/delete",expression:"'map/delete'"}],attrs:{size:"mini",type:"danger",plain:""},on:{click:function(t){return e.deleteMap()}}},[e._v("删除")])],1)]),a("div",{staticClass:"detail"},[a("div",[e._v("地图ID: "+e._s(e.topologyMap.id))]),a("div",[e._v(" 大小: "+e._s(e.topologyMap.fileSize&&Math.floor(1e3*e.topologyMap.fileSize)+"KB")+" ")]),a("div",[e._v("更新时间: "+e._s(e._f("dateTime")(e.topologyMap.updateTime)))]),a("div",[e._v("区域名称: "+e._s(e.area.name))])]),a("div",{ref:"imageParent",staticClass:"image"},[a("img",{attrs:{src:e.pngSrc,id:"imageChild"}})])])]),a("el-dialog",{attrs:{title:"编辑地图",visible:e.isDialog,width:"410px",center:""},on:{"update:visible":function(t){e.isDialog=t},close:e.closeDialog}},[a("el-form",{ref:"mapForm",attrs:{"label-width":"85px",model:e.mapForm,rules:e.mapRules}},[a("el-form-item",{attrs:{label:"地图别名: "}},[a("el-input",{attrs:{clearable:"",placeholder:"请输入地图别名",maxlength:30},model:{value:e.mapForm.alias,callback:function(t){e.$set(e.mapForm,"alias","string"===typeof t?t.trim():t)},expression:"mapForm.alias"}})],1),a("el-form-item",{attrs:{label:"工作区域: ",prop:"areaId"}},[a("el-select",{attrs:{placeholder:"请选择区域",clearable:"",filterable:""},model:{value:e.mapForm.areaId,callback:function(t){e.$set(e.mapForm,"areaId","string"===typeof t?t.trim():t)},expression:"mapForm.areaId"}},e._l(e.domainList,(function(e,t){return a("el-option",{key:t,attrs:{label:e,value:Number(t)}})})),1)],1),a("el-form-item",{attrs:{label:"楼层: ",prop:"floor"}},[a("el-input-number",{attrs:{precision:0,step:1,"controls-position":"right"},model:{value:e.mapForm.floor,callback:function(t){e.$set(e.mapForm,"floor",e._n(t))},expression:"mapForm.floor"}})],1),a("el-form-item",{attrs:{label:"转弯角度: ",prop:"determineTurningAngle"}},[a("el-input-number",{attrs:{precision:2,step:1,"controls-position":"right"},model:{value:e.mapForm.determineTurningAngle,callback:function(t){e.$set(e.mapForm,"determineTurningAngle",e._n(t))},expression:"mapForm.determineTurningAngle"}})],1),a("el-form-item",{attrs:{label:"地图包: "}},[a("el-button",{attrs:{type:"success",size:"mini"},on:{click:function(t){return e.$router.push({path:"/mapEditor",query:{mapId:e.mapForm.id,fileName:e.mapForm.name,areaName:e.domainList[e.mapForm.areaId],backPage:e.$route.fullPath}})}}},[e._v("编辑")])],1)],1),a("span",{attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:e.closeDialog}},[e._v("取 消")]),a("el-button",{attrs:{type:"primary"},on:{click:e.saveEdit}},[e._v("确 定")])],1)],1)],1)},o=[],n=(a("3f7e"),a("6afd"),a("f5bd"),a("2769"),a("0756"),a("a5c9"),a("7661")),r=a("2840"),s=a("a68a"),l={name:"mapDetails",props:["innerHeight"],data:function(){return{loading:!0,spotFilter:"",Edge:[],Vertex:[],area:{},topologyMap:{},step:1,pngSrc:"",mapForm:{alias:"",reaId:"",floor:"",determineTurningAngle:""},isDialog:!1,mapRules:{areaName:[{required:!0,trigger:"change",message:"请选择工作区域"}],areaId:[{required:!0,trigger:"change",message:"请选择工作区域"}],floor:[{message:"楼层应为数字",pattern:/^[-.\d]+$/,trigger:"blur"}],determineTurningAngle:[{message:"转弯角度应为数字",pattern:/^[-.\d]+$/,trigger:"blur"}]},domainList:{},backPage:"",nodeEnv:"production"}},computed:{spots:function(){var e=this;return this.Vertex.filter((function(t){var a=t.vertexPo,i=e.spotFilter.toLowerCase();return(String(a.id).indexOf(i)>-1||a.alias.toLowerCase().indexOf(i)>-1||a.code.toLowerCase().indexOf(i)>-1)&&0!==a.type}))}},mounted:function(){var e=this;this.getMapDetailById(),this.onResize(),Object(r["c"])().then((function(t){t.state&&t.data.data&&t.data.data.forEach((function(t){e.$set(e.domainList,t.id,t.name)}))})),this.backPage=this.$route.query.backPage},methods:{onResize:function(){var e=this;this.$nextTick((function(){document.getElementById("imageChild").style.maxWidth=e.$refs.imageParent.offsetWidth-80+"px",document.getElementById("imageChild").style.maxHeight=e.$refs.imageParent.offsetHeight-50+"px"}))},getMapDetailById:function(){var e=this;this.loading=!0,Object(n["b"])({mapId:this.$route.params.id}).then((function(t){if(e.loading=!1,t.state){var a=t.data,i=a.Edge,o=a.Vertex,n=a.area,r=a.topologyMap;e.Edge=i,e.Vertex=o,e.area=n,e.topologyMap=r,e.step=r.enable?3:1,e.pngSrc=""+r.backgroundImgUrl.replace(/\\/g,"/")}}))},toggleEnable:function(){var e=this,t=1===this.topologyMap.enable?"启用":"禁用",a=function(){e.topologyMap.enable=1===e.topologyMap.enable?0:1};this.$confirm("确定".concat(t).concat(this.topologyMap.alias||this.topologyMap.name,"?"),"提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){Object(n["d"])(e.topologyMap).then((function(i){i.state?(e.$message.success("地图".concat(t,"成功")),e.getMapDetailById()):a()}))})).catch((function(){a()}))},openEditDialog:function(){this.mapForm=JSON.parse(JSON.stringify(this.topologyMap)),this.isDialog=!0},closeDialog:function(){this.$refs.mapForm.clearValidate(),this.isDialog=!1},saveEdit:function(){var e=this;this.$refs.mapForm.validate((function(t){t&&Object(n["d"])(e.mapForm).then((function(t){t.state&&(s["Message"].success("地图修改成功"),e.isDialog=!1,e.getMapDetailById())}))}))},deleteMap:function(){var e=this;if(this.topologyMap.enable)return s["Message"].warning("请先禁用该地图");s["MessageBox"].confirm("确定删除地图: ".concat(this.topologyMap.alias||this.topologyMap.name,"?"),"提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){Object(n["a"])(e.topologyMap.id).then((function(t){t.state&&(s["Message"].success("地图删除成功"),e.$router.push("/map/index"))}))})).catch((function(){}))},goBack:function(){this.$router.push(this.backPage)}}},p=l,c=(a("949f"),a("4ac2")),m=Object(c["a"])(p,i,o,!1,null,"1f732eb6",null);t["default"]=m.exports},7661:function(e,t,a){"use strict";a.d(t,"c",(function(){return o})),a.d(t,"d",(function(){return n})),a.d(t,"a",(function(){return r})),a.d(t,"b",(function(){return s}));var i=a("b775");function o(e){return i["a"].get("/map/mapList",e)}function n(e){return i["a"].post("/map/updateMap",e)}function r(e){return i["a"].post("/map/delete/"+e)}function s(e){return i["a"].get("/map/getMapDetailById",e)}},"949f":function(e,t,a){"use strict";a("a489")},a489:function(e,t,a){}}]);
//# sourceMappingURL=chunk-af6ba9aa.a8a6c192.js.map