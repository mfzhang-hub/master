(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2784d781"],{"0afd":function(t,e,n){"use strict";n.r(e),n.d(e,"SVGSpot",(function(){return l}));var i=n("78e0"),a=n("83a7"),o=n("4453"),s=n("8595"),r=n("46d3"),c=n("45c3"),l=function(t){Object(o["a"])(n,t);var e=Object(s["a"])(n);function n(t){var o,s;Object(i["a"])(this,n);var c=(o=s=e.call(this),Object(r["a"])(Object(a["a"])(s),"id",void 0),Object(r["a"])(Object(a["a"])(s),"x",void 0),Object(r["a"])(Object(a["a"])(s),"y",void 0),Object(r["a"])(Object(a["a"])(s),"code",void 0),Object(r["a"])(Object(a["a"])(s),"type",0),o);return s.id=t.id,s.x=t.x*c.SCALE-c.ORIGINX,s.y=c.ORIGINY-t.y*c.SCALE,s.code=t.code,s.type=t.type,s}return n}(c["MapInstance"])},"25fe":function(t,e,n){"use strict";n.d(e,"b",(function(){return a})),n.d(e,"a",(function(){return o}));var i=n("b775");function a(t){return i["a"].post("/traffic/block/update",t)}function o(t){return i["a"].get("/traffic/block/find",t)}},"31bf":function(t,e,n){(function(n){var i,a,o;(function(n,s){a=[],i=s,o="function"===typeof i?i.apply(e,a):i,void 0===o||(t.exports=o)})(0,(function(){"use strict";function e(t,e){return"undefined"==typeof e?e={autoBom:!1}:"object"!=typeof e&&(console.warn("Deprecated: Expected third argument to be a object"),e={autoBom:!e}),e.autoBom&&/^\s*(?:text\/\S*|application\/xml|\S*\/\S*\+xml)\s*;.*charset\s*=\s*utf-8/i.test(t.type)?new Blob(["\ufeff",t],{type:t.type}):t}function i(t,e,n){var i=new XMLHttpRequest;i.open("GET",t),i.responseType="blob",i.onload=function(){c(i.response,e,n)},i.onerror=function(){console.error("could not download file")},i.send()}function a(t){var e=new XMLHttpRequest;e.open("HEAD",t,!1);try{e.send()}catch(t){}return 200<=e.status&&299>=e.status}function o(t){try{t.dispatchEvent(new MouseEvent("click"))}catch(i){var e=document.createEvent("MouseEvents");e.initMouseEvent("click",!0,!0,window,0,0,0,80,20,!1,!1,!1,!1,0,null),t.dispatchEvent(e)}}var s="object"==typeof window&&window.window===window?window:"object"==typeof self&&self.self===self?self:"object"==typeof n&&n.global===n?n:void 0,r=s.navigator&&/Macintosh/.test(navigator.userAgent)&&/AppleWebKit/.test(navigator.userAgent)&&!/Safari/.test(navigator.userAgent),c=s.saveAs||("object"!=typeof window||window!==s?function(){}:"download"in HTMLAnchorElement.prototype&&!r?function(t,e,n){var r=s.URL||s.webkitURL,c=document.createElement("a");e=e||t.name||"download",c.download=e,c.rel="noopener","string"==typeof t?(c.href=t,c.origin===location.origin?o(c):a(c.href)?i(t,e,n):o(c,c.target="_blank")):(c.href=r.createObjectURL(t),setTimeout((function(){r.revokeObjectURL(c.href)}),4e4),setTimeout((function(){o(c)}),0))}:"msSaveOrOpenBlob"in navigator?function(t,n,s){if(n=n||t.name||"download","string"!=typeof t)navigator.msSaveOrOpenBlob(e(t,s),n);else if(a(t))i(t,n,s);else{var r=document.createElement("a");r.href=t,r.target="_blank",setTimeout((function(){o(r)}))}}:function(t,e,n,a){if(a=a||open("","_blank"),a&&(a.document.title=a.document.body.innerText="downloading..."),"string"==typeof t)return i(t,e,n);var o="application/octet-stream"===t.type,c=/constructor/i.test(s.HTMLElement)||s.safari,l=/CriOS\/[\d]+/.test(navigator.userAgent);if((l||o&&c||r)&&"undefined"!=typeof FileReader){var u=new FileReader;u.onloadend=function(){var t=u.result;t=l?t:t.replace(/^data:[^;]*;/,"data:attachment/file;"),a?a.location.href=t:location=t,a=null},u.readAsDataURL(t)}else{var f=s.URL||s.webkitURL,d=f.createObjectURL(t);a?a.location=d:location.href=d,a=null,setTimeout((function(){f.revokeObjectURL(d)}),4e4)}});s.saveAs=c.saveAs=c,t.exports=c}))}).call(this,n("2409"))},"356d":function(t,e,n){"use strict";var i=n("f3ba"),a=n("ece7");t.exports=i("Set",(function(t){return function(){return t(this,arguments.length?arguments[0]:void 0)}}),a)},"39bc":function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticStyle:{"background-image":"url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJ2LTQiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiPjxkZWZzIGlkPSJ2LTMiPjxwYXR0ZXJuIGlkPSJwYXR0ZXJuXzAiIHBhdHRlcm5Vbml0cz0idXNlclNwYWNlT25Vc2UiIHg9IjAiIHk9IjAiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCI+PHJlY3QgaWQ9InYtNSIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0iI0FBQUFBQSIvPjwvcGF0dGVybj48L2RlZnM+PHJlY3QgaWQ9InYtNyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0idXJsKCNwYXR0ZXJuXzApIi8+PC9zdmc+')"},attrs:{id:"map-scene",oncontextmenu:"return false"}},[n("div",{staticClass:"select-box"},[n("el-button",{attrs:{type:1===t.status?"info":"",circle:"",round:""},on:{click:function(e){t.status=1}}},[t._v("poly")]),n("hr"),n("el-button",{attrs:{type:2===t.status?"info":"",circle:"",round:""},on:{click:function(e){t.status=2}}},[t._v("rect")])],1),n("div",{staticClass:"tool-box"},[n("el-button",{attrs:{plain:""},on:{click:function(e){return t.$router.back(-1)}}},[t._v("返回")]),n("h4",{staticStyle:{color:"#ff000077"}},[t._v("未做适配，建议拖动后刷新页面，再选择编辑区域")]),n("div",[n("b",[t._v("选择地图：")]),n("el-cascader",{staticStyle:{display:"inline-block",width:"150px"},attrs:{size:"small",options:t.options,props:{expandTrigger:"hover"}},on:{change:t.handleChange},model:{value:t.value,callback:function(e){t.value=e},expression:"value"}})],1),n("div",{staticStyle:{margin:"20px 0",padding:"30px 10px","font-weight":"bolder"}},[t.junctions.length>0?n("div",[n("h5",{staticStyle:{background:"#eeeeee",margin:"0",padding:"20px 0"}},[t._v("JUNCTIONS 配置")]),n("div",{staticStyle:{margin:"0 auto 20px auto","font-size":"14px",cursor:"pointer"}},[n("el-card",{attrs:{shadow:"never"}},t._l(t.junctions,(function(e,i){return n("div",{key:e,staticClass:"spot-list",style:{color:"#6CA6CD"},on:{click:function(n){return t.highlightBox(e)}}},[t._v(" "+t._s(i+1)+". "+t._s(t.spots.find((function(t){return t.id==e})).code)+" "),n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("JUNCTION",e,i)}}})],1)})),0)],1)]):t._e(),t.affectsIds.length>0?n("div",[n("h5",{staticStyle:{background:"#eeeeee",margin:"0",padding:"20px 0"}},[t._v("AFFECTS 配置")]),t._l(t.affectsIds,(function(e,i){return n("div",{key:i,staticStyle:{margin:"0 0 10px 0"},on:{mouseenter:function(n){return t.highlightBox(e.affectsIds)}}},[n("el-card",{attrs:{shadow:"hover"}},[n("h5",[n("i",{staticClass:"el-icon el-icon-box"}),t._v(" "+t._s("Affect"+(i+1))+" "),n("el-button",{staticStyle:{float:"right",top:"-20px",position:"relative"},attrs:{size:"mini",icon:"el-icon-delete",type:"danger"},on:{click:function(e){return t.deleteAffect(i)}}})],1),e.id?n("div",{staticClass:"affect-box",staticStyle:{height:"auto"},style:{color:t.colors[i]}},[n("div",{staticClass:"spot-list base-spot",on:{click:function(n){return t.highlightBox(e.id)}}},[t._v(" "+t._s(t.spots.find((function(t){return t.id==e.id})).code)+" ")]),n("div",{staticClass:"affect-spots"},t._l(e.affectsIds,(function(e,a){return n("div",{key:a,staticClass:"affect-line"},[n("div",{staticClass:"spot-list affect-spot",on:{click:function(n){return t.highlightBox(e)}}},[t._v(t._s(t.spots.find((function(t){return t.id==e})).code)+" ")]),n("div",{staticClass:"affect-spot-delete"},[n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("AFFECT",e,i,a)}}})],1)])})),0)]):n("div",[t._l(e.affectsIds,(function(e,a){return[n("transition",{key:a,attrs:{name:"fade"}},[n("div",{staticClass:"spot-list",style:{color:t.colors[i]},on:{click:function(n){return t.highlightBox(e)}}},[t._v(" "+t._s(a+1)+". "+t._s(t.spots.find((function(t){return t.id==e})).code)+" "),n("el-tooltip",{staticClass:"item",attrs:{effect:"dark",content:"设为目标点",placement:"left"}},[n("el-button",{staticStyle:{float:"right",padding:"3px!important","margin-left":"20px"},attrs:{type:"success",plain:"",size:"mini",icon:"el-icon-check",circle:""},on:{click:function(n){return t.setAffectId(e,i,a)}}})],1),n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("AFFECT",e,i,a)}}})],1)])]}))],2)])],1)}))],2):t._e(),t.idKeys.length>0?n("div",[n("h5",{staticStyle:{background:"#eeeeee",margin:"0",padding:"20px 0"}},[t._v("BLOCKS 配置")]),t._l(t.idKeys,(function(e,i){return n("div",{key:i,staticStyle:{margin:"0 0 10px 0"},on:{mouseenter:function(n){return t.highlightBox(e)}}},[n("el-card",{attrs:{shadow:"hover"}},[n("h5",[n("i",{staticClass:"el-icon el-icon-box"}),t._v(" "+t._s("Block"+(i+1))+" "),n("el-button",{staticStyle:{float:"right",top:"-20px",position:"relative"},attrs:{size:"mini",icon:"el-icon-delete",type:"danger"},on:{click:function(e){return t.deleteBlock(i)}}})],1),t._l(e,(function(e,a){return[n("transition",{key:a,attrs:{name:"fade"}},[n("div",{staticClass:"spot-list",style:{color:t.colors[i]},on:{click:function(n){return t.highlightBox(e)}}},[t._v(" "+t._s(a+1)+". "+t._s(t.spots.find((function(t){return t.id==e})).code)+" "),n("el-button",{staticStyle:{float:"right",padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteId("BLOCK",e,i,a)}}})],1)])]}))],2)],1)}))],2):t._e()]),n("div",{staticStyle:{"margin-top":"50px"}},[t.value.length>0?n("el-button",{attrs:{size:"mini",type:"primary",icon:"el-icon-plus",plain:""},on:{click:t.addList}},[t._v("添加到列表 ")]):t._e()],1),n("div",{staticStyle:{margin:"30px auto 50px"}},[n("h5",{staticStyle:{"text-align":"left"}},[t._v("地图交管配置")]),n("el-table",{staticStyle:{width:"100%"},attrs:{size:"mini",border:"",data:t.targetResult}},[n("el-table-column",{attrs:{prop:"domain",label:"DOMAIN"},scopedSlots:t._u([{key:"default",fn:function(e){return[t._v(" "+t._s(t.options.find((function(t){return t.value===e.row.domain})).label)+" ")]}}])}),n("el-table-column",{attrs:{width:"60px",prop:"blocks",label:"BLK"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-tooltip",{attrs:{placement:"left"}},[n("div",{attrs:{slot:"content"},slot:"content"},t._l(e.row.blocks,(function(e,i){return n("p",{key:i},[t._v(t._s(JSON.stringify(e)))])})),0),n("el-button",{staticStyle:{width:"20px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-more",circle:""}})],1)]}}])}),n("el-table-column",{attrs:{label:"编辑"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-button",{staticStyle:{padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteItem(e.$index)}}}),n("el-button",{staticStyle:{"margin-left":"5px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-edit",circle:""},on:{click:function(n){return t.editItem(e.$index)}}})]}}])})],1)],1),n("div",{staticStyle:{"margin-top":"50px","text-align":"left"}},[n("h5",[t._v("跨地图交管配置")]),n("div",{},[n("div",{staticStyle:{margin:"5px"}},[n("b",{staticStyle:{display:"inline-block",width:"80px"}},[t._v("domain: ")]),n("el-select",{attrs:{size:"mini",placeholder:"请选择"},on:{change:t.crossChange},model:{value:t.domainVal,callback:function(e){t.domainVal=e},expression:"domainVal"}},t._l(t.options,(function(t){return n("el-option",{key:t.value,attrs:{label:t.label,value:t.value}})})),1)],1),n("div",{staticStyle:{margin:"5px"}},[n("b",{staticStyle:{display:"inline-block",width:"80px"}},[t._v("blk: ")]),n("el-cascader",{attrs:{"show-all-levels":!1,props:t.props,options:t.blkOption,size:"mini","collapse-tags":""},model:{value:t.blkVal,callback:function(e){t.blkVal=e},expression:"blkVal"}})],1)]),n("div",{staticStyle:{margin:"10px","text-align":"center"}},[t.domainVal?n("el-button",{attrs:{size:"mini",type:"primary",icon:"el-icon-plus",plain:""},on:{click:t.addCrossList}},[t._v("添加到列表 ")]):t._e()],1),n("p"),n("el-table",{staticStyle:{width:"100%"},attrs:{size:"mini",border:"",data:t.targetCrossResult}},[n("el-table-column",{attrs:{prop:"domain",label:"DOMAIN"},scopedSlots:t._u([{key:"default",fn:function(e){return[t._v(" "+t._s(t.options.find((function(t){return t.value===e.row.domain})).label)+" ")]}}])}),n("el-table-column",{attrs:{prop:"blocks",label:"BLK"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-tooltip",{attrs:{placement:"left"}},[n("div",{attrs:{slot:"content"},slot:"content"},t._l(e.row.blocks,(function(e,i){return n("p",{key:i},[t._v(t._s(JSON.stringify(e)))])})),0),n("el-button",{staticStyle:{width:"20px",padding:"3px!important"},attrs:{plain:"",size:"mini",icon:"el-icon-more",circle:""}})],1)]}}])}),n("el-table-column",{attrs:{label:"编辑"},scopedSlots:t._u([{key:"default",fn:function(e){return[n("el-button",{staticStyle:{padding:"3px!important"},attrs:{type:"danger",plain:"",size:"mini",icon:"el-icon-delete",circle:""},on:{click:function(n){return t.deleteCrossItem(e.$index)}}})]}}])})],1)],1),n("div",{staticStyle:{"margin-top":"50px"}},[n("el-button",{attrs:{size:"small",type:"danger"},on:{click:t.exportJson}},[t._v("生成配置")]),n("el-button",{attrs:{size:"small",type:"success"},on:{click:t.uploadTraffic}},[t._v("上传同步")])],1)],1)])])},a=[],o=n("99a5"),s=n("190b"),r=(n("6a61"),n("eb62"),n("f5bd"),n("fc2a"),n("23db"),n("2769"),n("8639"),n("e1d4"),n("2621"),n("6afd"),n("b12c"),n("b1fa"),n("356d"),n("2e6f"),n("af21"),n("a5c9"),n("e0d2"),n("7d86"),n("3f7e"),n("0a4f"),n("bc44"),n("3979"),n("f725")),c=n.n(r),l=n("45c3"),u=n("e94b"),f=n("0afd"),d=n("4f33"),p=n("dd06"),h=n("bb32"),m=n("e3e9"),g=n("477e"),v=n("31bf"),b=n.n(v),y=n("7661"),S=n("7cf8"),I=n("25fe"),k={data:function(){return{value:[],options:[],typeVal:0,types:[{value:0,label:"JUNCTIONS / BLOCKS"},{value:1,label:"AFFECTS"}],affectsIds:[],draw:null,group:null,resultIdx:void 0,targetResult:[],targetResultKey:[],targetCrossResult:[],junctions:[],idKeys:[],spots:void 0,SVGSpots:void 0,fileName:"",junOption:[],blkOption:[],domainVal:"",junVal:[],blkVal:[],props:{multiple:!0,lazy:!0,lazyLoad:function(t,e){var n=t.level,i=t.value;1===n&&Object(y["b"])({mapId:i}).then((function(t){var i=t["data"].Vertex,a=i.map((function(t){return t["vertexPo"]})),o=a.map((function(t){return{value:t.id,label:t.code,leaf:n>=1}}));e(o)}))}},status:2,gx:0,gy:0,rectEnable:!1,rectGroup:null}},computed:{colors:function(){return h["default"]}},created:function(){var t=this,e=this.$route.query.mode;"simple"===e&&(this.simpleMode=!0),Object(S["b"])().then((function(e){console.log(e),t.options=e.data.map((function(t){return{value:t["areaPo"].id,label:t["areaPo"].name,children:t["topologyMapPos"].length>0&&t["topologyMapPos"].map((function(t){return{value:t["id"],label:t["name"]}}))}}))}))},methods:{crossChange:function(t){this.junVal=[],this.blkVal=[],this.junOption=this.options.find((function(e){return e.value===t}))["children"],this.blkOption=this.options.find((function(e){return e.value===t}))["children"]},editCrossItem:function(){},deleteCrossItem:function(t){this.targetCrossResult.splice(t,1)},addCrossList:function(){this.domainVal?(this.targetCrossResult.push({domain:this.domainVal,junMaps:this.junVal.map((function(t){return t[0]})),junctions:this.junVal.map((function(t){return t[1]})),blkMaps:this.blkVal.map((function(t){return t[0]})),blocks:[{name:"crossBlocks"+this.targetCrossResult.length,ids:this.blkVal.map((function(t){return t[1]}))}],blkVal:this.blkVal}),this.domainVal="",this.junVal=[],this.blkVal=[],this.junOption=[],this.blkOption=[]):this.$message({type:"info",message:"domain 为空"})},deleteItem:function(t){var e=this;this.$confirm("确认删除这项配置吗 ?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){e.targetResultKey.splice(t,1),e.targetResult.splice(t,1),e.$message({type:"success",message:"删除成功!"})})).catch((function(){e.$message({type:"info",message:"已取消"})}))},editItem:function(t){this.resultIdx=t,this.value=this.targetResultKey[t].split("-").map((function(t){return Number(t)})),this.handleChange(this.value)},addList:function(){var t=this,e=this.value.join("-"),n=!1;if(this.affectsIds.forEach((function(t){t.id||(n=!0)})),n)this.$message.error("affects 需要指定目标点");else{var i=Object(d["default"])({domain:this.value[0],map:this.value[1],junctions:this.junctions,affects:this.affectsIds,blocks:this.idKeys.map((function(t,e){return{name:"block"+(e+1),ids:t}}))});this.targetResultKey.find((function(t){return t===e}))?this.$confirm("是否更新当前数据?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then((function(){t.targetResult.splice(t.targetResultKey.findIndex((function(t){return t===e})),1,i),t.$message({type:"success",message:"更新成功!"})})).catch((function(){t.$message({type:"info",message:"已取消"})})):(this.targetResultKey.push(e),this.targetResult.push(i))}},format2Front:function(t){var e=this;console.log(this.value,t);var n=[],i=[];t.forEach((function(t){if(1===new Set(t["ids"].map((function(t){return t[0]}))).size){var a=t["ids"][0][0],o=n.find((function(t){return t.map===a}));o?o["blocks"].push({name:t["name"],ids:t["ids"].map((function(t){return t[1]}))}):n.push({domain:e.value[0],map:a,junctions:[],affects:[],blocks:[{name:t["name"],ids:t["ids"].map((function(t){return t[1]}))}]})}else i.push({domain:e.value[0],junMaps:[],junctions:[],blkMaps:t["ids"].map((function(t){return t[0]})),blocks:[{name:t["name"],ids:t["ids"].map((function(t){return t[1]}))}],blkVal:t["ids"]})}));var a=n.concat(i);return a},handleChange:function(t){var e=this,n=this;Promise.resolve(t[1]&&this.loadData(t[1])).then((function(){var i=n.targetResultKey.findIndex((function(t){return t===n.value.join("-")}));if(n.SVGSpots&&n.spots&&i>-1){var a=n.targetResult[i];n.junctions=a["junctions"]||[],n.idKeys=a["blocks"].map((function(t){return t["ids"]}))||[],n.affectsIds=a["affects"]||[]}n.affectsIds.forEach((function(t,e){t.id&&n.SVGSpots[t.id].animate(500).scale(2).fill(h["default"][e%h["default"].length]).animate(500).scale(1),t["affectsIds"].forEach((function(t){n.SVGSpots[t].animate(500).scale(2).fill(h["default"][e%h["default"].length]).animate(500).scale(1)}))})),n.junctions.forEach((function(t){n.SVGSpots[t].fill("#FFFFFF").stroke({width:2,color:"#6CA6CD"}).animate(500).scale(2).animate(500).scale(1)})),n.idKeys.forEach((function(t,i){t.forEach((function(t){var a=e.idKeys.flat(1),o=a.filter((function(e){return e===t}));if(o.length>1)e.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1);else if(1===o.length){var s=Object(g["default"])(o[0],e.idKeys);e.SVGSpots[o[0]].animate(500).scale(2).fill(h["default"][s[0]%h["default"].length]).animate(500).scale(1)}else n.SVGSpots[t].animate(500).scale(2).fill(h["default"][i%h["default"].length]).animate(500).scale(1)}))})),Object(I["a"])({areaId:t[0]}).then((function(t){var n=e.format2Front(t["data"]?t["data"]["blocks"]:[]);e.targetResultKey=[],e.targetResult=[],e.targetCrossResult=[];try{n.forEach((function(t){t["map"]?(e.targetResult.push(t),e.targetResultKey.push(t["domain"]+"-"+t["map"])):e.targetCrossResult.push(t)})),e.targetCrossResult=Object(d["default"])(e.targetCrossResult),e.junctions=[],e.affectsIds=[]}catch(i){e.$message.error("配置文件有误，请核对点位")}finally{document.getElementById("fileElement").value=""}}))}))},readConfFile:function(t){var e=this,n=t.target.files[0];if(this.fileName=n.name,"application/json"===n.type){var i=new Blob([n],{type:"application/json"}),a=new FileReader;a.onload=function(){var t=JSON.parse(a.result);e.targetResultKey=[],e.targetResult=[],e.targetCrossResult=[];try{t.forEach((function(t){t["map"]?(e.targetResult.push(t),e.targetResultKey.push(t["domain"]+"-"+t["map"])):e.targetCrossResult.push(t)})),e.targetCrossResult=Object(d["default"])(e.targetCrossResult),e.idKeys=[],e.junctions=[],e.affectsIds=[]}catch(n){e.$message.error("配置文件有误，请核对点位")}finally{document.getElementById("fileElement").value=""}},a.readAsText(i)}else this.$message.error("文件类型有误")},highlightBox:function(t){var e=this;t instanceof Array?t.forEach((function(t){e.SVGSpots[t].animate(500).scale(2).animate(500).scale(1)})):this.SVGSpots[t].animate(500).scale(2).animate(500).scale(1)},importJson:function(){document.getElementById("fileElement").click()},deleteBlock:function(t){var e=this,n=this.idKeys.splice(t,1);n[0].forEach((function(t){var n=e.idKeys.flat(1),i=n.filter((function(e){return e===t}));if(i.length>1)e.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1);else if(1===i.length){var a=Object(g["default"])(i[0],e.idKeys);e.SVGSpots[i[0]].animate(500).scale(2).fill(h["default"][a[0]%h["default"].length]).animate(500).scale(1)}else e.SVGSpots[t].animate(500).scale(2).fill("#6CA6CD").animate(500).scale(1)}))},deleteAffect:function(t){var e=this,n=this.affectsIds.splice(t,1);n[0]["id"]&&this.SVGSpots[n[0]["id"]].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}),n.forEach((function(t){t["affectsIds"].forEach((function(t){e.SVGSpots[t].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"})}))}))},setAffectId:function(t,e,n){this.affectsIds[e]["affectsIds"].splice(n,1),this.affectsIds[e]["id"]=t},deleteId:function(t,e,n,i){var a=this;if(event.preventDefault(),event.stopPropagation(),"BLOCK"===t){var o=[n,i];this.idKeys[o[0]].splice(o[1],1),this.SVGSpots[e].animate(500).scale(2).fill("#6CA6CD").animate(500).scale(1),0===this.idKeys[o[0]].length&&this.idKeys.splice(o[0],1);var s=this.idKeys.flat(1),r=s.filter((function(t){return t===e}));if(r.length>1)r.forEach((function(t){a.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1)}));else if(1===r.length){var c=Object(g["default"])(r[0],this.idKeys);this.SVGSpots[r[0]].animate(500).scale(2).fill(h["default"][c[0]%h["default"].length]).animate(500).scale(1)}else this.SVGSpots[e].animate(500).scale(2).fill("#6CA6CD").animate(500).scale(1)}"JUNCTION"===t&&(this.junctions.splice(this.junctions.findIndex((function(t){return t==e})),1),this.SVGSpots[e].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"})),"AFFECT"===t&&(this.SVGSpots[e].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}),this.affectsIds[n]["affectsIds"].splice(i,1),this.affectsIds[n]["affectsIds"].length<1&&(this.SVGSpots[this.affectsIds[n]["id"]].fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}),this.affectsIds.splice(n,1)))},formatCrossData:function(){return this.targetCrossResult.map((function(t){return{domain:t.domain,junctions:t.junctions,blocks:t.blocks}}))},strictJsonData:function(t){var e=Object(d["default"])(t);return t.forEach((function(t){var n=Array.from(new Set(t["blkMaps"]));n.forEach((function(n){e.find((function(t){return t["map"]===n}))||e.push({domain:t.domain,map:n,junctions:[],blocks:[]})}))})),e},exportJson:function(){var t=new Blob([JSON.stringify(this.strictJsonData(this.targetResult.concat(this.targetCrossResult)))],{type:"application/json;charset=utf-8"});b.a.saveAs(t,this.fileName)},uploadTraffic:function(){var t=this,e=this.strictJsonData(this.targetResult.concat(this.targetCrossResult)),n={area:e[0]["domain"],blocks:[]};e.forEach((function(t){var e;(e=n["blocks"]).push.apply(e,Object(s["a"])(t["blocks"]))})),Object(I["b"])(n).then((function(e){e.state&&t.$message.success("更新成功")}))},loadData:function(t){var e=this;return Object(o["a"])(regeneratorRuntime.mark((function n(){var i,a,o,r,c,v,b,S,I,k,x,C,w,j,E,O,F,A,G,R,V,_,L,B,M,N,X,K,Y;return regeneratorRuntime.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return Y=function(){I.forEach((function(t){var e=new u["SVGLine"](t),n="M "+e.sX+" "+e.sY+"L "+(e.sX+e.eX)/2+" "+(e.sY+e.eY)/2+" L "+e.eX+" "+e.eY;L[e.id].plot(n)})),b.forEach((function(t){var e=new f["SVGSpot"](t);_[e.id].move(e.x-_[e.id].length()/2,e.y-30),i.SVGSpots[e.id].move(e.x-5,e.y-5)}))},K=function(t){if(!(t.length<4)){var e=[],n=[];for(var a in i.SVGSpots)Object(p["default"])([i.SVGSpots[a].x(),i.SVGSpots[a].y()],t.map((function(t){return[t[0]*k.SCALE-k.ORIGINX,k.ORIGINY-t[1]*k.SCALE]})))&&(e.push(i.SVGSpots[a]),n.push(Number(a)));if(!(n.length<1))if(console.log(e,n),1===i.typeVal)i.affectsIds.push({id:0,affectsIds:n}),i.affectsIds.forEach((function(t,e){t["affectsIds"].forEach((function(t){i.SVGSpots[t].animate(500).scale(2).fill(h["default"][e%h["default"].length]).animate(500).scale(1)}))}));else{var o=[],s=[],r=[];n.forEach((function(t){i.junctions.includes(t)?s.push(t):i.idKeys.flat(1).includes(t)?o.push(t):r.push(t)}));var c=n.length,l=o.length,u=s.length,f=r.length;if(c===f&&(1===f?X(r):(e.forEach((function(t){t.animate(500).scale(2).fill(h["default"][i.idKeys.length%h["default"].length]).animate(500).scale(1)})),i.idKeys.push(n))),f>0&&l>0&&0===u)if(1===l)i.SVGSpots[o[0]].animate(500).scale(2).fill("#333333").animate(500).scale(1),r.forEach((function(t){i.SVGSpots[t].animate(500).scale(2).fill(h["default"][i.idKeys.length%h["default"].length]).animate(500).scale(1)})),i.idKeys.push(r.concat(o[0]));else{var d=[];o.forEach((function(t){d.push(Object(g["default"])(t,i.idKeys)[0])}));var m=Array.from(new Set(d));1===m.length?(o.forEach((function(t){i.SVGSpots[t].animate(500).scale(2).fill("#333333").animate(500).scale(1)})),r.forEach((function(t){i.SVGSpots[t].animate(500).scale(2).fill(h["default"][i.idKeys.length%h["default"].length]).animate(500).scale(1)})),i.idKeys.push(r.concat.apply(r,o))):i.$message({type:"warning",message:"".concat(m.map((function(t,e){return"Block"+(e+1)})).join(", ")," 之间禁止合并")})}f>0&&u>0&&0===l&&X(r)}}},X=function(t){var e;(e=i.junctions).push.apply(e,Object(s["a"])(t)),i.junctions=Array.from(new Set(i.junctions)),t.forEach((function(t){i.SVGSpots[t].fill("#FFFFFF").stroke({width:2,color:"#6CA6CD"}).animate(500).scale(2).animate(500).scale(1)}))},N=function(){A=[],G.plot(A),R.plot([0,0,0,0]),V.fill("transparent")},M=function(t){N(),x.attr({cursor:"default"}),A=[];var e=t.pageX-w,n=t.pageY-j,i=(e+k.ORIGINX)/k.SCALE,a=(k.ORIGINY-n)/k.SCALE,o=t.wheelDelta?t.wheelDelta/30:2*-t.detail;o=o>0?10:-10,k.SCALE+=o,k.SCALE<10&&(k.SCALE=10),Y();var s=i*k.SCALE-k.ORIGINX,r=k.ORIGINY-a*k.SCALE;console.log(e,n,s,r),w-=s-e,j-=r-n,C.move(w,j)},B=function(){I.forEach((function(t){var e=new u["SVGLine"](t),n="M "+e.sX+" "+e.sY+"L "+(e.sX+e.eX)/2+" "+(e.sY+e.eY)/2+" L "+e.eX+" "+e.eY;L[e.id]=C.path(n).stroke({width:3,color:"#5B5B5B",opacity:.5}),L[e.id].marker("mid",6,6,(function(t){t.path("M-2 1 L-2 5 L4 3 L-2 1").fill("#8B7B8B")}))})),b.forEach((function(t){var e=new f["SVGSpot"](t),n=C.text(e.code+" (".concat(e.id,") ")).font({fill:"#8F8F8F",size:10});n.move(e.x-n.length()/2,e.y-30),_[e.id]=n,m["SHAPE"][e.type]?i.SVGSpots[e.id]=C.polygon(m["SHAPE"][e.type]).fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}).move(e.x-5,e.y-5):i.SVGSpots[e.id]=C.circle(10).fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}).move(e.x-5,e.y-5),n.off(),n.on("mouseover",(function(){n.animate(300).attr({"font-size":14})})).on("mouseout",(function(){n.animate(300).attr({"font-size":10})}))}))},i=e,i.group.clear(),i.SVGSpots=void 0,i.spots=void 0,i.junctions=[],i.idKeys=[],i.affectsIds=[],n.next=15,Object(y["b"])({mapId:t});case 15:a=n.sent,o=a["data"],r=o.Edge,c=o.Vertex,v=o.topologyMap,b=c.map((function(t){return t["vertexPo"]})),i.spots=b,S={},b.forEach((function(t){S[t["code"]]=t})),I=r.map((function(t){var e=S[t["edgePo"]["source"]],n=S[t["edgePo"]["target"]];return{id:t["edgePo"]["id"],weight:1,startX:e["x"],startY:e["y"],endX:n["x"],endY:n["y"]}})),k=new l["MapInstance"](20,v.originX,v.originY,v.weight,v.height,b,I),x=i.draw,C=i.group,w=0,j=k.HEIGHT,C.move(w,j),E=0,O=0,F=!1,A=[],G=C.polyline(A).fill("none").stroke({color:"#f06",width:2,linecap:"round",linejoin:"round",dasharray:"5,5"}),R=C.line([0,0,0,0]).stroke({width:1,color:"#f06",dasharray:"5,5"}),V=C.circle(6).fill("transparent"),i.SVGSpots={},_={},L={},m["SHAPE"].forEach((function(t,e){x.polygon(t).fill("#6CA6CD").stroke({width:2,color:"#FFFFFF"}).move(70*e,20).scale(1.2);var n=x.text(m["SHAPENAME"][e]).font({fill:"#8F8F8F",size:12});n.move(70*e+n.length()/2,20)})),B(),x.off(),x.on("mousedown",(function(t){if(E=t.pageX,O=t.pageY,2===t.button&&(F=!0,x.attr({cursor:"move"})),0===t.button){if(1===e.status)if(x.attr({cursor:"crosshair"}),0===A.length&&V.move(E-w-3,O-j-3).fill("#f06"),A.push([E-w,O-j]),A.length>1)if(Math.abs(A[0][0]+w-E)<10&&Math.abs(A[0][1]+j-O)<10){A[A.length-1]=A[0];var n=Object(d["default"])(A.map((function(t){return[(t[0]+k.ORIGINX)/k.SCALE,(k.ORIGINY-t[1])/k.SCALE]})));K(n),N()}else G.plot(A);else G.plot(A);2===e.status&&(e.rectEnable=!0,e.gx=t.pageX,e.gy=t.pageY)}})),x.on("mouseup",(function(t){if(2===t.button&&(x.attr({cursor:"default"}),F=!1),0===t.button&&2===e.status&&e.rectEnable){x.attr({cursor:"default"}),e.rectEnable=!1,e.rectGroup&&e.rectGroup.remove(),A=[[e.gx-w,e.gy-j],[t.pageX-w,e.gy-j],[t.pageX-w,t.pageY-j],[e.gx-w,t.pageY-j]];var n=Object(d["default"])(A.map((function(t){return[(t[0]+k.ORIGINX)/k.SCALE,(k.ORIGINY-t[1])/k.SCALE]})));K(n),N()}})),x.on("mousemove",(function(t){if(F)w+=t.pageX-E,j+=t.pageY-O,E=t.pageX,O=t.pageY,C.move(w,j);else{if(1===e.status){var n=t.pageX,i=t.pageY,a=A.length-1;a>=0&&R.plot(A[a][0],A[a][1],n-w,i-j)}if(2===e.status&&e.rectEnable){var o;e.rectGroup&&e.rectGroup.remove(),e.rectGroup=e.draw.group();var s=t.pageX-e.gx,r=t.pageY-e.gy;o=s<0&&r<0?e.rectGroup.rect(Math.abs(s),Math.abs(r)).move(s,r):s<0&&r>0?e.rectGroup.rect(Math.abs(s),Math.abs(r)).move(s,0):s>0&&r<0?e.rectGroup.rect(Math.abs(s),Math.abs(r)).move(0,r):e.rectGroup.rect(Math.abs(s),Math.abs(r)).move(0,0),o=e.rectGroup.move(e.gx,e.gy),o.fill("rgba(0,0,0,.05)").stroke({width:1,color:"#f06",dasharray:"5,5"})}}})),x.on("mouseleave",(function(){F=!1})),x.on("mousewheel",M),x.on("DOMMouseScroll",M),document.addEventListener("keydown",(function(t){(27===t.keyCode||"ESCAPE"===t.key.toUpperCase())&&A.length>0&&N()}));case 46:case"end":return n.stop()}}),n)})))()}},mounted:function(){this.draw=c()("map-scene").size(window.innerWidth,window.innerHeight),this.group=this.draw.group()}},x=k,C=(n("ed27"),n("4ac2")),w=Object(C["a"])(x,i,a,!1,null,"269d5468",null);e["default"]=w.exports},"3daf":function(t,e,n){"use strict";n.r(e);var i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("Topo")],1)},a=[],o=n("39bc"),s={name:"trafficEditor",components:{Topo:o["default"]},data:function(){return{mode:void 0}},created:function(){this.mode=this.$route.query.mode},mounted:function(){}},r=s,c=n("4ac2"),l=Object(c["a"])(r,i,a,!1,null,null,null);e["default"]=l.exports},"45c3":function(t,e,n){"use strict";n.r(e),n.d(e,"MapInstance",(function(){return a}));var i=n("78e0"),a=function t(e,n,a,o,s,r,c){if(Object(i["a"])(this,t),t.instance)return t.instance;this.SCALE=e,this.ORIGINX=n*e,this.ORIGINY=a*e,this.WIDTH=o*e,this.HEIGHT=s*e,this.spots=r,this.lines=c,t.instance=this}},"477e":function(t,e,n){"use strict";n.r(e),n.d(e,"default",(function(){return i}));n("7d86"),n("b12c");function i(t,e){var n,i,a=e.flat(1),o=a.findIndex((function(e){return e===t})),s=0;o++;for(var r=0;r<e.length;r++)if(s+=e[r].length,o<=s){n=r,i=e[r].length-(s-o)-1;break}return[n,i]}},"4f33":function(t,e,n){"use strict";function i(t){return JSON.parse(JSON.stringify(t))}n.r(e),n.d(e,"default",(function(){return i}))},"6e83":function(t,e,n){},7661:function(t,e,n){"use strict";n.d(e,"c",(function(){return a})),n.d(e,"d",(function(){return o})),n.d(e,"a",(function(){return s})),n.d(e,"b",(function(){return r}));var i=n("b775");function a(t){return i["a"].get("/map/mapList",t)}function o(t){return i["a"].post("/map/updateMap",t)}function s(t){return i["a"].post("/map/delete/"+t)}function r(t){return i["a"].get("/map/getMapDetailById",t)}},"7cf8":function(t,e,n){"use strict";n.d(e,"c",(function(){return a})),n.d(e,"d",(function(){return o})),n.d(e,"b",(function(){return s})),n.d(e,"a",(function(){return r})),n.d(e,"e",(function(){return c}));var i=n("b775");function a(t){return i["a"].get("/amr/onlineAmr",t)}function o(t){return i["a"].get("/amr/getOnlineAmrById",t)}function s(){return i["a"].post("/area/monitor")}function r(t){return i["a"].get("/amr/getAmrTaskById",t)}function c(t){return i["a"].post("/amr/taskCommand/pause/"+t.id)}},"7d86":function(t,e,n){"use strict";var i=n("e450"),a=n("918fa"),o=n("eb35"),s=n("a4fc"),r=n("599d"),c=n("9f0d");i({target:"Array",proto:!0},{flat:function(){var t=arguments.length?arguments[0]:void 0,e=o(this),n=s(e.length),i=c(e,0);return i.length=a(i,e,e,n,0,void 0===t?1:r(t)),i}})},"918fa":function(t,e,n){"use strict";var i=n("99f6"),a=n("a4fc"),o=n("14f4"),s=function(t,e,n,r,c,l,u,f){var d,p=c,h=0,m=!!u&&o(u,f,3);while(h<r){if(h in n){if(d=m?m(n[h],h,e):n[h],l>0&&i(d))p=s(t,e,d,a(d.length),p,l-1)-1;else{if(p>=9007199254740991)throw TypeError("Exceed the acceptable array length");t[p]=d}p++}h++}return p};t.exports=s},b12c:function(t,e,n){"use strict";var i=n("e450"),a=n("a3e7").findIndex,o=n("3286"),s="findIndex",r=!0;s in[]&&Array(1)[s]((function(){r=!1})),i({target:"Array",proto:!0,forced:r},{findIndex:function(t){return a(this,t,arguments.length>1?arguments[1]:void 0)}}),o(s)},bb32:function(t,e,n){"use strict";n.r(e);var i=["#FF8C00","#FF6EB4","#C71585","#FF3030","#CD661D","#9F79EE","#B22222","#9A32CD","#8B4513","#8B0000","#836FFF","#7D26CD","#76EEC6","#8B5F65","#3CB371","#00B2EE"];e["default"]=i},dd06:function(t,e,n){"use strict";function i(t,e){for(var n=t[0],i=t[1],a=!1,o=0,s=e.length-1;o<e.length;s=o++){var r=e[o][0],c=e[o][1],l=e[s][0],u=e[s][1],f=c>i!=u>i&&n<(l-r)*(i-c)/(u-c)+r;f&&(a=!a)}return a}n.r(e),n.d(e,"default",(function(){return i}))},e3e9:function(t,e,n){"use strict";n.r(e),n.d(e,"SHAPE",(function(){return i})),n.d(e,"SHAPENAME",(function(){return a}));var i=["","","-5,5 3,5 3,3 5,3 5,-3 3,-3 3,-5 -5,-5 -5,5","-5,-5 5,-5 5,0 3,5 -3,5 -5,0 -5,-5","-3,-5 3,-5 3,1 5,1 5,5 -5,5 -5,1 -3,1 -3,-5","-3,5 3,5 3,2 5,2 5,-2 3,-2 3,-5 -3,-5 -3,-2 -5,-2 -5,2 -3,2 -3,5"],a=["","","充电桩","休息点","码头点","辊筒点"]},e94b:function(t,e,n){"use strict";n.r(e),n.d(e,"SVGLine",(function(){return l}));var i=n("78e0"),a=n("83a7"),o=n("4453"),s=n("8595"),r=n("46d3"),c=n("45c3"),l=function(t){Object(o["a"])(n,t);var e=Object(s["a"])(n);function n(t){var o,s;Object(i["a"])(this,n);var c=(o=s=e.call(this),Object(r["a"])(Object(a["a"])(s),"id",void 0),Object(r["a"])(Object(a["a"])(s),"sX",void 0),Object(r["a"])(Object(a["a"])(s),"sY",void 0),Object(r["a"])(Object(a["a"])(s),"eX",void 0),Object(r["a"])(Object(a["a"])(s),"eY",void 0),Object(r["a"])(Object(a["a"])(s),"weight",void 0),o);return s.sX=t.startX*c.SCALE-c.ORIGINX,s.sY=c.ORIGINY-t.startY*c.SCALE,s.eX=t.endX*c.SCALE-c.ORIGINX,s.eY=c.ORIGINY-t.endY*c.SCALE,s.id=t.id,s.weight=t.weight,s}return n}(c["MapInstance"])},ed27:function(t,e,n){"use strict";n("6e83")}}]);
//# sourceMappingURL=chunk-2784d781.d67345ce.js.map