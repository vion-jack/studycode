/*
 	check_submit()函数功能:
 		点击提交按钮判断文本输入框是否为空.如果为空,在当前页面相应的位置分别弹出红色的提示警告!
 * * */	
 		var div1;
 		var div2;
 		var div3;
 		//获取form标签
		var form = document.getElementById("form1");
		/*
		 	由于在每次按提交时都会出现提示,所以为了解决需:
		 		先进行判断,如果已经存在div就删除接下来的那个div
		 * */
	function $(str){
	return(document.getElementById(str));
}
function check_submit(){
		//判断用户名是否填写
	if($("txt_user_name").value==""){	//$函数是document.getElementById()方法的简写
		
		if(div1!=null){
			form.removeChild(div1);
		}
		//在id为txt_user_name的之前创建div1元素标签(先获得txt_user_name的标签)
		var	input1 = document.getElementById("txt_user_name");
		//创建div1
		div1 = document.createElement("div");
		//创建文本
		var text = document.createTextNode("在提交前,请填写用户名!");
		//把文本添加div1到标签下
		div1.appendChild(text);
		
		//把div1添加到input1前
		form.insertBefore(div1,input1);
		return(false);
	}
		//判断密码是否填写
	if($("txt_user_pass").value==""){
		
		if(div2!=null){
			form.removeChild(div2);
		}
		//在id为txt_user_pass的之前创建div2元素标签(先获得txt_user_pass的标签)
		var	input2 = document.getElementById("txt_user_pass");
		//创建div2
		div2 = document.createElement("div");
		//创建文本
		var text = document.createTextNode("在提交前,请填写密码!");
		//把文本添加div2到标签下
		div2.appendChild(text);
		
		//把div2添加到input2前
		form.insertBefore(div2,input2);
		return(false);
	}
		//判断确认密码是否填写
	if($("txt_user_pass_confirm").value==""){
		
		if(div3!=null){
			form.removeChild(div3);
		}
		//在id为txt_user_pass_confirm的之前创建div3元素标签(先获得txt_user_pass_confirm的标签)
		var	input3 = document.getElementById("txt_user_pass_confirm");
		//创建div3
		div3 = document.createElement("div");
		//创建文本
		var text = document.createTextNode("在提交前,请填写确认密码!");
		//把文本添加div2到标签下
		div3.appendChild(text);
		//把div3添加到input3前
		form.insertBefore(div3,input3);
		return(false);
		$("submit_button").disabled=true;
		return(false);
    }
}
	/*
	 
	 * */
	function mover(){
		event.srcElement.focus();
		event.srcElement.select();
	}
	
	function mclick(){
		if(event.srcElement.value=="[请输入用户名]")event.srcElement.value=="";
	}
	function mblur(){
		if(event.srcElement.value=="")event.srcElement.value=="[请输入用户名]";
	}

