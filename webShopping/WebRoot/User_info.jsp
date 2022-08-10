<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//Da XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Da/xhtml1-transitional.da">
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


.dd-inner {
	margin-top: 24px;
	height: 466px;
	background: #7A6E6E;
	width: 190px;
}

.d-inner {
	font-size: 20px;
	text-align: center;
	color: red;
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





nav ul li ul {
	display: none;
}

nav ul li:hover ul {
	display: block;
}
</style>
</head>
<body>
	<div class="advertisement">
		<img src="img/.png" />
	</div>
	<header id="header">
	<ul class="header-right">

		<c:if test="${!empty sessionScope.user.username}">

			<nav>
			<ul>
				<li><a href="#">欢迎：${sessionScope.user.username}</a>
					<ul>
						<li><a
							href="OrderFormAction!findOrderFormByUserName.action?orderForm.username=${sessionScope.user.username}">我的订单</a></li>
						<li><a href="Update_pw.jsp">修改密码</a></li>
						<li><a href="User_info.jsp">个人信息</a></li>
						<li><a href="UserAction!logout.action"
							onclick="return confirm('确定要退出吗?')">退出系统</a></li>
					</ul></li>


			</ul>
			</nav>
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

			<div class="nav">

				<ul class="clearfix">

					<li><a href="GoIndexAction.action">首页</a></li>

					<li><a href="showCar.jsp">购物车</a></li>
					<c:if test="${empty sessionScope.user.username}">
						<li><a href="Wang_login.html">用户登录</a></li>
						<li><a href="Wang_register.jsp">用户注册 </a></li>
					</c:if>
					<li><a href="admin/Wang_Admin_login.html">后台管理</a></li>
					<li><a href="wang.register.jsp">test管理</a></li>

				</ul>

			</div>
		</div>

	</div>

	<div class="clear"></div>
	<div class="focus">
		<div>
			导航: <span><a href="GoIndexAction.action">首页</a></span>

		</div>
	</div>
	
<div align="center">
			<a colspan=3 bgcolor="#c0c0c0" align="center"><h3>用户信息更新</h3>

	</div>
	
	<div class="contact" >

		<form name="myform" method="post" action="UserAction!updateUser.action" onsubmit="return check();" >

			<ul>

				<li>

					<label>用户名：</label>
     <input type="hidden" name="user.userId" value="${sessionScope.user.userId}"/>

					<input type="text" type="text" name="user.username" value="${sessionScope.user.username}" readonly="readonly"placeholder="请输入用户名"  onblur="checkna()" required/><span class="tips" id="divname">长度4~12个字符</span>
 <input type="hidden" name="user.password" value="${sessionScope.user.password}"/>
				</li>
						<li>

					<label>姓名：</label>

					<input type="text"  name="user.name" value="${sessionScope.user.name }" placeholder="请输入姓名"  onblur="checkna()" required/><span class="tips" id="divname">长度4~8个字符</span>

				</li>
						<li>
					<label>姓别：</label>

 <input  type="radio" name="user.sex" value="男" checked="checked"/>男
        <input  type="radio" name="user.sex" value="女"/>女</td>
				</li>
				<li>

					<label>电话：</label>

					<input type="text"  type="text" name="user.phone" value="${sessionScope.user.phone}"  placeholder="请输入用户名"  onblur="checkna()" required/><span class="tips" id="divname">长度8~11个字符</span>

				</li>
						<li>

					<label>邮编：</label>

					<input type="text" type="text" name="user.post" value="${sessionScope.user.post}"  placeholder="请输入用户名"  onblur="checkna()" required/><span class="tips" id="divname">长度3~6个字符</span>

				</li>
	<li>

					<label>收货地址：</label>

					<input type="text" type="text" name="user.address" value="${sessionScope.user.address}"  placeholder="请输入收货地址"  onblur="checkna()" required/><span class="tips" id="divname">长度10~30个字符</span>

				</li>
				
				<li>

					<label>电子邮箱：</label>

					<input id="email" type="text"name="user.email"  value="${sessionScope.user.email}"  placeholder="请输入你的邮箱" onblur="checkmail()" required/><span class="tips" id="divmail"></span>

				</li>

			</ul>

			<b class="btn">
			<input type="submit" name="submit1" value="提交" /> <input
						type="button" name="Submit2"
						onclick="javascript:history.back(-1);" value="返回" /><br>
				
				
					
</b>
		</form>

	</div>



	<div align="center">
		<h4>Copyright 2014-2018 郑州大学</h4>
		</br>
		<h4>Email:WangShiYuan123.@zzu.com</h4>
	</div>

	</div>

	<section>
	<div id="red">
		<span></span>
	</div>
	<div id="green">
		<span></span>
	</div>
	<div id="purple">
		<span></span>
	</div>
	<div id="black">
		<span></span>
	</div>
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
	<script>
		function check() {

			var username = document.getElementById("username").value;

			var email = document.getElementById("email").val;
			var address = document.getElementById("address").value;
			var name = document.getElementById("name").value;
			var phone = document.getElementById("phone").value;
			var post = document.getElementById("post").value;

			if (address == null || address == '') {
				alert("地址不能为空！");
				return false;
			}
			if (name == null || name == '') {
				alert("名字不能为空！");
				return false;
			}
			if (phone == null || phone == '') {
				alert("电话不能为空！");
				return false;
			}
			if (post == null || post == '') {
				alert("邮编不能为空！");
				return false;
			}

			if (email
					.match(/[\w-]+@{1}[\w-]+\.{1}\w{2,4}(\.{0,1}\w{2}){0,1}/ig) != email.value) {
				alert("电子邮箱格式不正确！");
				return false;
			}

		}
	</script>
	<script>
		function fun(t) {
			t.style.display = '';
		}
		function show(t) {
			t.style.display = 'none';
		}
	</script>
	
  <style type="text/css">

		body{

			font:14px/28px "微软雅黑";

		}

		.contact *:focus{outline :none;}

		.contact{

			width: 700px;

			height: auto;

			background: #f6f6f6;

			margin: 40px auto;

			padding: 10px;

		}

		.contact ul {

			width: 650px;

			margin: 0 auto;

		}

		.contact ul li{

			border-bottom: 1px solid #dfdfdf;

			list-style: none;

			padding: 12px;

		}

		.contact ul li label {

			width: 120px;

			display: inline-block;

			float: left;

		}

		.contact ul li input[type=text],.contact ul li input[type=password]{

			width: 220px;

			height: 25px;

			border :1px solid #aaa;

			padding: 3px 8px;

			border-radius: 5px;

		}

		.contact ul li input:focus{

			border-color: #c00;

			

		}

		.contact ul li input[type=text]{

			transition: padding .25s;

			-o-transition: padding  .25s;

			-moz-transition: padding  .25s;

			-webkit-transition: padding  .25s;

		}

		.contact ul li input[type=password]{

			transition: padding  .25s;

			-o-transition: padding  .25s;

			-moz-transition: padding  .25s;

			-webkit-transition: padding  .25s;

		}

		.contact ul li input:focus{

			padding-right: 70px;

		}

		.btn{

			position: relative;

			left: 300px;

		}

		.tips{

			color: rgba(0, 0, 0, 0.5);

			padding-left: 10px;

		}

		.tips_true,.tips_false{

			padding-left: 10px;

		}

		.tips_true{

			color: green;

		}

		.tips_false{

			color: red;

		}

  </style>

	
</body>
</html>
