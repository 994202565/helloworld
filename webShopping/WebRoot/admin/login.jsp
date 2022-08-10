<%@ page language="java" import="javax.servlet.http.*" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>管理员登陆</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.2800.1611" name=GENERATOR>
<LINK href="images/css1.css" type=text/css rel=stylesheet>
<LINK href="images/newhead.css" type=text/css rel=stylesheet>
<STYLE type=text/css>BODY {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND: url(images/bg1.jpg) #cadff0 no-repeat; PADDING-TOP: 0px
}
LI {
	LINE-HEIGHT: 30px; LIST-STYLE-TYPE: none; MARGIN-TOP: 5px; COLOR: #585858; FONT-SIZE: 12px; LIST-STYLE-IMAGE: none
}
#logo {
	MARGIN: 100px auto 15px; WIDTH: 282px; HEIGHT: 40px
}
#in {
	MARGIN: 0px auto; WIDTH: 633px; BACKGROUND: url(images/bg1.png) no-repeat; HEIGHT: 282px
}
#left {
	MARGIN: 80px 0px 0px 77px; WIDTH: 132px; DISPLAY: inline; BACKGROUND: url(img/soft.gif) no-repeat; FLOAT: left; HEIGHT: 143px
}
#right {
	FLOAT: left
}
#right UL {
	MARGIN-TOP: 90px; _margin-top: 80px
}
#right LI {
	HEIGHT: 32px
}
#right SPAN {
	WIDTH: 60px; DISPLAY: block; FLOAT: left
}
.button {
	Z-INDEX: 10; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 120px; BACKGROUND: url(images/inpu_ok.gif) no-repeat; HEIGHT: 30px; COLOR: #ffffff; BORDER-TOP: medium none; BORDER-RIGHT: medium none; _width: 120px
}
#footer {
	POSITION: absolute; TEXT-ALIGN: right; LINE-HEIGHT: 30px; WIDTH: 100%; BOTTOM: 0px; FONT-FAMILY: Arial, Helvetica, sans-serif; HEIGHT: 30px; COLOR: #608caf; FONT-SIZE: 11px
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19403">
  <BODY>
  
  <script>
function check()
{	var name=document.getElementById("username").value;
	var password=document.getElementById("password").value;
if(name==null||name==''){
     alert("用户名不能为空");
 	return false;
     }
    if(password==null||password==''){
     alert("密码不能为空");
 	return false;
    }
}
    </script>
    
<DIV id=logo></DIV>
<DIV id=in>
<DIV id=left></DIV>
<DIV id=right>

<FORM name=form action=AdminAction!login.action method=post onsubmit="return check();">
<UL>
  <LI><SPAN>账 &nbsp;&nbsp;&nbsp;号：</SPAN> <INPUT style="WIDTH: 192px" onfocus="" type=text 
  name="admin.username" id="username"> </LI>
  <LI><SPAN>密 码：</SPAN> <INPUT style="WIDTH: 192px" 
  type=password name="admin.password"  id="password"> </LI>
  <LI><INPUT class=button value=登陆 type=submit name=submit> 
</LI></UL></FORM></DIV></DIV>		
<div class="footer" align="center"><br />&copy;&nbsp;2014-2018&nbsp;|&nbsp;版权所有 :郑州大学 王世远 		
					<div align=center>
						E-mail：945570098@zzu.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豫ICP备05002440号
</div>
  
  </HTML>
