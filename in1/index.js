//添加事件
addEvent(window,'load',function(){
	var box=document.getElementById('box');
	addEvent(box,'click',toBlue);
	
});
 
 function toBlue(evt){
	 var that=getTarget(evt);
	 that.className='blue';
	 removeEvent(that,'click',toBlue);
	 addEvent(that,'click',toRed);
 }


function toRed(evt){
	var that=getTarget(evt);
	that.className='red';
	removeEvent(that,'click',toRed);
	addEvent(that,'click',toBlue);
}

//鼠标从哪里移入移出获取DOM对象
addEvent(window,'load',function(){
	var p=document.getElementById('p');
	addEvent(p,'mouseover',function(evt){
		console.log(getMouseDom(evt))
	});
	addEvent(p,'mouseout',function(evt){
		console.log(getMouseDom(evt));
	});
})

//事件阻止

addEvent(window,'load',function(){
	var a=document.getElementsByTagName('a')[0];
	addEvent(a,'click',function(evt){
		a.style.color='red';//不会阻止掉
		prDef(evt);//阻止默认的行为
		a.style.fontSize=28+'px';//不会阻止掉
	})
	
})


//鼠标轮滚动事件
addEvent(window,'load',function(){
	addEvent(document,'mouseWheel',function(evt){//火狐
		alert(wd(evt));
	})
	
	addEvent(document,'DOMMouseScroll',function(evt){
		alert(wd(evt));
	})
})


//测试
addEvent(window,'load',function(){
	
	(function ain(){

		document.onclick=function(){
		    var	p=document.getElementById('p');
			p.style.border='solid'+' '+'red'+' '+3+'px';
			(function inp(){
			var inp=document.getElementsByTagName('input')[0];
			inp.style.color='blue';
			inp.style.fontSize=20+'px';
		})();
		}
		
	})()
})





