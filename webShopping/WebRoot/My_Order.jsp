<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			
table tr:first-child{ color:black;font-weight:bold;} /*第一行标题蓝色背景*/
table{border-top:1pt solid #C1DAD7;border-left:1pt solid #C1DAD7;margin: 0 auto;} 
td{ padding:5px 10px; text-align:center;border-right:1pt solid #C1DAD7;border-bottom:1pt solid #C1DAD7;}
tr:nth-of-type(odd){ background:#c6f9f7} /* odd 标识奇数行，even标识偶数行 */
tr:hover{ background: #E0F0F0;} /*鼠标悬停后表格背景颜色*/

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
			</nav></c:if>
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

					<li><a href="Shop_car.jsp">购物车</a></li>
					<c:if test="${empty sessionScope.user.username}">
						<li><a href="Wang_login.html">用户登录</a></li>
						<li><a href="Wang_register.jsp">用户注册 </a></li>
					</c:if>
					<li><a href="admin/Wang_Admin_login.html">后台管理</a></li>
					<li><a href="My_Order.jsp">test管理</a></li>

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
    <table>
    <tr>
    <td>
    
    </td>
    
    <td>
     <c:if test="${empty sessionScope.user.username}">
    <table>
    
    <tr><td  align=center> <h3>对不起，还未登录，请登录</h3>
    <h3>正在跳转到登录页面，若没有跳转请<a href=Wang_login.html>点击这里！</a></h3>
    </td></tr></table>
   <% response.setHeader("refresh","3;url=Wang_login.html");%> 
    </c:if>
    
    <c:if test="${!empty sessionScope.user.username}">
     <div>我的订单</div>
     <div>
	 	<div> 
      <table>
      <s:if test="#request.orderFormByUserName.isEmpty"  >
			<td colspan="5">没有您的订单信息！</td>
		</s:if>
		<s:else>
		<tr>
			<td >订单号</td>
			<td>付款时间</td>
			<td>发货时间</td>
			<td>订单总金额</td>
			<td>是否付款</td>
			<td>是否发货</td>
			<td>操作</td>
		</tr>
	<s:iterator value="#request.orderFormByUserName" id="orderFormByUserName" >
		<tr>
			<td ><s:property value="#orderFormByUserName.orderFormNum"/></td>
			<td ><s:property value="#orderFormByUserName.submitTime"/></td>
			<td ><s:property value="#orderFormByUserName.consignmentTime"  /></td>
			<td ><s:property value="#orderFormByUserName.totalPrice"/></td>
			<td><s:property value="#orderFormByUserName.isPayoff"/></td>
			<td ><s:property value="#orderFormByUserName.isConsignment"/></td>
			<s:if test='#orderFormByUserName.isPayoff=="否" '><td >
		<form action="OrderFormAction!payOrder.action" method="post" name="myform" >
		<input type="hidden" name="orderForm.orderFormId" value='<s:property value="#orderFormByUserName.orderFormId"/>' />
		<input type="hidden" name="orderForm.orderFormId" value='<s:property value="#orderFormByUserName.orderFormNum"/>' />
		<input type="hidden" name="orderForm.username" value='<s:property value="#orderFormByUserName.username"/>'/>
	  	<input type="hidden" name="orderForm.totalPrice" value='<s:property value="#orderFormByUserName.totalPrice"/>' />
	  	<input type="hidden" name="orderForm.isPayoff" value='<s:property value="#orderFormByUserName.isPayoff"/>' />
	  	<input type="hidden" name="orderForm.submitTime" value='<s:property value="#orderFormByUserName.submitTime"/>' />
	 	<input type="hidden" name="orderForm.consignmentTime" value='<s:property value="#orderFormByUserName.consignmentTime"/>'/>
	  	<input type="hidden" name="orderForm.isConsignment" value='<s:property value="#orderFormByUserName.isConsignment"/>' />
	  	<input type="hidden" name="orderForm.remark" value='<s:property value="#orderFormByUserName.remark"/>' />
	  	<input type="submit"  value="付款" />	
	  	</form></td></s:if>
			<s:elseif test=' #orderFormByUserName.isPayoff=="是" '><td >已经付款</td></s:elseif>
			</tr></s:iterator>
				
		</s:else>
		</table>		
	  	<div><h3>${payemessage } </h3>
	  	</div>
	  	
	  </div>
	   <div class="bottom_prod_box_big"></div>
     </div>
     </div>
       </c:if> 
	</td>
    
    </tr>
    </table>
  
  


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
