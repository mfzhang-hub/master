(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-1ed3b276"],{"0ff9":function(t,e,n){"use strict";var i=n("7c58"),a=n.n(i);a.a},"173f":function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticStyle:{"background-image":"url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJ2LTQiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiPjxkZWZzIGlkPSJ2LTMiPjxwYXR0ZXJuIGlkPSJwYXR0ZXJuXzAiIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCI+PHJlY3QgaWQ9InYtNSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0iI0FBQUFBQSIvPjwvcGF0dGVybj48L2RlZnM+PHJlY3QgaWQ9InYtNyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0idXJsKCNwYXR0ZXJuXzApIi8+PC9zdmc+')"},attrs:{id:"map-scene",oncontextmenu:"return false"}},[n("div",{staticClass:"select-box"},[n("el-button",{attrs:{type:1===t.status?"info":"",circle:"",round:""},on:{click:function(e){t.status=1}}},[t._v("poly")]),t._v(" "),n("hr"),t._v(" "),n("el-button",{attrs:{type:2===t.status?"info":"",circle:"",round:""},on:{click:function(e){t.status=2}}},[t._v("rect")])],1),t._v(" "),n("div",{staticClass:"tool-box"},[n("div",{staticStyle:{"margin-bottom":"30px"}},[n("el-popover",{attrs:{placement:"right",width:"300",trigger:"hover"}},[n("div",{staticStyle:{"font-size":"12px","text-align":"left"}},[n("h5",[t._v("支持")]),t._v(" "),n("ul",{staticStyle:{"line-height":"25px"}},[n("li",[t._v("选择一个点表示 "),n("em",[t._v("junctions")])]),t._v(" "),n("li",[t._v("选择多个点表示 "),n("em",[t._v("block")])]),t._v(" "),n("li",[n("em",[t._v("block")]),t._v(" 允许重合的公共点位存在 颜色用 "),n("span",{staticStyle:{display:"inline-block",width:"10px",height:"10px",background:"#333333","border-radius":"10px"}}),t._v("\n                表示\n              ")]),t._v(" "),n("li",[t._v("绝对路径导入 "),n("em",[t._v("blockConfig.json")])]),t._v(" "),n("li",[t._v("导出 "),n("em",[t._v("blockConfig.json")]),t._v(" 文件")]),t._v(" "),n("li",[t._v("导入的数据必须满足校验条件："),n("em",[t._v("junctions")]),t._v(" 和 "),n("em",[t._v("block")]),t._v(" 独立 ，横纵向之间也不能存在重复点位")]),t._v(" "),n("li",[n("em",[t._v("junctions")]),t._v(" 和 "),n("em",[t._v("待配置点")]),t._v(" 的合并策略(全部转为 "),n("em",[t._v("junctions")]),t._v(")")]),t._v(" "),n("li",[t._v("禁止 "),n("em",[t._v("blocks")]),t._v(" 与 "),n("em",[t._v("blocks")]),t._v(" 或者 "),n("em",[t._v("junctions")]),t._v(" 的合并")]),t._v(" "),n("li",{staticStyle:{"text-decoration":"underline"}},[n("em",[t._v("affects")]),t._v(" 在选择多个点位后，还需要选定目标点")])])]),t._v(" "),n("el-button",{attrs:{slot:"reference",icon:"el-icon-finished",type:"primary",size:"mini",circle:""},slot:"reference"})],1),t._v(" "),n("h3",[t._v("地图编辑管理")]),t._v(" "),n("p",{staticStyle:{"font-size":"12px"}},[t._v("\n          "+t._s(t.fileName?t.fileName:"请选择文件")+"\n          "),n("input",{staticStyle:{display:"none"},attrs:{id:"fileElement",type:"file"},on:{change:t.readConfFile}}),t._v(" "),n("el-button",{attrs:{size:"mini",type:"primary"},on:{click:t.importJson}},[t._v("选择上传")])],1)],1),t._v(" "),n("div",[n("b",[t._v("选择地图：")]),t._v(" "),n("el-cascader",{staticStyle:{display:"inline-block",width:"150px"},attrs:{size:"small",options:t.options,props:{expandTrigger:"hover"}},on:{change:t.handleChange},model:{value:t.value,callback:function(e){t.value=e},expression:"value"}})],1),t._v(" "),n("div",{staticStyle:{margin:"20px 0",padding:"20px 10px","font-weight":"bolder",border:"1px solid #ccc","text-align":"left"}},[t._v("\n        当前配置类型：\n        "),n("el-select",{attrs:{size:"mini"},model:{value:t.typeVal,callback:function(e){t.typeVal=e},expression:"typeVal"}},t._l(t.types,(function(t){return n("el-option",{key:t.value,attrs:{label:t.label,value:t.value}})})),1)],1),t._v(" "),n("div",{staticStyle:{margin:"20px 0",padding:"30px 10px","font-weight":"bolder"}},[t.junctions.length>0?n("div",[n("h5",{staticStyle:{background:"#eeeeee",margin:"0",padding:"20px 0"}},[t._v("JUNCTIONS 配置")]),t._v(" "),n("div",{staticStyle:{margin:"0 auto 20px auto","font-size":"14px",cursor:"pointer"}},[n("el-card",{attrs:{shadow:"never"}},t._l(t.junctions,(function(e,i){return n("div",{key:e,staticClass:"spot-list",style:{color:"#6CA6CD"},on:{click:function(n){return t.highlightBox(e)}}},[t._v("\n                "+t._s(i+1)+". "+t._s(t.spots.find((function(t){return t.id==e})).code)+"\n                "),n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("JUNCTION",e,i)}}})],1)})),0)],1)]):t._e(),t._v(" "),t.affectsIds.length>0?n("div",[n("h5",{staticStyle:{background:"#eeeeee",margin:"0",padding:"20px 0"}},[t._v("AFFECTS 配置")]),t._v(" "),t._l(t.affectsIds,(function(e,i){return n("div",{key:i,staticStyle:{margin:"0 0 10px 0"},on:{mouseenter:function(n){return t.highlightBox(e.affectsIds)}}},[n("el-card",{attrs:{shadow:"hover"}},[n("h5",[n("i",{staticClass:"el-icon el-icon-box"}),t._v("\n                "+t._s("Affect"+(i+1))+"\n                "),n("el-button",{staticStyle:{float:"right",top:"-20px",position:"relative"},attrs:{size:"mini",icon:"el-icon-delete",type:"danger"},on:{click:function(e){return t.deleteAffect(i)}}})],1),t._v(" "),e.id?n("div",{staticClass:"affect-box",staticStyle:{height:"auto"},style:{color:t.colors[i]}},[n("div",{staticClass:"spot-list base-spot",on:{click:function(n){return t.highlightBox(e.id)}}},[t._v("\n                  "+t._s(t.spots.find((function(t){return t.id==e.id})).code)+"\n                ")]),t._v(" "),n("div",{staticClass:"affect-spots"},t._l(e.affectsIds,(function(e,a){return n("div",{key:e,staticClass:"affect-line"},[n("div",{staticClass:"spot-list affect-spot",on:{click:function(n){return t.highlightBox(e)}}},[t._v(t._s(t.spots.find((function(t){return t.id==e})).code)+"\n                    ")]),t._v(" "),n("div",{staticClass:"affect-spot-delete"},[n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("AFFECT",e,i,a)}}})],1)])})),0)]):n("div",[t._l(e.affectsIds,(function(e,a){return[n("transition",{key:e,attrs:{name:"fade"}},[n("div",{staticClass:"spot-list",style:{color:t.colors[i]},on:{click:function(n){return t.highlightBox(e)}}},[t._v("\n                      "+t._s(a+1)+". "+t._s(t.spots.find((function(t){return t.id==e})).code)+"\n                      "),n("el-tooltip",{staticClass:"item",attrs:{effect:"dark",content:"设为目标点",placement:"left"}},[n("el-button",{staticStyle:{float:"right",padding:"3px!important","margin-left":"20px"},attrs:{type:"success",plain:"",size:"mini",icon:"el-icon-check",circle:""},on:{click:function(n){return t.setAffectId(e,i,a)}}})],1),t._v(" "),n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("AFFECT",e,i,a)}}})],1)])]}))],2)])],1)}))],2):t._e(),t._v(" "),t.idKeys.length>0?n("div",[n("h5",{staticStyle:{background:"#eeeeee",margin:"0",padding:"20px 0"}},[t._v("BLOCKS 配置")]),t._v(" "),t._l(t.idKeys,(function(e,i){return n("div",{key:i,staticStyle:{margin:"0 0 10px 0"},on:{mouseenter:function(n){return t.highlightBox(e)}}},[n("el-card",{attrs:{shadow:"hover"}},[n("h5",[n("i",{staticClass:"el-icon el-icon-box"}),t._v("\n                "+t._s("Block"+(i+1))+"\n                "),n("el-button",{staticStyle:{float:"right",top:"-20px",position:"relative"},attrs:{size:"mini",icon:"el-icon-delete",type:"danger"},on:{click:function(e){return t.deleteBlock(i)}}})],1),t._v(" "),t._l(e,(function(e,a){return[n("transition",{key:e,attrs:{name:"fade"}},[n("div",{staticClass:"spot-list",style:{color:t.colors[i]},on:{click:function(n){return t.highlightBox(e)}}},[t._v("\n                    "+t._s(a+1)+". "+t._s(t.spots.find((function(t){return t.id==e})).code)+"\n                    "),n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("BLOCK",e,i,a)}}})],1)])]}))],2)],1)}))],2):t._e()]),t._v(" "),n("div",{staticStyle:{"margin-top":"50px"}},[t.value.length>0?n("el-button",{attrs:{size:"mini",type:"primary",icon:"el-icon-plus",plain:""},on:{click:t.addList}},[t._v("添加到列表\n        ")]):t._e()],1),t._v(" "),n("div",{staticStyle:{margin:"30px auto 50px"}},[n("h5",{staticStyle:{"text-align":"left"}},[t._v("地图交管配置")]),t._v(" "),n("el-table",{staticStyle:{width:"100%"},attrs:{size:"mini",border:"",data:t.targetResult}},[n("el-table-column",{attrs:{prop:"domain",label:"DOMAIN"}}),t._v(" "),n("el-table-column",{attrs:{width:"60px",prop:"junctions",label:"JUN"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-tooltip",{attrs:{placement:"left"}},[n("div",{attrs:{slot:"content"},slot:"content"},[n("p",[t._v(t._s(e.row.junctions))])]),t._v(" "),n("el-button",{staticStyle:{width:"20px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-more",circle:""}})],1)]}}])}),t._v(" "),n("el-table-column",{attrs:{width:"60px",prop:"affects",label:"AFT"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-tooltip",{attrs:{placement:"left"}},[n("div",{attrs:{slot:"content"},slot:"content"},t._l(e.row.affects,(function(e){return n("p",[t._v(t._s(JSON.stringify(e)))])})),0),t._v(" "),n("el-button",{staticStyle:{width:"20px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-more",circle:""}})],1)]}}])}),t._v(" "),n("el-table-column",{attrs:{width:"60px",prop:"blocks",label:"BLK"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-tooltip",{attrs:{placement:"left"}},[n("div",{attrs:{slot:"content"},slot:"content"},t._l(e.row.blocks,(function(e){return n("p",[t._v(t._s(JSON.stringify(e)))])})),0),t._v(" "),n("el-button",{staticStyle:{width:"20px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-more",circle:""}})],1)]}}])}),t._v(" "),n("el-table-column",{attrs:{label:"编辑"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-button",{staticStyle:{padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteItem(e.$index)}}}),t._v(" "),n("el-button",{staticStyle:{"margin-left":"5px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-edit",circle:""},on:{click:function(n){return t.editItem(e.$index)}}})]}}])})],1)],1),t._v(" "),n("div",{staticStyle:{"margin-top":"50px","text-align":"left"}},[n("h5",[t._v("跨地图交管配置")]),t._v(" "),n("div",{},[n("div",{staticStyle:{margin:"5px"}},[n("b",{staticStyle:{display:"inline-block",width:"80px"}},[t._v("domain: ")]),t._v(" "),n("el-select",{attrs:{size:"mini",placeholder:"请选择"},on:{change:t.crossChange},model:{value:t.domainVal,callback:function(e){t.domainVal=e},expression:"domainVal"}},t._l(t.options,(function(t){return n("el-option",{key:t.value,attrs:{label:t.label,value:t.value}})})),1)],1),t._v(" "),n("div",{staticStyle:{margin:"5px"}},[n("b",{staticStyle:{display:"inline-block",width:"80px"}},[t._v("blk: ")]),t._v(" "),n("el-cascader",{attrs:{"show-all-levels":!1,props:t.props,options:t.blkOption,size:"mini","collapse-tags":""},model:{value:t.blkVal,callback:function(e){t.blkVal=e},expression:"blkVal"}})],1)]),t._v(" "),n("div",{staticStyle:{margin:"10px","text-align":"center"}},[t.domainVal?n("el-button",{attrs:{size:"mini",type:"primary",icon:"el-icon-plus",plain:""},on:{click:t.addCrossList}},[t._v("添加到列表\n          ")]):t._e()],1),t._v(" "),n("p"),t._v(" "),n("el-table",{staticStyle:{width:"100%"},attrs:{size:"mini",border:"",data:t.targetCrossResult}},[n("el-table-column",{attrs:{prop:"domain",label:"DOMAIN"}}),t._v(" "),n("el-table-column",{attrs:{prop:"blocks",label:"BLK"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-tooltip",{attrs:{placement:"left"}},[n("div",{attrs:{slot:"content"},slot:"content"},t._l(e.row.blocks,(function(e){return n("p",[t._v(t._s(JSON.stringify(e)))])})),0),t._v(" "),n("el-button",{staticStyle:{width:"20px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-more",circle:""}})],1)]}}])}),t._v(" "),n("el-table-column",{attrs:{label:"编辑"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-button",{staticStyle:{padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteCrossItem(e.$index)}}})]}}])})],1)],1),t._v(" "),n("div",{staticStyle:{"margin-top":"50px"}},[n("el-button",{attrs:{size:"small",type:"danger"},on:{click:t.exportJson}},[t._v("生成配置")]),t._v(" "),n("el-button",{attrs:{size:"small",type:"success"},on:{click:t.uploadTraffic}},[t._v("上传同步")])],1)])])])},a=[],s=(n("6762"),n("2fdb"),n("75fc")),o=(n("96cf"),n("3b8d")),l=(n("4f7f"),n("5df3"),n("1c4c"),n("6c7b"),n("20d6"),n("ac6a"),n("c5f6"),n("28a5"),n("7514"),n("7f7f"),n("1929")),c=n.n(l),r=n("d9e8"),u=n("7507"),f=n("b2f7"),d=n("ff95"),p=n("6843"),m=n("c836"),h=n("d287"),v=n("8d2a"),g=n("1f8d"),b=n("21a6"),y=n.n(b),S=n("e9bd"),_={data:function(){return{value:[],options:[],typeVal:1,types:[{value:0,label:"JUNCTIONS / BLOCKS"},{value:1,label:"AFFECTS"}],affectsIds:[],draw:null,group:null,resultIdx:void 0,targetResult:[],targetResultKey:[],targetCrossResult:[],junctions:[],idKeys:[],spots:void 0,SVGSpots:void 0,fileName:"",junOption:[],blkOption:[],domainVal:"",junVal:[],blkVal:[],props:{multiple:!0,lazy:!0,lazyLoad:function(t,e){var n=t.level,i=t.value;1===n&&r["request"].get("/mapManagement/getMapDetailByMapId?mapId="+i).then((function(t){var i=t.mapInfo.spots.map((function(t){return{value:t.id,label:t.code,leaf:n>=1}}));e(i)}))}},status:1,gx:0,gy:0,rectEnable:!1,rectGroup:null}},computed:{colors:function(){return h["default"]}},created:function(){var t=this,e=this.$route.query.mode;"simple"===e&&(this.simpleMode=!0),r["request"].get("/domain/getDomainList").then((function(e){t.options=e.map((function(t){return{value:t.id,label:t.name,children:t.mapIds.length>0&&t.mapIds.map((function(e,n){return{value:e,label:t.mapNames[n]}}))}}))}))},methods:{crossChange:function(t){this.junVal=[],this.blkVal=[],this.junOption=this.options.find((function(e){return e.value===t}))["children"],this.blkOption=this.options.find((function(e){return e.value===t}))["children"]},lazyLoad:function(t,e){var n=t.level,i=t.value;1===n&&r["request"].get("/mapManagement/getMapDetailByMapId?mapId="+i).then((function(t){var i=t.mapInfo.spots.map((function(t){return{value:t.id,label:t.code,leaf:n>=1,options:[]}}));e(i)}))},editCrossItem:function(t){},deleteCrossItem:function(t){this.targetCrossResult.splice(t,1)},addCrossList:function(){this.domainVal?(this.targetCrossResult.push({domain:this.domainVal,junMaps:this.junVal.map((function(t){return t[0]})),junctions:this.junVal.map((function(t){return t[1]})),blkMaps:this.blkVal.map((function(t){return t[0]})),blocks:[{name:"crossBlocks"+this.targetCrossResult.length,ids:this.blkVal.map((function(t){return t[1]}))}],blkVal:this.blkVal}),this.domainVal="",this.junVal=[],this.blkVal=[],this.junOption=[],this.blkOption=[]):this.$message({type:"info",message:"domain 为空"})},deleteItem:function(t){var e=this;this.$confirm("确认删除这项配置吗 ?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){e.targetResultKey.splice(t,1),e.targetResult.splice(t,1),e.$message({type:"success",message:"删除成功!"})})).catch((function(){e.$message({type:"info",message:"已取消"})}))},editItem:function(t){this.resultIdx=t,this.value=this.targetResultKey[t].split("-").map((function(t){return Number(t)})),this.handleChange(this.value)},addList:function(){var t=this,e=this.value.join("-"),n=!1;if(this.affectsIds.forEach((function(t){t.id||(n=!0)})),n)this.$message.error("affects 需要指定目标点");else{var i=Object(p["default"])({domain:this.value[0],map:this.value[1],junctions:this.junctions,affects:this.affectsIds,blocks:this.idKeys.map((function(t,e){return{name:"block"+(e+1),ids:t}}))});this.targetResultKey.find((function(t){return t===e}))?this.$confirm("是否更新当前数据?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){t.targetResult.splice(t.targetResultKey.findIndex((function(t){return t===e})),1,i),t.$message({type:"success",message:"更新成功!"})})).catch((function(){t.$message({type:"info",message:"已取消"})})):(this.targetResultKey.push(e),this.targetResult.push(i))}},handleChange:function(t){var e=this,n=this;Promise.resolve(t[1]&&this.loadData(t[1])).then((function(t){var i=n.targetResultKey.findIndex((function(t){return t===n.value.join("-")}));if(n.SVGSpots&&n.spots&&i>-1){var a=n.targetResult[i];n.junctions=a["junctions"]||[],n.idKeys=a["blocks"].map((function(t){return t["ids"]}))||[],n.affectsIds=a["affects"]||[]}n.affectsIds.forEach((function(t,e){t.id&&n.SVGSpots[t.id].animate(500).scale(2).fill(h["default"][e%h["default"].length]).animate(500).scale(1),t["affectsIds"].forEach((function(t){n.SVGSpots[t].animate(500).scale(2).fill(h["default"][e%h["default"].length]).animate(500).scale(1)}))})),n.junctions.forEach((function(t){n.SVGSpots[t].fill("#FFFFFF").stroke({width:2,color:"#6CA6CD"}).animate(500).scale(2).animate(500).scale(1)})),n.idKeys.forEach((function(t,i){t.forEach((function(t){var a=e.idKeys.flat(1),s=a.filter((function(e){return e===t}));if(s.length>1)e.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1);else if(1===s.length){var o=Object(g["default"])(s[0],e.idKeys);e.SVGSpots[s[0]].animate(500).scale(2).fill(h["default"][o[0]%h["default"].length]).animate(500).scale(1)}else n.SVGSpots[t].animate(500).scale(2).fill(h["default"][i%h["default"].length]).animate(500).scale(1)}))}))}))},readConfFile:function(t){var e=this,n=t.target.files[0];if(this.fileName=n.name,"application/json"===n.type){var i=new Blob([n],{type:"application/json"}),a=new FileReader;a.onload=function(){var t=JSON.parse(a.result);e.targetResultKey=[],e.targetResult=[],e.targetCrossResult=[];try{t.forEach((function(t){t["map"]?(e.targetResult.push(t),e.targetResultKey.push(t["domain"]+"-"+t["map"])):e.targetCrossResult.push(t)})),e.targetCrossResult=Object(p["default"])(e.targetCrossResult),e.idKeys=[],e.junctions=[],e.affectsIds=[]}catch(n){e.$message.error("配置文件有误，请核对点位")}finally{document.getElementById("fileElement").value=""}},a.readAsText(i)}else this.$message.error("文件类型有误")},highlightBox:function(t){var e=this;t instanceof Array?t.forEach((function(t){e.SVGSpots[t].animate(500).scale(2).animate(500).scale(1)})):this.SVGSpots[t].animate(500).scale(2).animate(500).scale(1)},importJson:function(){document.getElementById("fileElement").click()},deleteBlock:function(t){var e=this,n=this.idKeys.splice(t,1);n[0].forEach((function(t){var n=e.idKeys.flat(1),i=n.filter((function(e){return e===t}));if(i.length>1)e.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1);else if(1===i.length){var a=Object(g["default"])(i[0],e.idKeys);e.SVGSpots[i[0]].animate(500).scale(2).fill(h["default"][a[0]%h["default"].length]).animate(500).scale(1)}else e.SVGSpots[t].animate(500).scale(2).fill("#6CA6CD").animate(500).scale(1)}))},deleteAffect:function(t){var e=this,n=this.affectsIds.splice(t,1);n[0]["id"]&&this.SVGSpots[n[0]["id"]].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}),n.forEach((function(t){t["affectsIds"].forEach((function(t){e.SVGSpots[t].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"})}))}))},setAffectId:function(t,e,n){this.affectsIds[e]["affectsIds"].splice(n,1),this.affectsIds[e]["id"]=t},deleteId:function(t,e,n,i){var a=this;if(event.preventDefault(),event.stopPropagation(),"BLOCK"===t){var s=[n,i];this.idKeys[s[0]].splice(s[1],1),this.SVGSpots[e].animate(500).scale(2).fill("#6CA6CD").animate(500).scale(1),0===this.idKeys[s[0]].length&&this.idKeys.splice(s[0],1);var o=this.idKeys.flat(1),l=o.filter((function(t){return t===e}));if(l.length>1)l.forEach((function(t){a.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1)}));else if(1===l.length){var c=Object(g["default"])(l[0],this.idKeys);this.SVGSpots[l[0]].animate(500).scale(2).fill(h["default"][c[0]%h["default"].length]).animate(500).scale(1)}else this.SVGSpots[e].animate(500).scale(2).fill("#6CA6CD").animate(500).scale(1)}"JUNCTION"===t&&(this.junctions.splice(this.junctions.findIndex((function(t){return t==e})),1),this.SVGSpots[e].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"})),"AFFECT"===t&&(this.SVGSpots[e].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}),this.affectsIds[n]["affectsIds"].splice(i,1),this.affectsIds[n]["affectsIds"].length<1&&(this.SVGSpots[this.affectsIds[n]["id"]].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}),this.affectsIds.splice(n,1)))},formatCrossData:function(){return this.targetCrossResult.map((function(t){return{domain:t.domain,junctions:t.junctions,blocks:t.blocks}}))},strictJsonData:function(t){var e=Object(p["default"])(t);return t.forEach((function(t){if(t.hasOwnProperty("blkMaps")){var n=Array.from(new Set(t["blkMaps"]));n.forEach((function(n){e.find((function(t){return t["map"]===n}))||e.push({domain:t.domain,map:n,junctions:[],blocks:[]})}))}})),e},exportJson:function(){var t=new Blob([JSON.stringify(this.strictJsonData(this.targetResult.concat(this.targetCrossResult)))],{type:"application/json;charset=utf-8"});y.a.saveAs(t,this.fileName)},uploadTraffic:function(){var t=this;Object(S["a"])(this.strictJsonData(this.targetResult.concat(this.targetCrossResult))).then((function(e){e?(t.$message.success("上传成功"),t.simpleModeConf=null):t.$message.error("上传失败")}))},loadData:function(){var t=Object(o["a"])(regeneratorRuntime.mark((function t(e){var n,i,a,o,l,c,b,y,S,_,I,x,C,k,j,w,F,O,E,G,V,A,R,M,N=this;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return M=function(){o.forEach((function(t){var e=new f["SVGLine"](t),n="M "+e.sX+" "+e.sY+"L "+(e.sX+e.eX)/2+" "+(e.sY+e.eY)/2+" L "+e.eX+" "+e.eY;O[e.id].plot(n)})),a.forEach((function(t){var e=new d["SVGSpot"](t);F[e.id].move(e.x-F[e.id].length()/2,e.y-30),n.SVGSpots[e.id].move(e.x-5,e.y-5)}))},R=function(t){if(!(t.length<4)){var e=[],i=[];for(var a in n.SVGSpots)Object(m["default"])([n.SVGSpots[a].x(),n.SVGSpots[a].y()],t.map((function(t){return[t[0]*l.SCALE-l.ORIGINX,l.ORIGINY-t[1]*l.SCALE]})))&&(e.push(n.SVGSpots[a]),i.push(Number(a)));if(!(i.length<1))if(console.log(e,i),1===n.typeVal)n.affectsIds.push({id:0,affectsIds:i}),n.affectsIds.forEach((function(t,e){t["affectsIds"].forEach((function(t){n.SVGSpots[t].animate(500).scale(2).fill(h["default"][e%h["default"].length]).animate(500).scale(1)}))}));else{var s=[],o=[],c=[];i.forEach((function(t){n.junctions.includes(t)?o.push(t):n.idKeys.flat(1).includes(t)?s.push(t):c.push(t)}));var r=i.length,u=s.length,f=o.length,d=c.length;if(r===d&&(1===d?A(c):(e.forEach((function(t){t.animate(500).scale(2).fill(h["default"][n.idKeys.length%h["default"].length]).animate(500).scale(1)})),n.idKeys.push(i))),d>0&&u>0&&0===f)if(1===u)n.SVGSpots[s[0]].animate(500).scale(2).fill("#333333").animate(500).scale(1),c.forEach((function(t){n.SVGSpots[t].animate(500).scale(2).fill(h["default"][n.idKeys.length%h["default"].length]).animate(500).scale(1)})),n.idKeys.push(c.concat(s[0]));else{var p=[];s.forEach((function(t){p.push(Object(g["default"])(t,n.idKeys)[0])}));var v=Array.from(new Set(p));1===v.length?(s.forEach((function(t){n.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1)})),c.forEach((function(t){n.SVGSpots[t].animate(500).scale(2).fill(h["default"][n.idKeys.length%h["default"].length]).animate(500).scale(1)})),n.idKeys.push(c.concat.apply(c,s))):n.$message({type:"warning",message:"".concat(v.map((function(t,e){return"Block"+(e+1)})).join(", ")," 之间禁止合并")})}d>0&&f>0&&0===u&&A(c)}}},A=function(t){var e;(e=n.junctions).push.apply(e,Object(s["a"])(t)),n.junctions=Array.from(new Set(n.junctions)),t.forEach((function(t){n.SVGSpots[t].fill("#FFFFFF").stroke({width:2,color:"#6CA6CD"}).animate(500).scale(2).animate(500).scale(1)}))},V=function(){C=[],k.plot(C),j.plot([0,0,0,0]),w.fill("transparent")},G=function(t){V(),c.attr({cursor:"default"}),C=[];var e=t.pageX-y,n=t.pageY-S,i=(e+l.ORIGINX)/l.SCALE,a=(l.ORIGINY-n)/l.SCALE,s=t.wheelDelta?t.wheelDelta/30:2*-t.detail;s=s>0?10:-10,l.SCALE+=s,l.SCALE<10&&(l.SCALE=10),M();var o=i*l.SCALE-l.ORIGINX,r=l.ORIGINY-a*l.SCALE;console.log(e,n,o,r),y-=o-e,S-=r-n,b.move(y,S)},E=function(){o.forEach((function(t){var e=new f["SVGLine"](t),n="M "+e.sX+" "+e.sY+"L "+(e.sX+e.eX)/2+" "+(e.sY+e.eY)/2+" L "+e.eX+" "+e.eY;O[e.id]=b.path(n).stroke({width:3,color:"#5B5B5B",opacity:.5}),O[e.id].marker("mid",6,6,(function(t){t.path("M-2 1 L-2 5 L4 3 L-2 1").fill("#8B7B8B")}))})),a.forEach((function(t){var e=new d["SVGSpot"](t),i=b.text(e.code+" (".concat(e.id,") ")).font({fill:"#8F8F8F",size:10});i.move(e.x-i.length()/2,e.y-30),F[e.id]=i,v["SHAPE"][e.type]?n.SVGSpots[e.id]=b.polygon(v["SHAPE"][e.type]).fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}).move(e.x-5,e.y-5):n.SVGSpots[e.id]=b.circle(10).fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}).move(e.x-5,e.y-5),i.off(),i.on("mouseover",(function(){i.animate(300).attr({"font-size":14})})).on("mouseout",(function(){i.animate(300).attr({"font-size":10})}))}))},n=this,n.group.clear(),n.SVGSpots=void 0,n.spots=void 0,n.junctions=[],n.idKeys=[],n.affectsIds=[],t.next=15,r["request"].get("/mapManagement/getMapDetailByMapId?mapId="+e);case 15:return i=t.sent,a=i.mapInfo.spots,n.spots=a,t.next=20,r["request"].get("/map/getMapLines?mapId="+e);case 20:o=t.sent,l=new u["MapInstance"](20,i.mapInfo.originX,i.mapInfo.originY,i.mapInfo.weight,i.mapInfo.height,i.mapInfo.spots,o),l.SCALE=20,c=n.draw,b=n.group,y=0,S=l.HEIGHT,b.move(y,S),_=0,I=0,x=!1,C=[],k=b.polyline(C).fill("none").stroke({color:"#f06",width:2,linecap:"round",linejoin:"round",dasharray:"5,5"}),j=b.line([0,0,0,0]).stroke({width:1,color:"#f06",dasharray:"5,5"}),w=b.circle(6).fill("transparent"),n.SVGSpots={},F={},O={},v["SHAPE"].forEach((function(t,e){c.polygon(t).fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}).move(70*e,20).scale(1.2);var n=c.text(v["SHAPENAME"][e]).font({fill:"#8F8F8F",size:12});n.move(70*e+n.length()/2,20)})),E(),c.off(),c.on("mousedown",(function(t){if(_=t.pageX,I=t.pageY,2===t.button&&(x=!0,c.attr({cursor:"move"})),0===t.button){if(1===N.status)if(c.attr({cursor:"crosshair"}),0===C.length&&w.move(_-y-3,I-S-3).fill("#f06"),C.push([_-y,I-S]),C.length>1)if(Math.abs(C[0][0]+y-_)<10&&Math.abs(C[0][1]+S-I)<10){C[C.length-1]=C[0];var e=Object(p["default"])(C.map((function(t){return[(t[0]+l.ORIGINX)/l.SCALE,(l.ORIGINY-t[1])/l.SCALE]})));R(e),V()}else k.plot(C);else k.plot(C);2===N.status&&(N.rectEnable=!0,N.gx=t.pageX,N.gy=t.pageY)}})),c.on("mouseup",(function(t){if(2===t.button&&(c.attr({cursor:"default"}),x=!1),0===t.button&&2===N.status&&N.rectEnable){c.attr({cursor:"default"}),N.rectEnable=!1,N.rectGroup&&N.rectGroup.remove(),C=[[N.gx-y,N.gy-S],[t.pageX-y,N.gy-S],[t.pageX-y,t.pageY-S],[N.gx-y,t.pageY-S]];var e=Object(p["default"])(C.map((function(t){return[(t[0]+l.ORIGINX)/l.SCALE,(l.ORIGINY-t[1])/l.SCALE]})));R(e),V()}})),c.on("mousemove",(function(t){if(x)y+=t.pageX-_,S+=t.pageY-I,_=t.pageX,I=t.pageY,b.move(y,S);else{if(1===N.status){var e=t.pageX,n=t.pageY,i=C.length-1;i>=0&&j.plot(C[i][0],C[i][1],e-y,n-S)}if(2===N.status&&N.rectEnable){var a;N.rectGroup&&N.rectGroup.remove(),N.rectGroup=N.draw.group();var s=t.pageX-N.gx,o=t.pageY-N.gy;a=s<0&&o<0?N.rectGroup.rect(Math.abs(s),Math.abs(o)).move(s,o):s<0&&o>0?N.rectGroup.rect(Math.abs(s),Math.abs(o)).move(s,0):s>0&&o<0?N.rectGroup.rect(Math.abs(s),Math.abs(o)).move(0,o):N.rectGroup.rect(Math.abs(s),Math.abs(o)).move(0,0),a=N.rectGroup.move(N.gx,N.gy),a.fill("rgba(0,0,0,.05)").stroke({width:1,color:"#f06",dasharray:"5,5"})}}})),c.on("mouseleave",(function(){x=!1})),c.on("mousewheel",G),c.on("DOMMouseScroll",G),document.addEventListener("keydown",(function(t){(27===t.keyCode||"ESCAPE"===t.key.toUpperCase())&&C.length>0&&V()}));case 46:case"end":return t.stop()}}),t,this)})));function e(e){return t.apply(this,arguments)}return e}()},mounted:function(){this.simpleMode||(this.draw=c()("map-scene").size(window.innerWidth,window.innerHeight),this.group=this.draw.group(),this.value[1]&&this.loadData(this.value[1]))}},I=_,x=(n("410e"),n("2877")),C=Object(x["a"])(I,i,a,!1,null,"b23c5706",null);e["default"]=C.exports},"1f8d":function(t,e,n){"use strict";n.r(e),n.d(e,"default",(function(){return i}));n("20d6");function i(t,e){var n,i,a=e.flat(1),s=a.findIndex((function(e){return e===t})),o=0;s++;for(var l=0;l<e.length;l++)if(o+=e[l].length,s<=o){n=l,i=e[l].length-(o-s)-1;break}return[n,i]}},"410e":function(t,e,n){"use strict";var i=n("6c08"),a=n.n(i);a.a},4734:function(t,e,n){},6843:function(t,e,n){"use strict";function i(t){return JSON.parse(JSON.stringify(t))}n.r(e),n.d(e,"default",(function(){return i}))},"6c08":function(t,e,n){},7507:function(t,e,n){"use strict";n.r(e),n.d(e,"MapInstance",(function(){return a}));var i=n("d225"),a=function t(e,n,a,s,o,l,c){if(Object(i["a"])(this,t),t.instance)return t.instance;this.SCALE=e,this.ORIGINX=n*e,this.ORIGINY=a*e,this.WIDTH=s*e,this.HEIGHT=o*e,this.spots=l,this.lines=c,t.instance=this}},7678:function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"flex-box"},[n("div",{staticStyle:{width:"300px",height:"500px"}},[n("div",[n("b",[t._v("选择地图：")]),t._v(" "),n("el-cascader",{staticStyle:{display:"inline-block",width:"150px"},attrs:{size:"small",options:t.options,props:{expandTrigger:"hover"}},on:{change:t.handleChange},model:{value:t.value,callback:function(e){t.value=e},expression:"value"}})],1),t._v(" "),t.btnVisible?n("div",{staticStyle:{margin:"200px 0 0"}},[n("el-upload",{staticClass:"upload-demo",attrs:{drag:"","on-success":t.handleSuccess,"before-upload":t.beforeUpload,action:"/api/trafficManagement/authTrafficConfig?mapId="+t.value[1]}},[n("i",{staticClass:"el-icon-upload"}),t._v(" "),n("div",{staticClass:"el-upload__text"},[t._v("将文件拖到此处，或"),n("em",[t._v("点击上传")])]),t._v(" "),n("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"},[t._v("只能上传 zip 文件")])])],1):t._e()])])},a=[],s=(n("7f7f"),n("d9e8")),o={name:"CPlusPlus",data:function(){return{btnVisible:!1,value:[],options:[]}},created:function(){var t=this;s["request"].get("/domain/getDomainList").then((function(e){t.options=e.map((function(t){return{value:t.id,label:t.name,children:t.mapIds.length>0&&t.mapIds.map((function(e,n){return{value:e,label:t.mapNames[n]}}))}}))}))},methods:{handleChange:function(t){t[1]&&(this.btnVisible=!0)},beforeUpload:function(t){return"application/x-zip-compressed"===t.type},handleSuccess:function(){this.message("success")}}},l=o,c=(n("0ff9"),n("2877")),r=Object(c["a"])(l,i,a,!1,null,"1b5d50d5",null);e["default"]=r.exports},"7c58":function(t,e,n){},8175:function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[t.mode?t._e():n("Topo"),t._v(" "),"simple"===t.mode?n("Simple"):t._e()],1)},a=[],s=n("173f"),o=n("bab2"),l=n("7678"),c={name:"app",components:{Topo:s["default"],Simple:o["default"],CPlusPlus:l["default"]},data:function(){return{mode:void 0}},created:function(){this.mode=this.$route.query.mode},mounted:function(){}},r=c,u=n("2877"),f=Object(u["a"])(r,i,a,!1,null,null,null);e["default"]=f.exports},"85ea":function(t,e,n){"use strict";var i=n("4734"),a=n.n(i);a.a},"8d2a":function(t,e,n){"use strict";n.r(e),n.d(e,"SHAPE",(function(){return i})),n.d(e,"SHAPENAME",(function(){return a}));var i=["","","-5,5 3,5 3,3 5,3 5,-3 3,-3 3,-5 -5,-5 -5,5","-5,-5 5,-5 5,0 3,5 -3,5 -5,0 -5,-5","-3,-5 3,-5 3,1 5,1 5,5 -5,5 -5,1 -3,1 -3,-5","-3,5 3,5 3,2 5,2 5,-2 3,-2 3,-5 -3,-5 -3,-2 -5,-2 -5,2 -3,2 -3,5"],a=["","","充电桩","休息点","码头点","辊筒点"]},b2f7:function(t,e,n){"use strict";n.r(e),n.d(e,"SVGLine",(function(){return r}));var i=n("d225"),a=n("013f"),s=n("4e2b"),o=n("c603"),l=n("bd86"),c=n("7507"),r=function(t){Object(s["a"])(n,t);var e=Object(o["a"])(n);function n(t){var s,o;Object(i["a"])(this,n);var c=(s=o=e.call(this),Object(l["a"])(Object(a["a"])(o),"id",void 0),Object(l["a"])(Object(a["a"])(o),"sX",void 0),Object(l["a"])(Object(a["a"])(o),"sY",void 0),Object(l["a"])(Object(a["a"])(o),"eX",void 0),Object(l["a"])(Object(a["a"])(o),"eY",void 0),Object(l["a"])(Object(a["a"])(o),"weight",void 0),s);return o.sX=t.startX*c.SCALE-c.ORIGINX,o.sY=c.ORIGINY-t.startY*c.SCALE,o.eX=t.endX*c.SCALE-c.ORIGINX,o.eY=c.ORIGINY-t.endY*c.SCALE,o.id=t.id,o.weight=t.weight,o}return n}(c["MapInstance"])},bab2:function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"flex-box"},[n("div",{staticStyle:{"min-width":"500px"}},[n("json-viewer",{staticStyle:{height:"100vh","overflow-y":"auto"},attrs:{value:t.simpleModeConf,"expand-depth":5,copyable:"",boxed:"",sort:""}})],1),t._v(" "),n("div",[n("h5",[t._v("上传配置文件入口")]),t._v(" "),n("p",{staticStyle:{"font-size":"12px"}},[t._v("\n      "+t._s(t.simpleFileName?t.simpleFileName:"请选择文件")+"\n      "),n("input",{staticStyle:{display:"none"},attrs:{id:"simpleFileName",type:"file"},on:{change:t.readConfFileSimpleMode}}),t._v(" "),n("el-button",{attrs:{size:"mini",type:"primary"},on:{click:t.importJsonSimpleMode}},[t._v("选择上传")])],1),t._v(" "),n("div",{staticStyle:{"margin-top":"50px"}},[t.simpleFileName?n("el-button",{attrs:{size:"small",type:"success"},on:{click:t.uploadTrafficSimpleMode}},[t._v("上传同步\n      ")]):t._e()],1)])])},a=[],s=(n("7f7f"),n("e9bd")),o={name:"simple",data:function(){return{simpleFileName:"",simpleModeConf:{}}},methods:{importJsonSimpleMode:function(){document.getElementById("simpleFileName").click()},readConfFileSimpleMode:function(t){var e=this,n=t.target.files[0];if(this.simpleFileName=n.name,"application/json"===n.type){var i=new Blob([n],{type:"application/json"}),a=new FileReader;a.onload=function(){var t=JSON.parse(a.result);try{e.simpleModeConf=t}catch(n){e.$message.error("配置文件有误，请核对点位")}finally{document.getElementById("simpleFileName").value=""}},a.readAsText(i)}else this.$message.error("文件类型有误")},uploadTrafficSimpleMode:function(){var t=this;this.simpleModeConf&&Object(s["a"])(this.simpleModeConf).then((function(e){e?t.$message.success("上传成功"):t.$message.error("上传失败")}))}}},l=o,c=(n("85ea"),n("2877")),r=Object(c["a"])(l,i,a,!1,null,"df10e148",null);e["default"]=r.exports},c836:function(t,e,n){"use strict";function i(t,e){for(var n=t[0],i=t[1],a=!1,s=0,o=e.length-1;s<e.length;o=s++){var l=e[s][0],c=e[s][1],r=e[o][0],u=e[o][1],f=c>i!=u>i&&n<(r-l)*(i-c)/(u-c)+l;f&&(a=!a)}return a}n.r(e),n.d(e,"default",(function(){return i}))},d287:function(t,e,n){"use strict";n.r(e);var i=["#FF8C00","#FF6EB4","#C71585","#FF3030","#CD661D","#9F79EE","#B22222","#9A32CD","#8B4513","#8B0000","#836FFF","#7D26CD","#76EEC6","#8B5F65","#3CB371","#00B2EE"];e["default"]=i},d9e8:function(t,e,n){"use strict";n.r(e),n.d(e,"request",(function(){return l}));n("96cf");var i=n("3b8d"),a=n("bc3a"),s=n.n(a),o=s.a.create({baseURL:window.g.baseURL,timeout:5e3,headers:{name:"lx-panel",token:"123456"}}),l={get:function(){var t=Object(i["a"])(regeneratorRuntime.mark((function t(e,n){var i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,t.next=3,o.get(e,{params:n});case 3:return i=t.sent,i=i.data,t.abrupt("return",new Promise((function(t){t(i)})));case 8:t.prev=8,t.t0=t["catch"](0),alert("服务器出错");case 11:case"end":return t.stop()}}),t,null,[[0,8]])})));function e(e,n){return t.apply(this,arguments)}return e}(),post:function(){var t=Object(i["a"])(regeneratorRuntime.mark((function t(e,n){var i;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.prev=0,t.next=3,o.post(e,n);case 3:return i=t.sent,i=i.data,t.abrupt("return",new Promise((function(t,e){t(i)})));case 8:t.prev=8,t.t0=t["catch"](0),alert("服务器出错");case 11:case"end":return t.stop()}}),t,null,[[0,8]])})));function e(e,n){return t.apply(this,arguments)}return e}()}},e9bd:function(t,e,n){"use strict";n.d(e,"a",(function(){return a}));var i=n("b775");function a(t){return Object(i["a"])({url:"/trafficManagement/updateSpotMap",method:"post",data:t})}},ff95:function(t,e,n){"use strict";n.r(e),n.d(e,"SVGSpot",(function(){return r}));var i=n("d225"),a=n("013f"),s=n("4e2b"),o=n("c603"),l=n("bd86"),c=n("7507"),r=function(t){Object(s["a"])(n,t);var e=Object(o["a"])(n);function n(t){var s,o;Object(i["a"])(this,n);var c=(s=o=e.call(this),Object(l["a"])(Object(a["a"])(o),"id",void 0),Object(l["a"])(Object(a["a"])(o),"x",void 0),Object(l["a"])(Object(a["a"])(o),"y",void 0),Object(l["a"])(Object(a["a"])(o),"code",void 0),Object(l["a"])(Object(a["a"])(o),"type",0),s);return o.id=t.id,o.x=t.x*c.SCALE-c.ORIGINX,o.y=c.ORIGINY-t.y*c.SCALE,o.code=t.code,o.type=t.type,o}return n}(c["MapInstance"])}}]);