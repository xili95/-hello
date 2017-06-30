//跨浏览器获取目标
function getTarget(evt){
	var e=evt||window.event;
	if(e.target){//W3C获取事件对象的目标
		return e.target;
	}else if(e.srcElement){//IE获取事件对象目标
		return e.srcElement;
	}
}
 
 
 //跨浏览器添加事件
 function addEvent(obj,type,fn){
	 if(obj.addEventListener){//W3C添加事件 false表示冒泡
		 obj.addEventListener(type,fn,false)
	 }else if(obj.attachEvent){//IE添加事件 只有冒泡
		 obj.attachEvent('on'+type,fn)
	 }
 }
 
 
//跨浏览器移出事件
function removeEvent(obj,type,fn){
	if(obj.removeEventListener){//W3C移出事件 false表示冒泡
		obj.removeEventListener(type,fn,false);
	}else if(obj.detachEvent){//IE移出事件 只有冒泡
		obj.detachEvent('on'+type,fn);
	}
}
 
 
 //跨浏览器事件中获取从哪里移入和移出的DOM对象对应mouseover和mouseout事件
 
function getMouseDom(evt){
	 var e=evt||window.event;
	 if(e.srcElement){
		 if(e.type=='mouseover'){//IE获取从哪移入的DOM对象
			 return e.fromElement.tagName;
		 }else if(e.type=='mouseout'){//IE获取从哪移出的DOM对象
			 return e.toElement.tagName;
		 }
	 }else if(e.relatedTarget){//W3C mouseout和mouseover的relatedTarget属性
		 return e.relatedTarget.tagName;
	 }
 }
 
 
 
 //跨浏览器阻止事件
 function prDef(evt){
	 var e=evt||window.evt;
	 if(e.preventDefault){//W3C 
		 e.preventDefault();
	 }else{
		 e.returnValue=false;
	 }
 }
 
 
 
 //鼠标滚轮事件

 function wd(evt){//这个滚轮事件谷歌不支持
	 var e=evt||window.event;
	 if(e.wheelDelta){//上下滚动显示滚动的距离 火狐
		 return e.wheelDelta;
	 }else if(e.detail){//上下滚动显示滚动的距离 非火狐
		 return -e.detail*30;
	 }
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 