<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>校园闲置物品交易平台</title>
		<link rel="stylesheet" type="text/css" href="css/1.css">

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/reveal.css">
		
		<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="js/layer/layer.js"></script>
		<script src="js/1.js"></script>
		<script type="text/javascript" src="js/jquery.reveal.js"></script>
<link rel="stylesheet" href="css/jd.css">

		<style type="text/css">
		
		
#lunbo {
    clear: both;
    position: absolute;
    top: 40px;
    left: 205px;
    width: 740px;
}
.dd-inner {
margin-top:24px;
    height: 466px;
    background: ;
    width: 190px;

}
.d-inner {
   
    font-size:20px;
text-align:center;

}

#header {
    clear: both;
    width: 100%;
    height: 40px;
    line-height: 100px;
    position:relative;
    opacity: 1;
}


* {

	margin: 0;
	padding: 0;
}

nav {
	height: 30px;
	width: 200px;
	margin: 0 auto;
}

nav ul li {
	list-style-type: none;
	float: right
}

nav ul li a {
	text-decoration: none;
	display: block;
	width: 130px;
	line-height: 35px;
	text-align: center;
	color: BLUE;
	font-fimily: 微软雅黑;
}

nav ul li ul li {
	float: none
}

nav ul li ul li a {
	color: black
}

nav ul li ul {
	display: none;
}

nav ul li:hover ul {
	display: block;
}
</style>
</head>
<body>
	<s:if test="#request.listCommodityClasses">
		<div class="advertisement">
			<img src="img/.png" />
		</div>
		<header id="header">
		<ul class="header-right">
			<c:if test="${empty sessionScope.user.username}">
<nav>
			<ul><li>	<a href="#" class="big-link" data-reveal-id="myModal"> 您好，请登录 </a></li></ul></nav>

			</c:if>
			<c:if test="${!empty sessionScope.user.username}">

				<nav>
				<ul>
					<li><a href="#">欢迎：${sessionScope.user.username}</a>
						<ul>
							<li><a
								href="OrderFormAction!findOrderFormByUserName.action?orderForm.username=${sessionScope.user.username}">我的订单</a></li>
							<li><a href="Update_pw.jsp">修改密码</a></li>
							<li><a href="User_info.jsp">个人信息</a></li>
							<li><a href="UserAction!logout.action"onclick="return confirm('确定要退出吗?')">退出系统</a></li>
						</ul></li>


				</ul>
				</nav>
			</c:if>


		</ul>


		</header>

		<div class="w">

			<div class="search">
				<div align="right">
					<form name="searchform"
						action="CommodityAction!findCommodityByName.action" method="post">
						<input class="text" id="commodity.commodityName"
							name="commodity.commodityName"
							onfocus="if(this.value=='请输入您所要查找的商品名称'){this.value='';}"
							onblur="if(this.value==''){this.value='请输入您所要查找的商品名称';}"
							value="请输入您所要查找的商品名称" type="text" /> <input class="button"
							name="搜索" type="submit" value="搜索" />
					</form>
				</div>
			</div>
	
			<div class="menu">
	<div class="all-sort"><h2><a href="">全部商品分类</a></h2></div>
		<div class="nav">

			<ul class="clearfix">

			<li><a href="GoIndexAction.action">首页</a></li>

					<li><a href="Shop_car.jsp">购物车</a></li>
					<c:if test="${empty sessionScope.user.username}">
						<li><a href="Wang_login.html">用户登录</a></li>
						<li><a href="Wang_register.jsp">用户注册 </a></li>
					</c:if>
					<li><a href="admin/Wang_Admin_login.html">后台管理</a></li>
										<li><a href="My_Order.jsp">test管理</a></li>
										<li><a href="Update_pw.jsp">个人信息</a></li>

			</ul>

		</div>
		</div>
			
		</div>
		<div class="clear"></div>
		<div class="focus">
			<div >
				导航: <span><a href="GoIndexAction.action">首页</a></span>

			</div>

			<div class="dd-inner">


			
<!-- 					<h3 style="width:100%;text-align:center">商品分类</h3>
 -->
<div class="d-inner"  >
					<s:iterator value="#request.listCommodityClasses" status="stu"
						id="classes">
						<s:if test="#stu.odd==true">
							<li><s:a
									href="CommodityAction!findCommodityByClass.action?commodityClassId=%{#classes.commodityClassId} ">
									<s:property value="#classes.commodityClassName" />
								</s:a></li>
						</s:if>
						<s:else>
							<li><s:a
									href="CommodityAction!findCommodityByClass.action?commodityClassId=%{#classes.commodityClassId} ">
									<s:property value="#classes.commodityClassName" />
								</s:a></li>
						</s:else>
					</s:iterator>
			</div>
				
</div>	
<div id="lunbo">
						
						<iframe   width=700 height=470 margin-top=100px;
								src="product.jsp"> </iframe>
						

					</div>

				<div align="center">
					<h4>Copyright 2014-2018 郑州大学</h4>
					</br>
					<h4>Email:WangShiYuan123.@zzu.com</h4>
				</div>

			
	</s:if>
	<s:else>
		<s:action name="GoIndexAction" executeResult="true"></s:action>
	</s:else>
	<div id="myModal" class="reveal-modal">

		<form action="UserAction!login.action" name="form" method="post">
			<div>用户登录</div>
			<div align="center">
				<p>
					账号：<input id="username" name="user.username" type="text"
						 />
				</p>
				<p>
					密码：<input id="password"
						name="user.password" type="password" />
				</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;<input name="提交" type="submit" value="登录" /><input
						name="重置" type="reset" value="重置" />
				</p>
				<p >
					&nbsp;&nbsp;&nbsp;<a href="Wang_register.jsp">用户注册</a> &nbsp;<a
						href="findPass.jsp">忘记密码</a>
				</p>

			</div>
		</form>
		<a class="close-reveal-modal">×</a>
	</div>
	</div>
	
<section>
    <div id="red"><span></span></div>
    <div id="green"><span></span></div>
    <div id="purple"><span></span></div>
    <div id="black"><span></span></div>
</section>


<script>
var body = document.body;
var divs = document.getElementsByTagName('div');
var spans = document.getElementsByTagName('span');
var nav = document.querySelector('nav');

divs[0].onclick = function() {
    spans[0].style.display = 'block';
    spans[1].style.display = 'none';
    spans[2].style.display = 'none';
    spans[3].style.display = 'none';
    nav.style.backgroundColor = 'red';
    body.style.backgroundColor = 'pink';
}
divs[1].onclick = function() {
    spans[0].style.display = 'none';
    spans[1].style.display = 'block';
    spans[2].style.display = 'none';
    spans[3].style.display = 'none';
    nav.style.backgroundColor = 'green';
    body.style.backgroundColor = 'greenyellow';
}
divs[2].onclick = function() {
    spans[0].style.display = 'none';
    spans[1].style.display = 'none';
    spans[2].style.display = 'block';
    spans[3].style.display = 'none';
    nav.style.backgroundColor = 'purple';
    body.style.backgroundColor = 'plum';
}
divs[3].onclick = function() {
    spans[0].style.display = 'none';
    spans[1].style.display = 'none';
    spans[2].style.display = 'none';
    spans[3].style.display = 'block';
    nav.style.backgroundColor = 'black';
    body.style.backgroundColor = 'darkgray';
}
</script>
</body>
</html>
