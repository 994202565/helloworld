<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<script type="text/javascript" src="js/boxOver.js"></script>
    <link href="css/default.css" rel="stylesheet" type="text/css" />

    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/loaders.css" rel="stylesheet" type="text/css" />

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0"> 
	<title>登录界面</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />
	<!--必要样式-->
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <div class="login" style="height: 600px; width: 400px; ">
	<div id="divId" style="font-size: 20px ;">
</div> 
<form name="myform" method="post" action="UserAction" id="myform" onsubmit="return checkwang();">

	  <div class="login_fields">
	    <div class="login_fields__user">
	      <div class="icon">
	        <img alt="" src="img/user_icon_copy.png">
	      </img></div>
	      <input  id="username" name="user.username" placeholder="用户名" maxlength="16" type="text" autocomplete="off" onclick="fun(msg)" onblur="show(msg)" />
	      <div  id=msg style="color:#ff0000;display:none;">用户名长度为8至15位</div>
<!--  	      <a href="javascript:;" onclick="location = 'UserAction!register.action?user.username='+document.getElementById('username').value;">检测用户名是否存在</a>
 -->	        <div class="validation">
	          <img alt="" src="img/tick.png">
	        </img></div>
	    </div>
	    <div class="login_fields__password">
	      <div class="icon">
	        <img alt="" src="img/lock_icon_copy.png">
	      </img></div>
	      <input id="password"  name="user.password" placeholder="密码" maxlength="16" type="password" autocomplete="off" onclick="fun(msg1)" onblur="show(msg1)" />
	       <div  id=msg1 style="color:#ff0000;display:none;">密码长度为8至15位</div>
	      <div class="validation">
	        <img alt="" src="img/tick.png">
	      </img></div>
	    </div><div class="login_fields__password">
	      <div class="icon">
	        <img alt="" src="img/lock_icon_copy.png">
	      </img></div>
	      <input id="password"  name="user.password" placeholder="重复密码" maxlength="16" type="password" autocomplete="off" onclick="fun(msg2)" onblur="show(msg2)" />
	      <div  id=msg2 style="color:#ff0000;display:none;">两次输入的密码必须相同</div>
	      <div class="validation">
	        <img alt="" src="img/tick.png">
	      </img></div>
	    </div>
	      <div class="login_fields__user">
	      <div class="icon">
	        <img alt="" src="img/user_icon_copy.png">
	      </img></div>
	      <input id="name"name="user.name" placeholder="用户姓名" maxlength="16" type="text" autocomplete="off" onclick="fun(msg3)" onblur="show(msg3)" />
	      <div  id=msg3 style="color:#ff0000;display:none;">输入您的姓名</div>
	        <div class="validation">
	          <img alt="" src="img/tick.png">
	        </img></div>
	    </div>
	      <div class="login_fields__user">
	      <div class="icon">
	        <img alt="" src="img/user_icon_copy.png">
	      </img></div>
	      <input name="user.username" placeholder="性别" type="text" autocomplete="off" />
	       <td> <input  type="radio" name="user.sex" value="男" checked="checked"/>男
        <input  type="radio" name="user.sex" value="女"/>女</td>
	        <div class="validation">
	          <img alt="" src="img/tick.png">
	        </img></div>
	    </div>
	      <div class="login_fields__user">
	      <div class="icon">
	        <img alt="" src="img/user_icon_copy.png">
	      </img></div>
	      <tr>
	      <input id="phone" name="user.phone"  placeholder="电话" maxlength="16" type="text" autocomplete="off" onclick="fun(msg4)" onblur="show(msg4)" />
	              <div  id=msg4 style="color:#ff0000;display:none;">输入您联系电话</div>
	      </tr>
	        <div class="validation">
	          <img alt="" src="img/tick.png">
	        </img></div>
	    </div>
	    <div class="login_fields__password">
	      <div class="icon">
	        <img alt="" src="img/lock_icon_copy.png">
	      </img></div>
	      <input id="post" name="user.post"placeholder="邮编" maxlength="16" type="text" autocomplete="off" onclick="fun(msg7)" onblur="show(msg7)" />
	        <div  id=msg7 style="color:#ff0000;display:none;">输入您的准确邮编</div>
	      <div class="validation">
	        <img alt="" src="img/tick.png">
	      </img></div>
	    </div>
	    <div class="login_fields__user">
	      <div class="icon">
	        <img alt="" src="img/user_icon_copy.png">
	      </img></div>
	      <input id="address"  name="user.address" placeholder="地址" maxlength="16" type="text" autocomplete="off" onclick="fun(msg5)" onblur="show(msg5)" />
	              <div  id=msg5 style="color:#ff0000;display:none;">输入您的准确收货地址</div>
	      
	        <div class="validation">
	          <img alt="" src="img/tick.png">
	        </img></div>
	    </div>
	    <div class="login_fields__user">
	      <div class="icon">
	        <img alt="" src="img/user_icon_copy.png">
	      </img></div>
	      <input id="email" name="user.email" placeholder="电子邮件" maxlength="16" type="text" autocomplete="off" onclick="fun(msg6)" onblur="show(msg6)" />
	              <div  id=msg6 style="color:#ff0000;display:none;">填写如wangshiyuan@zzu.com的地址</div>
	      
	        <div class="validation">
	          <img alt="" src="img/tick.png">
	        </img></div>
	    </div>
	    <div class="login_fields__password">
	      <div class="icon">
	        <img alt="" src="img/key.png">
	      </img></div>
	      <input name="code" placeholder="验证码" maxlength="4" type="text" name="ValidateNum" autocomplete="off">
	      <div class="validation" style="opacity: 1; right: -5px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
	      </div>
	    </input></div>
	    <input type="hidden" name="user.money" value="1000"/>
	    <div class="login_fields__submit">
	      <input type="SUBMIT" value="注册">
	       <input type="reset" value="重置">
	       
	    </input></input></div>
	    
	  </div>
	  </form>
	  <div class="success">
	  </div>
	  
	  <div class="disclaimer">
	  <!-- <div>	               <p>&nbsp;&nbsp;&nbsp;<a href="Wang_register.jsp" style=" color:blue; font-size:20px;">用户注册</a> &nbsp;<a href="findPass.jsp" style=" color:blue; font-size:20px;">找回密码</a></p>
	    </div -->
	    <p>E-mail：945570098@zzu.com</p><br/>
	       <p>2014--2018  郑州大学  王世远</p>
	  </div>
	</div>
	<div class='authent'>
	  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
        </div>
	  <p>认证中...</p>
	</div>
	<script>
