(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-6424d5b2"],{"00f3":function(t,e,a){t.exports=a.p+"img/FR1500.2cf9823a.png"},"0115":function(t,e,a){"use strict";a.d(e,"f",(function(){return n})),a.d(e,"e",(function(){return s})),a.d(e,"a",(function(){return r})),a.d(e,"b",(function(){return o})),a.d(e,"c",(function(){return c})),a.d(e,"d",(function(){return d})),a.d(e,"g",(function(){return l}));var i=a("b775");function n(){return i["a"].get("/chargePile/model/findAll")}function s(t){return i["a"].post("/chargePile/page",t)}function r(t){return i["a"].post("/chargePile/add",t)}function o(t){var e=t.id,a=t.enable;return i["a"].get("/chargePile/enable?id="+e+"&state="+a)}function c(t){var e=t.id,a=t.modelId;return i["a"].get("chargePile/bindModel?id="+e+"&modelId="+a)}function d(t){return i["a"].get("/chargePile/delete?id="+t)}function l(t){return i["a"].get("/map/getMapVertexes/"+t)}},"026c":function(t,e,a){var i={"./FL21500S.png":"6e6d","./FR1203.png":"7967","./FR1207.png":"2f59","./FR1208.png":"f572","./FR1209.png":"b50a","./FR1212.png":"8e63","./FR1214.png":"df74","./FR1215.png":"d8c6","./FR1221.png":"0858","./FR1500.png":"00f3","./FR1501.png":"2e1e","./FR1503.png":"5ecd","./FR1507.png":"f99d","./FR2212.png":"e6e7","./LXLR-FL12000.png":"9843","./LXLR-FL21000.png":"ad30","./LXLR-FR2510L.png":"554b","./LXLR-FR2510R.png":"ee4a","./LXLR-FR3310L.png":"7081","./LXLR-FR3310R.png":"dc86","./LXLR-FR41000G.png":"152e","./LXLR-PR1100.png":"9a18","./LXSR-FR41000.png":"9b54","./LXSR-IR3010.png":"e302","./PR2100.png":"07fb","./no-img.png":"9c6f"};function n(t){var e=s(t);return a(e)}function s(t){if(!a.o(i,t)){var e=new Error("Cannot find module '"+t+"'");throw e.code="MODULE_NOT_FOUND",e}return i[t]}n.keys=function(){return Object.keys(i)},n.resolve=s,t.exports=n,n.id="026c"},"07fb":function(t,e,a){t.exports=a.p+"img/PR2100.528464a2.png"},"0858":function(t,e,a){t.exports=a.p+"img/FR1221.1dc8370d.png"},"0aa6":function(t,e,a){"use strict";a.d(e,"c",(function(){return s})),a.d(e,"a",(function(){return r})),a.d(e,"d",(function(){return o})),a.d(e,"b",(function(){return c}));var i=a("b775"),n=a("5f87");function s(t){return t||(t={}),t.userId=Object(n["d"])(),i["a"].get("/group/list",t)}function r(t){return i["a"].post("/group/addOrUpdate",t)}function o(t){return i["a"].post("/group/addOrUpdate",t)}function c(t){return i["a"].delete("/group/delete/"+t)}},"152e":function(t,e,a){t.exports=a.p+"img/LXLR-FR41000G.2b574531.png"},2840:function(t,e,a){"use strict";a.d(e,"c",(function(){return n})),a.d(e,"b",(function(){return s})),a.d(e,"a",(function(){return r}));var i=a("b775");function n(t){return i["a"].post("/area/list",t)}function s(t){return i["a"].post("/area/update",t)}function r(t){return i["a"].post("/area/delete/"+t)}},2973:function(t,e,a){"use strict";a("5f0d")},"2e1e":function(t,e,a){t.exports=a.p+"img/FR1501.10277a71.png"},"2f59":function(t,e,a){t.exports=a.p+"img/FR1207.a7224cef.png"},"41c2":function(t,e,a){"use strict";a.r(e);var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return t.isStartEdit?a("span",[a("i",{staticClass:"el-icon-check check",on:{click:t.checkEdit}}),a("i",{staticClass:"el-icon-close close",on:{click:t.closeEdit}})]):a("span",[a("i",{staticClass:"el-icon-edit edit",on:{click:t.startEdit}})])},n=[],s=a("01d6"),r=(a("2621"),{props:["isEdit","data"],data:function(){return{oldDataCopy:""}},computed:{editData:{get:function(){return this.data},set:function(t){this.$emit("update:data",t)}},isStartEdit:{get:function(){return this.isEdit},set:function(t){this.$emit("update:isEdit",t)}}},methods:{startEdit:function(){this.$emit("closeAll"),this.isStartEdit=!0,"object"===Object(s["a"])(this.editData)?this.oldDataCopy=JSON.parse(JSON.stringify(this.editData)):this.oldDataCopy=this.editData,this.$emit("open")},closeEdit:function(){this.isStartEdit=!1,this.editData=this.oldDataCopy},checkEdit:function(){Array.isArray(this.editData)?this.editData.join(",")!==this.oldDataCopy.join(",")?this.$emit("checkEdit",this.editData):this.isStartEdit=!1:this.editData!==this.oldDataCopy?this.$emit("checkEdit",this.editData):this.isStartEdit=!1}}}),o=r,c=(a("4991"),a("4ac2")),d=Object(c["a"])(o,i,n,!1,null,"15c6001f",null);e["default"]=d.exports},4991:function(t,e,a){"use strict";a("fa4f")},"554b":function(t,e,a){t.exports=a.p+"img/LXLR-FR2510L.f9a96f2e.png"},"5ecd":function(t,e,a){t.exports=a.p+"img/FR1503.9771a4c4.png"},"5f0d":function(t,e,a){},"6e6d":function(t,e,a){t.exports=a.p+"img/FL21500S.f6040df5.png"},7081:function(t,e,a){t.exports=a.p+"img/LXLR-FR3310L.df2f9756.png"},7967:function(t,e,a){t.exports=a.p+"img/FR1203.f6040df5.png"},"8e63":function(t,e,a){t.exports=a.p+"img/FR1212.e3262ebe.png"},9843:function(t,e,a){t.exports=a.p+"img/LXLR-FL12000.0313dbbb.png"},"9a18":function(t,e,a){t.exports=a.p+"img/LXLR-PR1100.1d1817a7.png"},"9b54":function(t,e,a){t.exports=a.p+"img/LXSR-FR41000.9f4f8e75.png"},"9c6f":function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADIBAMAAABfdrOtAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAhUExURUxpccDEzL/Dy7/Dy7/Dy8HDy7/Dy8DFz8HMz8DEzMDEzEUTzvkAAAAKdFJOUwBAwIDVY/coEJ0qcPJFAAAETklEQVR42u2cz2/aMBTHHSgL7ES2qUWcULUNjRNapSFxqqYdKCdU9TBx2qRN/DixC5N6yqaq526aKq2nBtpu+K9cMCTkhy1s5zlqOr/DO4SED+/Z75vYJkZoY/kxdn0D4zLxTYTaGNcQqhL/GONr4h2EchjP3fOJNzCeuZdhjFfev5hul5bl+i+WZRM/8fw34g3LKhNfQci0rD3PF4lHFrnYClxMt68oc1ZJA+JoCACklQYENsC67g9ZgdS1dmWlhc3n+/z2QxIy/XTAb43eFgi9qcxRVeAX5f9IadfuhQgEvZKBFG6REOS1TH/o98QgJxIQNxD1EDcQ9AwSUqcHgp5AQhiBqIaQQNCxFIS74t/0eHplMkhpgNRDLifqIetAYCEOPRClEC8QSUiFC+IFIgnhkhU/EIWQ4q+JeshZBymBhAJ5Z6uHBAKRhNSFAlFW8cFAVEFCgaiChAJRJCvmW1s9ZHqBkkO2aJc5QgCQLRUfCQT9VgE5Ch82PiuAFLs4bBeQkHVTGR+tkIkN/ji1y/iQZBR3wjdTAwRxNAQAUk8D4qTRu2AhSEMAIK00ILB1UtGykhVIKw0IbJ3Utaxo7bpP2mXYKVT8To119s8XYJD2LePsK4w7QBBzfDehnlzAq+V4bkiFDcmRdX+KPVqOLSYw2tXHmJ6v0yWkCQIpjjGm56vKhAhXfH75VTVmusogEJKUOe2akvvBDYx2kVEkNV/LAeZABMJ8qi+sBqjUfBW6RzaIdp2vIHOlAnm1gjDqEUa7TG9Af6gQsuNB5gohfQ/Cky9JyLLcWfkq2EDPXaXNLEssX9UaEKQamMuZRO8Ac6CnleCkUSRfZ/iuDALJB2el5jF+BwQyDc19laOttQCBNEKQUL7ayyM9AFkphGfxFrGPBgCQ88hcYSBfu+TAjdjQgQppRyCdQP+lTVHKVLwZYQTydbY+4iSG5KKQTb4aVEWTgfRjkE5MbQ4TykpAHKP5atMrVAJSwpiRrwKjQjkXBIKQUwpkGBOCYbKK71Igi1geZ4kgBYwZ+ToLHWkmgZxTIcOYojn8kPjQ4YoKmcU6xI0tr10GplsvVj61OIR3QWCHARnG6LfyFd9mQGbT2KGJLMQcMyB4zBQbYUgO89uCFxIdOlQFIP5dWFC7il0RyICzd0UgeRGGfxcWrPhTIYh3FxaENMQgjgykaInZ3oOdVNOLmZmB6AUBiIGphjwY7dKLmZmBVLKnXY6WlaxA6mlAUPYgWrsyA9HapSFauyQXBLSsaO0CGTpoWbl/kEoaENg6+V8m1cy/SSDHfJBk7+hve+Hbu81s3v8TN+5X17+PDqTtZW9L7/LZT/el7T1CCtuC1x4OJJU9LGCtpVs4KxC9ZZDuD+raBFS7DPaTgr/xmh3etc31ZW/vNpO2d9t61zbkX7xbY0L8LeTK5B8STW//Oddfe7vQ5chict7bhW62+lcI8nahW188sjff+g9vgRsVj6zvWwAAAABJRU5ErkJggg=="},a215:function(t,e,a){"use strict";a.d(e,"c",(function(){return n})),a.d(e,"a",(function(){return s})),a.d(e,"d",(function(){return r})),a.d(e,"b",(function(){return o}));a("a5c9");var i=a("b775");function n(t){return i["a"].post("/amrChargeConfig/list",t)}function s(t){return i["a"].post("/amrChargeConfig/add",t)}function r(t){return i["a"].post("/amrChargeConfig/update",t)}function o(t){var e=t.id,a=t.uuid;return i["a"].delete("/amrChargeConfig/delete/".concat(e,"/").concat(a))}},ad30:function(t,e,a){t.exports=a.p+"img/LXLR-FL21000.5e40c00e.png"},b50a:function(t,e,a){t.exports=a.p+"img/FR1209.dfc773f1.png"},d8c6:function(t,e,a){t.exports=a.p+"img/FR1215.b4262e72.png"},dc86:function(t,e,a){t.exports=a.p+"img/LXLR-FR3310R.9e5d1fad.png"},df74:function(t,e,a){t.exports=a.p+"img/FR1214.ece9da35.png"},e302:function(t,e,a){t.exports=a.p+"img/LXSR-IR3010.e05512c8.png"},e6e7:function(t,e,a){t.exports=a.p+"img/FR2212.220417cb.png"},ee4a:function(t,e,a){t.exports=a.p+"img/LXLR-FR2510R.b19062dc.png"},f572:function(t,e,a){t.exports=a.p+"img/FR1208.26bb8bb7.png"},f99d:function(t,e,a){t.exports=a.p+"img/FR1507.f0aa4390.png"},fa4f:function(t,e,a){},fbb2:function(t,e,a){"use strict";a.d(e,"d",(function(){return n})),a.d(e,"e",(function(){return s})),a.d(e,"a",(function(){return r})),a.d(e,"g",(function(){return o})),a.d(e,"f",(function(){return c})),a.d(e,"b",(function(){return d})),a.d(e,"c",(function(){return l})),a.d(e,"h",(function(){return u})),a.d(e,"j",(function(){return f})),a.d(e,"k",(function(){return p})),a.d(e,"i",(function(){return m})),a.d(e,"l",(function(){return g}));var i=a("b775");function n(t){return i["a"].post("/amr/getAmrPageList",t)}function s(){return i["a"].get("/amr/listAmrType")}function r(t){return i["a"].post("/amr/register",t)}function o(t){return i["a"].post("/amr/editorAmr",t)}function c(t){return i["a"].get("/amr/enable",t)}function d(t){return i["a"].post("/amr/deleteAmr/"+t)}function l(t){return i["a"].get("/amr/getDetailAmr",t)}function u(t){return i["a"].get("/amr/updateArea",t)}function f(t){return i["a"].get("/amr/updateGroup",t)}function p(t){return i["a"].get("chargeConf/update/amrAdaptation",t)}function m(t){return i["a"].get("chargeConf/update/amrBind",t)}function g(t){return i["a"].get("rest/update/amrBind",t)}},fed2:function(t,e,a){"use strict";a.r(e);var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{directives:[{name:"loading",rawName:"v-loading",value:t.loading,expression:"loading"}],staticClass:"amrDetails-container"},[a("div",{staticClass:"left"},[a("div",{staticClass:"basic"},[t.backPage?a("el-page-header",{on:{back:t.goBack}},[a("template",{slot:"content"},[t._v(" "+t._s(t.amrInfo.amrPo.name?t.amrInfo.amrPo.name+" "+t.amrInfo.amrTypePo.name:"---")+" ")])],2):t._e(),a("div",{ref:"imageParent",staticClass:"image"},[a("img",{directives:[{name:"show",rawName:"v-show",value:t.imgUrl,expression:"imgUrl"}],attrs:{src:t.imgUrl,id:"imageChild"}})]),a("div",{staticClass:"info-items"},[a("div",{staticClass:"info-item"},[a("div",{staticClass:"info-key"},[t._v("设备ID:")]),a("div",[t._v(t._s(t.amrInfo.amrPo.id))])])])],1),a("div",{staticClass:"function-container"},[a("div",{staticClass:"title"},[t._v("常用功能")]),a("div",{staticClass:"items"},[a("div",{staticClass:"item",on:{click:t.toAddDevice}},[a("i",{staticClass:"el-icon-folder-add"}),a("span",[t._v("添加设备")])]),a("div",{staticClass:"item",on:{click:t.toDeviceList}},[a("i",{staticClass:"el-icon-folder-opened"}),a("span",[t._v("设备列表")])])])])]),a("div",{staticClass:"right"},[a("el-tabs",{attrs:{type:"border-card"},model:{value:t.activeName,callback:function(e){t.activeName=e},expression:"activeName"}},[a("el-tab-pane",{style:{height:t.innerHeight-121+"px"},attrs:{name:"1",label:"参数配置"}},[a("div",{staticClass:"title"},[t._v("基础参数")]),a("table",{staticClass:"table",attrs:{border:"1",cellspacing:"0"}},[a("tr",{class:t.isEditName?"tr-editor":""},[a("td",{staticClass:"td-left"},[t._v("设备名称")]),a("td",{staticClass:"td-center"},[t.isEditName?a("el-input",{attrs:{placeholder:"请输入设备名称",clearable:"",maxlength:30},model:{value:t.amrInfo.amrTypePo.name,callback:function(e){t.$set(t.amrInfo.amrTypePo,"name","string"===typeof e?e.trim():e)},expression:"amrInfo.amrTypePo.name"}}):a("span",[t._v(t._s(t.amrInfo.amrPo.name))])],1),a("td",{staticClass:"td-right"},[a("edit-icon",{attrs:{isEdit:t.isEditName,data:t.amrInfo.amrTypePo.name},on:{"update:isEdit":function(e){t.isEditName=e},"update:is-edit":function(e){t.isEditName=e},"update:data":function(e){return t.$set(t.amrInfo.amrTypePo,"name",e)},checkEdit:t.updateVehicleName,closeAll:t.closeAll}})],1)]),a("tr",{class:t.isEditArea?"tr-editor":""},[a("td",{staticClass:"td-left"},[t._v("所在区域")]),a("td",{staticClass:"td-center"},[t.isEditArea?a("el-select",{attrs:{placeholder:"请选择工作区域",filterable:""},model:{value:t.amrInfo.amrPo.areaId,callback:function(e){t.$set(t.amrInfo.amrPo,"areaId","string"===typeof e?e.trim():e)},expression:"amrInfo.amrPo.areaId"}},t._l(t.domainList,(function(t,e){return a("el-option",{key:e,attrs:{label:t,value:Number(e)}})})),1):a("span",[t._v(t._s(t.domainList[t.amrInfo.amrPo.areaId]))])],1),a("td",{staticClass:"td-right"},[a("edit-icon",{attrs:{isEdit:t.isEditArea,data:t.amrInfo.amrPo.areaId},on:{"update:isEdit":function(e){t.isEditArea=e},"update:is-edit":function(e){t.isEditArea=e},"update:data":function(e){return t.$set(t.amrInfo.amrPo,"areaId",e)},checkEdit:t.updateVehicleArea,closeAll:t.closeAll}})],1)]),a("tr",{class:t.isEditGroup?"tr-editor":""},[a("td",{staticClass:"td-left"},[t._v("设备分组")]),a("td",{staticClass:"td-center"},[t.isEditGroup?a("el-select",{attrs:{placeholder:"请选择分组",filterable:"",clearable:""},model:{value:t.amrInfo.amrPo.groupId,callback:function(e){t.$set(t.amrInfo.amrPo,"groupId","string"===typeof e?e.trim():e)},expression:"amrInfo.amrPo.groupId"}},t._l(t.groupList,(function(t,e){return a("el-option",{key:e,attrs:{label:t,value:Number(e)}})})),1):a("span",[t._v(t._s(t.groupList[t.amrInfo.amrPo.groupId]||"-- 未绑定 --"))])],1),a("td",{staticClass:"td-right"},[a("edit-icon",{attrs:{isEdit:t.isEditGroup,data:t.amrInfo.amrPo.groupId},on:{"update:isEdit":function(e){t.isEditGroup=e},"update:is-edit":function(e){t.isEditGroup=e},"update:data":function(e){return t.$set(t.amrInfo.amrPo,"groupId",e)},checkEdit:t.updateVehicleGroup,open:t.getGroupList,closeAll:t.closeAll}})],1)]),a("tr",[a("td",{staticClass:"td-left"},[t._v("Mac地址")]),a("td",{staticClass:"td-center"},[a("span",[t._v(t._s(t.amrInfo.amrPo.macAddress))])]),a("td",{staticClass:"td-right"})]),a("tr",[a("td",{staticClass:"td-left"},[t._v("IP地址")]),a("td",{staticClass:"td-center"},[a("span",[t._v(t._s(t.onlineInfo.ip||"--- 未知 ---"))])]),a("td",{staticClass:"td-right"})]),a("tr",{class:t.isEditEnable?"tr-editor":""},[a("td",{staticClass:"td-left"},[t._v("设备状态")]),a("td",{staticClass:"td-center"},[t.isEditEnable?a("el-switch",{attrs:{"active-value":1,"inactive-value":0},model:{value:t.amrInfo.amrPo.enable,callback:function(e){t.$set(t.amrInfo.amrPo,"enable","string"===typeof e?e.trim():e)},expression:"amrInfo.amrPo.enable"}}):a("span",[t._v(t._s(t.amrInfo.amrPo.enable?"已启用":"未启用"))])],1),a("td",{staticClass:"td-right"},[a("edit-icon",{attrs:{isEdit:t.isEditEnable,data:t.amrInfo.amrPo.enable},on:{"update:isEdit":function(e){t.isEditEnable=e},"update:is-edit":function(e){t.isEditEnable=e},"update:data":function(e){return t.$set(t.amrInfo.amrPo,"enable",e)},checkEdit:t.updateVehicleEnable,closeAll:t.closeAll}})],1)])]),a("div",{staticClass:"title"},[t._v("配置信息")]),a("table",{staticClass:"table",attrs:{border:"1",cellspacing:"0"}},[a("tr",{class:t.isEditModel?"tr-editor":""},[a("td",{staticClass:"td-left"},[t._v("充电桩类型")]),a("td",{staticClass:"td-center"},[t.isEditModel?a("el-select",{attrs:{placeholder:"请选择充电桩类型",filterable:"",clearable:"",multiple:"","collapse-tags":""},model:{value:t.amrInfo.modelIds,callback:function(e){t.$set(t.amrInfo,"modelIds","string"===typeof e?e.trim():e)},expression:"amrInfo.modelIds"}},t._l(t.modelList,(function(t,e){return a("el-option",{key:e,attrs:{label:t,value:Number(e)}})})),1):a("span",[t._v(t._s(t.amrInfo.modelNames))])],1),a("td",{staticClass:"td-right"},[a("edit-icon",{attrs:{isEdit:t.isEditModel,data:t.amrInfo.modelIds},on:{"update:isEdit":function(e){t.isEditModel=e},"update:is-edit":function(e){t.isEditModel=e},"update:data":function(e){return t.$set(t.amrInfo,"modelIds",e)},checkEdit:t.updateVehicleModel,closeAll:t.closeAll}})],1)]),a("tr",{class:t.isEditCharge?"tr-editor":""},[a("td",{staticClass:"td-left"},[t._v("充电桩绑定")]),a("td",{staticClass:"td-center"},[t.isEditCharge?a("el-select",{attrs:{placeholder:"请选择充电桩",filterable:"",clearable:"",size:"small"},model:{value:t.amrInfo.charge,callback:function(e){t.$set(t.amrInfo,"charge","string"===typeof e?e.trim():e)},expression:"amrInfo.charge"}},t._l(t.chargePileList,(function(e,i){return a("el-option",{key:i,attrs:{label:t.mapList[e.mapId].name+"/"+e.name,value:Number(i)}})})),1):a("span",[t._v(t._s(t.amrInfo.chargePilePo?t.mapList[t.amrInfo.chargePilePo.mapId].name+"/"+t.amrInfo.chargePilePo.name:"-- 未绑定 --"))])],1),a("td",{staticClass:"td-right"},[a("edit-icon",{attrs:{isEdit:t.isEditCharge,data:t.amrInfo.charge},on:{"update:isEdit":function(e){t.isEditCharge=e},"update:is-edit":function(e){t.isEditCharge=e},"update:data":function(e){return t.$set(t.amrInfo,"charge",e)},open:t.getChargePileList,checkEdit:t.updateVehicleCharge,closeAll:t.closeAll}})],1)]),a("tr",[a("td",{staticClass:"td-left"},[t._v("休息点设置")]),a("td",{staticClass:"td-center"},[t.isEditRest?a("el-select",{attrs:{placeholder:"请选择休息点",filterable:"",clearable:""},model:{value:t.amrInfo.rest,callback:function(e){t.$set(t.amrInfo,"rest","string"===typeof e?e.trim():e)},expression:"amrInfo.rest"}},t._l(t.restList,(function(e,i){return a("el-option",{key:i,attrs:{label:t.mapList[e.mapId].name+"/"+e.name,value:Number(i)}})})),1):a("span",[t._v(t._s(t.amrInfo.bindRestVertex?t.amrInfo.bindRestVertex.code:"-- 未绑定 --"))])],1),a("td",{staticClass:"td-right"})]),a("tr",[a("td",{staticClass:"td-left"},[t._v("充电档位")]),a("td",{staticClass:"td-center"},[a("span",[t._v(t._s(t.amrInfo.chargeLevel&&t.amrInfo.chargeLevel.level3?"1档: "+t.amrInfo.chargeLevel.level1+"%, 2档: "+t.amrInfo.chargeLevel.level2+"%, 3档: "+t.amrInfo.chargeLevel.level3+"%":"-- 未设置 --"))])]),a("td",{staticClass:"td-right"},[a("el-button",{attrs:{type:"text"},on:{click:t.setChargeLevel}},[t._v("前往设置")])],1)])])])],1)],1)])},n=[],s=(a("6afd"),a("f5bd"),a("79fd"),a("45af"),a("2621"),a("fbb2")),r=a("a215"),o=a("0aa6"),c=a("0115"),d=a("2840"),l=a("7661"),u=a("7cf8"),f=a("41c2"),p=a("51c0"),m={props:["innerHeight"],components:{EditIcon:f["default"]},data:function(){return{backPage:"",vehicleId:0,loading:!1,amrInfo:{amrPo:{},amrTypePo:{},bindRestVertex:"",chargePileModelPo:[],chargePilePo:"",modelIds:[],modelNames:"",charge:"",rest:"",chargeLevel:{}},imgUrl:"",activeName:"1",typeOptions:{},domainList:{},mapList:{},groupList:{},modelList:{},chargePileList:{},restList:{},isEditName:!1,isEditArea:!1,isEditGroup:!1,isEditModel:!1,isEditCharge:!1,isEditEnable:!1,isEditRest:!1,onlineTimer:0,onlineTime:1e3,onlineInfo:{}}},mounted:function(){var t=this;this.vehicleId=this.$route.params.id,this.backPage=this.$route.query.backPage,Object(d["c"])().then((function(e){e.state&&e.data.data&&e.data.data.forEach((function(e){t.$set(t.domainList,e.id,e.name)}))})),Object(c["f"])().then((function(e){e.state&&e.data&&e.data.forEach((function(e){t.$set(t.modelList,e.id,e.description)}))})),Object(l["c"])().then((function(e){e.state&&e.data.data&&e.data.data.forEach((function(e){t.$set(t.mapList,e.id,e)}))})),this.getGroupList(),this.getVehicleDetail(),this.getOnlineAmrInfo(),this.onlineTimer&&clearInterval(this.onlineTimer),this.onlineTimer=setInterval((function(){t.onlineTimer&&t.getOnlineAmrInfo()}),this.onlineTime)},methods:{getVehicleDetail:function(){var t=this,e=function(){t.loading=!0,Object(s["c"])({id:t.vehicleId}).then((function(e){if(e.state){var i=e.data,n=i.chargePileModelPo,s=i.chargePilePo,o=i.bindRestVertex,c=[],d="",l="",u="";n&&n.length>0?n.forEach((function(t){c.push(t.id),d+=t.description})):d="-- 未绑定 --",s&&(l=s.id),o&&(u=o.id),e.data.modelIds=c,e.data.modelNames=d,e.data.charge=l,e.data.rest=u,t.amrInfo=e.data,Object(r["c"])({amrId:t.vehicleId}).then((function(e){e.state&&t.$set(t.amrInfo,"chargeLevel",e.data.list[0]||{})}));try{t.imgUrl=a("026c")("./".concat(e.data.amrTypePo.name,".png"))}catch(f){t.imgUrl=""}t.loading=!1}}))};this.typeOptions[1]?e():Object(s["e"])().then((function(a){a.state&&a.data&&a.data.forEach((function(e){t.$set(t.typeOptions,e.id,e.name)})),e()}))},onResize:function(){var t=this;this.$nextTick((function(){document.getElementById("imageChild").style.maxWidth=t.$refs.imageParent.offsetWidth-80+"px",document.getElementById("imageChild").style.maxHeight=t.$refs.imageParent.offsetHeight-50+"px"}))},getOnlineAmrInfo:function(){var t=this;Object(u["d"])({id:this.vehicleId}).then((function(e){e.state&&(t.onlineInfo=e.data)}))},getGroupList:function(){var t=this;this.groupList={},Object(o["c"])({areaId:this.amrInfo.amrPo.areaId}).then((function(e){e.state&&e.data&&e.data.forEach((function(e){t.$set(t.groupList,e.id,e.groupName)}))}))},getChargePileList:function(){var t=this;if(this.chargePileList={},this.amrInfo.modelIds.length>0){var e={chargeModelIds:this.amrInfo.modelIds,areaId:this.amrInfo.amrPo.areaId};Object(c["e"])(e).then((function(e){e.state&&e.data.data&&e.data.data.forEach((function(e){t.$set(t.chargePileList,e.id,e)}))}))}},updateVehicleName:function(t){var e=this;if(!t)return p["Message"].warning("设备名称不得为空");var a={id:this.vehicleId,name:t};Object(s["g"])(a).then((function(t){t.state&&(p["Message"].success("设备名称修改成功"),e.isEditName=!1,e.getVehicleDetail())}))},updateVehicleArea:function(t){var e=this,a={id:this.vehicleId,areaId:t};Object(s["h"])(a).then((function(t){t.state&&(p["Message"].success("设备区域修改成功"),e.isEditArea=!1,e.getVehicleDetail())}))},updateVehicleGroup:function(t){var e=this,a={id:this.vehicleId,groupId:t};Object(s["j"])(a).then((function(t){t.state&&(p["Message"].success("设备分组修改成功"),e.isEditGroup=!1,e.getVehicleDetail())}))},updateVehicleEnable:function(t){var e=this,a=1===t?"启用":"禁用",i={id:this.vehicleId,enable:t};Object(s["f"])(i).then((function(t){t.state&&(e.$message.success("设备".concat(a,"成功")),e.isEditEnable=!1,e.getVehicleDetail())}))},updateVehicleModel:function(t){var e=this,a={amrId:this.vehicleId,adaptation:""};t.length>0&&(a.adaptation=t.join(",")),Object(s["k"])(a).then((function(t){t.state&&(e.$message.success("设备充电桩类型修改成功"),e.isEditModel=!1,e.getVehicleDetail())}))},updateVehicleCharge:function(t){var e=this,a={amrId:this.vehicleId};t&&(a.chargePileId=t),Object(s["i"])(a).then((function(t){t.state&&(e.$message.success("设备充电桩修改成功"),e.isEditCharge=!1,e.getVehicleDetail())}))},updateVehicleRest:function(t){var e=this,a={amrId:this.vehicleId};t&&(a.restId=t),Object(s["l"])(a).then((function(t){t.state&&(e.$message.success("设备休息点修改成功"),e.isEditRest=!1,e.getVehicleDetail())}))},closeAll:function(){this.isEditArea=!1,this.isEditName=!1,this.isEditGroup=!1,this.isEditModel=!1,this.isEditCharge=!1,this.isEditEnable=!1,this.isEditRest=!1},goBack:function(){this.$router.push(this.backPage)},toAddDevice:function(){this.$router.push({path:"/device/amr",query:{type:"add",backPage:this.$route.fullPath}})},toDeviceList:function(){this.$router.push({path:"/device/amr",query:{backPage:this.$route.fullPath}})},setChargeLevel:function(){this.$router.push({path:"/config/chargeLevel",query:{amrId:this.vehicleId,backPage:this.$route.fullPath}})}},beforeDestroy:function(){this.onlineTimer&&clearInterval(this.onlineTimer)}},g=m,h=(a("2973"),a("4ac2")),I=Object(h["a"])(g,i,n,!1,null,"e3ac0e2c",null);e["default"]=I.exports}}]);
//# sourceMappingURL=chunk-6424d5b2.3a8bc645.js.map