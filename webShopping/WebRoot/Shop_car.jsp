<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.cds.po.Commodity" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
table tr:first-child{background:#0066CC; color:#fff;font-weight:bold;} /*第一行标题蓝色背景*/
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

			<div class="nav">

				<ul class="clearfix">

					<li><a href="GoIndexAction.action">首页</a></li>

					<li><a href="Shop_car.jsp">购物车</a></li>
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
	

	
	<div class="contact" >
    
   
    
    </td>
   <c:if test="${!empty sessionScope.user.username}">
    
      <div style="text-align: center; font-size:24px;">我的购物车</div>
     
 <table>
   <%
   	  SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
      String tm= matter.format(new Date()); 
 	  Object s=session.getAttribute("list");
 	  SimpleDateFormat mat=new SimpleDateFormat("yyyyMMdd"); 
      String ornum= mat.format(new Date()); 
      int ra=(int)(1000+Math.random()*9000);
      %>

     <s:if test="#session.car.isEmpty" >
			<tr><td colspan="5">购物车里面没有商品！</td></tr>
		</s:if>
		<s:else>
		
		<tr>
			<td width="60">商品编号</td>
			<td width="120">商品名称</td>
			<td width="124">生产厂商</td>
			<td width="60">商品价格</td>
			<td width="119">移除该商品</td>
			
		</tr>
	<s:iterator value="#session.car" id="cars" >
		<tr>
			<td width="147"> ${cars.commodityId}</td>
			<td width="144"> ${cars.commodityName}</td>
			<td width="124"> ${cars.manufacturer}</td>
			<td width="119"> ${cars.webPrice}</td>
			<td width="119"><a href="AddToCarAction!deleteFromCar.action?commodity.commodityId=${cars.commodityId}">移除</a></td>
		</tr></s:iterator>
		</s:else>
		</table>
		<s:if test="#session.car.isEmpty">
		</s:if>
		<s:else>
		
		
		<td><form action="OrderFormAction!addOrderForm.action" method="post" name="myform" ><table >
		<input type="hidden" name="orderForm.username" value="${sessionScope.user.username}"/>
	  	<input type="hidden" name="orderForm.totalPrice" value="${cars.webPrice}" />
	  	<input type="hidden" name="orderForm.isPayoff" value="否" />
	  	<input type="hidden" name="orderForm.submitTime" value="<%=tm %>" />
	 	<input type="hidden" name="orderForm.consignmentTime" value=" "/>
	  	<input type="hidden" name="orderForm.isConsignment" value="否" />
	  	<input type="hidden" name="orderForm.orderFormNum" value="<%=ornum %><%=ra %>" />
	  	<div  style="text-align: center; vertical-align: middle;">买家备注：<input type="text" name="orderForm.remark" value="无"/>
	  	<input type="submit"  value="提交订单" /><br>
	  			
	  	</div>
		</table>
	
	
	  	
		</form >
		<div style="text-align: center; "><form action="GoIndexAction"><input type="submit"  value="继续购物" /></form></div>
		</s:else>	  	
	  	</div>
	  </div>
	  
    
    
    <a class="right_content">

     
    </a> </c:if> 
    <c:if test="${empty sessionScope.user.username}">
     <div style="text-align: center; font-size:24px;" >
    <h3>对不起，还未登录，请登录</h3>
    <h3>正在跳转到登录页面，若没有跳转请<a href=Wang_login.html>点击这里！</a></h3>
     </div>
	<%response.setHeader("refresh","3;url=Wang_login.html");%>
 

    </c:if>
   
    
  
	</div>

	<div style="text-align:center;margin-top:300px;">
		<h4>Copyright 2014-2018 郑州大学</h4>
		</br>
		<h4>Email:WangShiYuan123.@zzu.com</h4>
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

  <script language=JavaScript >
  function date(){
var today = new Date();
var strDate = ( today.getYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate());

 return strDate;
}
 </script>	
	
</body>
</html>