function check(){

   var username=document.getElementById("username").value;
   var pass1=document.getElementById("password").value;
   var pass2=document.getElementById("repassword").value;
   var email=document.getElementById("email").val;
   var address=document.getElementById("address").value;
   var name=document.getElementById("name").value;
   var phone=document.getElementById("phone").value;
   var post=document.getElementById("post").value;
   
  if(username.length<6||username.length>15){
    //检查用户名是否在指定的范围之内
    alert("用户名长度必须在6~15位之间！");
	return false;
   }
   if(pass1.length<8||pass1.length>20){
    //检查密码是否在指定的范围之内
    alert("密码长度必须在8~20位之间！");
	return false;
   }
   if(pass1!=pass2){
    
    alert("两次密码输入不同！");
	return false;
   }
   
  if(address==null||address==''){
    alert("地址不能为空！");
	return false;
   }
  if(name==null||name==''){
    alert("名字不能为空！");
	return false;
  }
	if(phone==null||phone==''){
    alert("电话不能为空！");
	return false;
  }
  if(post==null||post==''){
    alert("邮编不能为空！");
	return false;
  }
 
  
  if(email.match(/[\w-]+@{1}[\w-]+\.{1}\w{2,4}(\.{0,1}\w{2}){0,1}/ig)!=email.value)
   { alert("电子邮箱格式不正确！");
	return false;
  }
  
}
</script>

<script>
  function fun(t)
  {
    t.style.display='';
  };
  function show(t)
  {
    t.style.display='none';
    };
 </script> 
	
	
</body>
</html>
