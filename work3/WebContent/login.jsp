<%@ page language="java" contentType="text/html; charset=utf-8" 

    pageEncoding="utf-8"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd"> 

<html> 		

<head> 

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
    <link type = "text/css" rel="stylesheet" href="css/login.css"/>
    </head>
<title>江南皮革厂中华田园犬管理门户</title> 
<script language="javascript" src="JS/AjaxRequest.js"></script>

<script language="javascript">

function myClose(divID){
	divID.style.display='none';			//设置id为login的层隐藏
     //设置id为notClickDiv的层隐藏
	 document.getElementById("notClickDiv").style.display='none';	
}
function Myopen(divID){ 								//根据传递的参数确定显示的层
     var notClickDiv=document.getElementById("notClickDiv");	//获取id为notClickDiv的层
	 notClickDiv.style.display='block';						//设置层显示
	  document.getElementById("notClickDiv").style.width=document.body.clientWidth;
	  document.getElementById("notClickDiv").style.height=document.body.clientHeight;
      document.getElementById(divID).style.display='block';							//设置由divID所指定的层显示	 
     document.getElementById(divID).style.left=(document.body.clientWidth-240)/2;		//设置由divID所指定的层的左边距
      document.getElementById(divID).style.top=(document.body.clientHeight-139)/2;		//设置由divID所指定的层的顶边框
}
function loginSubmit(form2){
	if(form2.username.value==""){		//验证用户名是否为空
		alert("请输入用户名！");form2.username.focus();return false;
	}
	if(form2.pwd.value==""){		//验证密码是否为空
		alert("请输入密码！");form2.pwd.focus();return false;
	}	
	var param="username="+form2.username.value+"&pwd="+form2.pwd.value; 	//将登录信息连接成字符串，作为发送请求的参数
	var loader=new net.AjaxRequest("UserServlet?action=login",deal_login,onerror,"POST",encodeURI(param));
}
function onerror(){
	alert("您的操作有误");
}
function deal_login(){
	/*****************显示提示信息******************************/
	var h=this.req.responseText;
	h=h.replace(/\s/g,"");	//去除字符串中的Unicode空白
	alert(h);
	if(h=="登录成功！"){
		window.location.href="DiaryServlet?action=listAllDiary";
	}else{
		form2.username.value="";//清空用户名文本框 
		form2.pwd.value="";//清空密码文本框
		form2.username.focus();//让用户名文本框获得焦点
	}
	
}
</script>
<body>
		<form style="margin:auto;" action="login.do" method="POST">
    <div id="login">   
        <h1>江南皮革厂<br>Login</h1>      
            <input type="text" required="required" placeholder="用户名" name="username" id="username"></input>   
            <input type="password" required="required" placeholder="密码" name="password"></input>   
            <button class="but" type="submit">登录</button>  
        </div> 
</form>
</body> 
  
</html> 