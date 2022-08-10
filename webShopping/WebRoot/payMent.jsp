﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>校园网上购物系统</title>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<style>
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
	</style>
<script type="text/javascript" src="js/boxOver.js"></script>

</head>
<body>

<div id="main_container">
  <div class="top_bar"></div>
	<div id="header">
</div>
  <script language=JavaScript >
  function date(){
var today = new Date();
var strDate = ( today.getYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate());

 return strDate;
}
 </script>	
   <div id="main_content"> 
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
					     <li><a href="GoIndexAction.action" class="nav1">首页</a></li>
                         <li class="divider"></li>
                         <li><a href="showCar.jsp" class="nav5">购物车</a></li>
                         <li class="divider"></li>
                         <c:if test="${empty sessionScope.user.username}">
                         <li><a href="login.jsp" class="nav3">用户登录</a></li>
                         <li class="divider"></li> 
                         <li><a href="register.jsp" class="nav6">用户注册 </a></li>
                         <li class="divider"></li>
                         </c:if>
                         <li><a href="admin/login.jsp" class="nav2">后台管理</a></li>
                         <li class="divider"></li>
                    </ul>

             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
    
    </div> 
   
     
    <div class="crumb_navigation">
    导航: <span class="current"><a href="GoIndexAction.action">首页</a>&gt;&gt; 付款</span>
    
    </div><div align="right"><form name="searchform" action="CommodityAction!findCommodityByName.action" method="post">
    <input id="commodity.commodityName" name="commodity.commodityName" style="font-size: 10pt; color: rgb(85, 85, 85);" onfocus="if(this.value=='请输入您所要查找的商品名称'){this.value='';}" onblur="if(this.value==''){this.value='请输入您所要查找的商品名称';}" value="请输入您所要查找的商品名称" size="25" maxlength="30" type="text" />
<input name="搜索" type="submit" value="搜索" />
    </form></div>
    <table border="0" cellpadding="0" cellspacing="0" align="center" width=100% height="400px" bgcolor="#e9e7e7">
    <tr>
    <td width=15%>
    
    </td>
   <c:if test="${!empty sessionScope.user.username}">
    
    <td class="center_content" width=100% height=400px>
    <div class="center_content">
     <div class="center_title_bar">付款</div>
     <div class="prod_box_big">
     	<div class="top_prod_box_big"></div>
	 	<div class="center_prod_box_big"> 
      <table>
  <tr>
	<td align="center" width="8%">订单号</td>
    <td align="center" >用户名</td>
    <td  align="center" >提交时间</td>
     <td align="center" >订单总金额</td>
    <td align="center" >是否付款</td>
    <td  align="center" >操作</td>
   
  </tr>
   
    <s:iterator value="#request.nowOrder" id="nowOrder" >
  <tr>
    <td  height=24 align="center"><s:property value="#nowOrder.orderFormNum"/></td>
    <td   height=24 align="center"><s:property value="#nowOrder.username"/></td>
  
    <td  height=24 align="center"><s:property value="#nowOrder.submitTime" /> </td>
     <td  height=24 align="center"><s:property value="#nowOrder.totalPrice"/></td>
    <td   height=24 align="center"><s:property value="#nowOrder.isPayoff"/></td>
  <td  height=24 align="center">
  	<form action="OrderFormAction!payOrderForm.action" method="post" name="myform">
  		<input type="hidden" name="orderForm.orderFormId" value="<s:property value='#nowOrder.orderFormId'/>"/>
  		<input type="hidden" name="orderForm.orderFormId" value="<s:property value='#nowOrder.orderFormNum'/>"/>
		<input type="hidden" name="orderForm.username" value="<s:property value='#nowOrder.username'/>"/>
	  	<input type="hidden" name="orderForm.totalPrice" value="<s:property value='#nowOrder.totalPrice'/>" />
	  	<input type="hidden" name="orderForm.isPayoff" value="<s:property value='#nowOrder.orderFormId'/>" />
	  	<input type="hidden" name="orderForm.submitTime" value="<s:property value='#nowOrder.submitTime'/>" />
	 	<input type="hidden" name="orderForm.consignmentTime" value="<s:property value='#nowOrder.consignmentTime'/>"/>
	  	<input type="hidden" name="orderForm.isConsignment" value="<s:property value='#nowOrder.isConsignment'/>" />
	  	<input type="hidden" name="orderForm.remark" value="<s:property value='#nowOrder.remark'/>" />
	  	<input type="submit"  value="付款" />	
	  	</form>
	  	
  </td>
	</tr>
	</s:iterator>
		</table>		
	  	</div>	
	  </div>
	   <div >${payemessage}</div>
     </div>
	</td>
    
    <td class="right_content"><table>
     <tr><td> <c:if test="${empty sessionScope.user.username}">
     <form action="UserAction!login.action" name="form" method="post" >
   		<div class="title_box">用户登录</div>  
        <div class="border_box">
		<p>用户名：<input id="username" name="user.username" type="text" style="width:110px"/></p>
		<p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input id="password" name="user.password" type="password"  style="width:110px"/></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;<input name="提交" type="submit" value="登录" /><input name="重置" type="reset" value="重置" />
        </p>
        <p align="center">&nbsp;&nbsp;&nbsp;[<a href="register.jsp">新用户注册</a>] &nbsp;[<a href="findPass.jsp" >忘记密码</a>]</p>
        
     </div>  </form> </c:if>
     <c:if test="${!empty sessionScope.user.username}">
            <div class="title_box">用户信息</div>  
        <div class="border_box">
         <br/>
		<p>欢迎登陆：${sessionScope.user.username}</p><br/>
		<p> [<a href="OrderFormAction!findOrderFormByUserName.action?orderForm.username=${sessionScope.user.username}">我的订单</a>]&nbsp;&nbsp; [<a href="updatePass.jsp" >修改密码</a>] </p>
		<p> [<a href="userInfo.jsp">个人信息</a>]&nbsp;&nbsp; [<a href="UserAction!logout.action"  onclick="return confirm('确定要退出吗?')" >退出系统</a>] </p>
     </div>
        </c:if> 
      
    </td>
     </tr>
    </table></td> </c:if> 
    <c:if test="${empty sessionScope.user.username}">
    <td class="center_content" width=100% height=400px align=center>
    <table bgcolor="#e9e7e7" >
    <tr><td> <h3>对不起，还未登录，请登录</h3>
    <h3>正在跳转到登录页面，若没有跳转请<a href=login.jsp>点击这里！</a></h3>
    </td></tr></table></td>
   <% response.setHeader("refresh","3;url=login.jsp");%> 
    </c:if>
    </tr>
    </table>
  
   <div class="footer" align="center"><br />&copy;&nbsp;2014-2018&nbsp;|&nbsp;版权所有 :郑州大学 王世远 		
					<div align=center>
						QQ：945570098&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豫ICP备05002440号
</div>
</body>
</html>