(function(e){function o(o){for(var t,a,l=o[0],r=o[1],d=o[2],u=0,v=[];u<l.length;u++)a=l[u],Object.prototype.hasOwnProperty.call(n,a)&&n[a]&&v.push(n[a][0]),n[a]=0;for(t in r)Object.prototype.hasOwnProperty.call(r,t)&&(e[t]=r[t]);s&&s(o);while(v.length)v.shift()();return c.push.apply(c,d||[]),i()}function i(){for(var e,o=0;o<c.length;o++){for(var i=c[o],t=!0,l=1;l<i.length;l++){var r=i[l];0!==n[r]&&(t=!1)}t&&(c.splice(o--,1),e=a(a.s=i[0]))}return e}var t={},n={app:0},c=[];function a(o){if(t[o])return t[o].exports;var i=t[o]={i:o,l:!1,exports:{}};return e[o].call(i.exports,i,i.exports,a),i.l=!0,i.exports}a.m=e,a.c=t,a.d=function(e,o,i){a.o(e,o)||Object.defineProperty(e,o,{enumerable:!0,get:i})},a.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},a.t=function(e,o){if(1&o&&(e=a(e)),8&o)return e;if(4&o&&"object"===typeof e&&e&&e.__esModule)return e;var i=Object.create(null);if(a.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:e}),2&o&&"string"!=typeof e)for(var t in e)a.d(i,t,function(o){return e[o]}.bind(null,t));return i},a.n=function(e){var o=e&&e.__esModule?function(){return e["default"]}:function(){return e};return a.d(o,"a",o),o},a.o=function(e,o){return Object.prototype.hasOwnProperty.call(e,o)},a.p="";var l=window["webpackJsonp"]=window["webpackJsonp"]||[],r=l.push.bind(l);l.push=o,l=l.slice();for(var d=0;d<l.length;d++)o(l[d]);var s=r;c.push([0,"chunk-vendors"]),i()})({0:function(e,o,i){e.exports=i("56d7")},"09a1":function(e,o,i){"use strict";i("8cff")},"56d7":function(e,o,i){"use strict";i.r(o);var t=i("7a23");const n=Object(t["d"])("link",{href:"https://fonts.googleapis.com/icon?family=Material+Icons",rel:"stylesheet"},null,-1),c=Object(t["d"])("meta",{name:"viewport",content:"width=device-width, initial-scale=1.0"},null,-1),a=Object(t["d"])("audio",{id:"audio_on",src:"mic_click_on.ogg"},null,-1),l=Object(t["d"])("audio",{id:"audio_off",src:"mic_click_off.ogg"},null,-1),r={class:"flex"},d=Object(t["d"])("i",{class:"material-icons icon",style:{"font-size":"15px"}},"phone_iphone",-1),s=Object(t["d"])("i",{class:"material-icons icon",style:{"font-size":"15px"}},"headset_mic",-1),u=Object(t["d"])("svg",{xmlns:"http://www.w3.org/2000/svg",class:"icon",id:"micro",fill:"white",viewBox:"0 0 24 24"},[Object(t["d"])("path",{d:"M12,16c2.206,0,4-1.794,4-4V6c0-2.217-1.785-4.021-3.979-4.021c-0.069,0-0.14,0.009-0.209,0.025C9.693,2.104,8,3.857,8,6v6 C8,14.206,9.794,16,12,16z"}),Object(t["d"])("path",{d:"M11,19.931V22h2v-2.069c3.939-0.495,7-3.858,7-7.931h-2c0,3.309-2.691,6-6,6s-6-2.691-6-6H4 C4,16.072,7.061,19.436,11,19.931z"})],-1);function v(e,o,i,v,f,p){return Object(t["e"])(),Object(t["b"])("div",null,[n,c,a,l,Object(t["d"])("div",r,[0!==v.voice.callInfo?(Object(t["e"])(),Object(t["b"])("div",{key:0,id:"phone",class:["item",{talking:0!==v.voice.callInfo&&v.voice.talking}],style:{background:v.voice.colorVar}},[d],6)):Object(t["c"])("",!0),v.voice.radioEnabled&&0!==v.voice.radioChannel?(Object(t["e"])(),Object(t["b"])("div",{key:1,style:{background:v.voice.colorVar},id:"radio",class:["item",{talking:v.voice.usingRadio}]},[s],6)):Object(t["c"])("",!0),Object(t["d"])("div",{class:["item",{talking:v.voice.talking}],style:{background:v.voice.colorVar},id:"mic"},[u],6)])])}var f={name:"App",setup(){const e=Object(t["f"])({voiceModes:[],voiceMode:0,radioChannel:0,radioEnabled:!1,usingRadio:!1,callInfo:0,talking:!1,vozui:!1,colorVar:""});let o=!1;return window.addEventListener("message",(function(i){const t=i.data;if(void 0==t.vozui?e.vozui=!0:e.vozui=t.vozui,void 0!=t.colorVar&&(e.colorVar=t.colorVar),void 0!==t.voiceModes&&(e.voiceModes=JSON.parse(t.voiceModes)),void 0!==t.voiceMode&&(e.voiceMode=t.voiceMode),void 0!==t.radioChannel&&(e.radioChannel=t.radioChannel),void 0!==t.radioEnabled&&(e.radioEnabled=t.radioEnabled),void 0!==t.callInfo&&(e.callInfo=t.callInfo),t.usingRadio!==e.usingRadio&&(o=!0,e.usingRadio=t.usingRadio,setTimeout((function(){o=!1}),100)),void 0===t.talking||e.usingRadio||o||(e.talking=t.talking),t.talking||(e.talking_mode=e.voiceModes[e.voiceMode][1]),t.sound&&e.radioEnabled){let e=document.getElementById(t.sound);e.load(),e.volume=t.volume,e.play().catch(e=>{})}"SUSURRAR"==e.voiceModes[e.voiceMode][1]?document.getElementById("micro").setAttribute("fill","yellow"):"GRITAR"==e.voiceModes[e.voiceMode][1]?document.getElementById("micro").setAttribute("fill","RED"):"NORMAL"==e.voiceModes[e.voiceMode][1]&&document.getElementById("micro").setAttribute("fill","white")})),{voice:e}}};i("09a1");f.render=v;var p=f;Object(t["a"])(p).mount("#app")},"8cff":function(e,o,i){}});