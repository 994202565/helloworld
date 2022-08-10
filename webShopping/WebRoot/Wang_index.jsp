<%@ page language="java"  import="java.util.*" contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.cds.po.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>校园闲置物品交易平台</title>
    <link rel="stylesheet" type="text/css" href="css/1.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    
<!--     <link rel="stylesheet" type="text/css" href="css/jq22.css">
 -->    
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/layer.js"></script>
    <script src="js/1.js"></script>
</head>
<body>
<s:if test="#request.listCommodityClasses">
<div class="advertisement"><a href="#"><span>X</span><img src="#"></a></div>
 <header id="header">
        <a href="#">首页</a>
               <a href="showCar.jsp">购物车</a>
             <a href="#">我要当老板</a>
              <a href="admin/Wang_Admin_login.html">后台管理</a>
                
                <% Object username=request.getAttribute("status"); %>
                <% Object status=request.getAttribute("username"); %>
                <% HttpSession sess=request.getSession();
                   User user=(User)request.getAttribute("u");
                  // Object user=sess.getAttribute("u");
         
                 //  System.out.print("用户");
                  
                
                %>
                
                <%if(status==null){%>
            </ul>
            <ul class="header-right">
            
                <li class="denglu"><a href="Wang_login.html">您好，请登录</a> <a href="javascript:registerjs()" class="red">免费注册</a><li style="height: 5px; "></li></li>
                <li class="shu"></li>
              
                       
                    </div>
                </li>
                <li class="shu"></li>
             
                    <div class="shouji1">
                     
                        </div>
                    </div>
                </li>
                <li class="shu"></li>
               
                <li class="shu"></li>
                
                    <i class="ci-right ">
							<s class="jt">◇</s>
						</i>
                    
                       
                </li>
            </ul>
           <%}else {%>
           <ul class="nav">  
            <li class="nav-menu">  
                               欢迎:<%=user.getUsername()%>
                               <%
                               	if(user!=null){
                               		String n1=user.getUsername();
                               	%>
                              
                              <%
                              
                               	}
                               %>
                              
                <ul class="nav-child">  
                   
                    <li class="nav-child-item"><a href="javascript:upxg()">修改资料</a></li>  
                    <li class="nav-child-item"><a href="Creat.html">发布菜谱</a></li>  
                    <li class="nav-child-item"><a href="back">退出登录</a></li>  
                </ul>  
            </li>   
        </ul>   
      
      <%--   	   <ul class="header-right">
               <li class="denglu"><input id="in" value=<%=username %>></li>
               <li class="shu"></li>
             
                      
                   </div>
               </li>
               <li class="shu"></li>
            
                   <div class="shouji1">
                    
                       </div>
                   </div>
               </li>
               <li class="shu"></li>
              
               <li class="shu"></li>
               
                   <i class="ci-right ">
							<s class="jt">◇</s>
						</i>
                   
                      
               </li>
           </ul> --%>
        	  <% } %> 
        </div>
    </header>
 <div class="w">
<div class="wang">
	<canvas id="clock11_">
	</canvas>
	</div>
              <div class="search">
      <from name="searchform" action="CommodityAction!findCommodityByName.action" method="post">
        
            <input id="commodity.commodityName" name="commodity.commodityName" type="text"   class="text" placeholder id="textt">
            <input class="button" name="搜索" type="submit" value="搜索" />
        	
       </from>
        </div>


</div> 
   
<!--         <div class="focus-b">
            <ul>
                <li><a href="#">首页</a></li>
                <li><a href="#">购物车</a></li>
                <li><a href="#">用户登录</a></li>
                <li><a href="#">用户注册</a></li>
                <li><a href="#">我要当老板</a></li>
               <li><a href="#">后台管理</a></li>
                 <li><a href="#">每食每刻</a></li>
            </ul>
        </div> -->
    </div>
    
    <div class="focus">
        <!--轮播图左边当行蓝-->
        <div class="dd-inner">
        
    <table>
    <tr>
    <td class="title_box">商品分类</td></tr>
    <tr><td> 
    <ul class="left_menu">
   <s:iterator value="#request.listCommodityClasses"  status="stu" id="classes">
        	<s:if test="#stu.odd==true">
        		<li class="odd">
        			<s:a href="CommodityAction!findCommodityByClass.action?commodityClassId=%{#classes.commodityClassId} ">
        				<s:property value="#classes.commodityClassName"/>
        			</s:a>
        		</li>
        	</s:if>
        	<s:else>
        		<li class="even">
        			<s:a href="CommodityAction!findCommodityByClass.action?commodityClassId=%{#classes.commodityClassId} ">
        				<s:property value="#classes.commodityClassName"/>
        			</s:a>
        		</li>
        	</s:else>	
        </s:iterator>
  </ul><br/></td>
    </table>
 
    
            <div class="font-item">
                <div >
                    <h3><a href="#">美好食代Hawk</a></h3>
                </div>
                <div class="font-item1">
                    <div class="font-left">
                        在中国传统文化教育中的阴阳五行哲学思想、儒家伦理道德观念、中医营养养生学说，还有文化艺术成就、饮食审美风尚、民族性格特征等诸多因素的影响下，劳动人民创造出彪炳史册的中国烹饪技艺，形成博大精深的中国饮食文化。
从历史沿革看，中国饮食文化绵延1700年，分为生食、熟食、自然烹饪、科学烹饪4个发展阶段，推出6万多种传统菜点、2万多种工业食品、五光十色的筵宴和流光溢彩的风味流派，获得“烹饪王国”的美誉。
从内涵上看，中国饮食文化涉及到食源的开发与利用、食具的运用与创新、食品的生产与消费、餐饮的服务与接待、餐饮业与食品业的经营与管理，以及饮食与国泰民安、饮食与文学艺术、饮食与人生境界的关系等，深厚广博！
从外延看，中国饮食文化可以从时代与技法、地域与经济、民族与宗教、食品与食具、消费与层次、民俗与功能等多种角度进行分类，展示出不同的文化品味，体现出不同的使用价值，异彩纷呈。从特质看，中国饮食文化突出养助益充的营卫论（素食为主，重视药膳和进补），五味调和的境界说（风味鲜明，适口者珍，有“舌头菜”之誉），奇正互变的
中华美食
中华美食(10张)
烹调法（厨规为本，灵活变通），畅神怡情的美食观（文质彬彬，寓教于食）等4大属性，有着不同于海外各国饮食文化的天生丽质。中国饮食文化直接影响到日本、蒙古、朝鲜、韩国、泰国、新加坡等国家，是东方饮食文化圈的轴心。与此同时，它还间接影响到欧洲、美洲、非洲和大洋洲，像中国的素食文化、茶文化、酱醋、面食、药膳、陶瓷餐具和大豆等，惠及全世界数十亿人。
                    </div>
                    <div class="font-lefty">
                       
                    </div>
                   
                    
                </div>
            </div>
           

            
           
           
        <!--轮播图-->
        <div id="lunbo">
            <ul id="one">
            <iframe    class=main_iframe id=frmright name="frmright"   frameborder=0  scrolling=auto src="product.jsp">
	 </iframe>
	 <div class="prod_details_tab">
	               <a href="AddToCarAction?commodity.commodityId=2" title="header=[添加到购物车] body=[&nbsp;] fade=[on]" target="_top"><img src="images/cart.gif" alt="添加到购物车" title="添加到购物车" border="0" class="left_bt" /></a>        
	            <a href="CommodityAction!findCommodityById.action?commodity.commodityId=2" class="prod_details" target="_top">详细</a></div>                     
	        </div>
	        <div class="center_content">
   	<div class="center_title_bar" >${searchClassMessage }</div>
   	<s:if test="#request.commodityByClass.isEmpty" >
   	<div ><h3>对不起，此类商品暂时为空！</h3>
   	</div>
   	</s:if><s:else>
   	    	<s:iterator value="#request.commodityByClass" var="commodityByClass">
    		<div class="prod_box">
	        	<div class="top_prod_box"></div>
	            <div class="center_prod_box">            
	                 <div class="product_title"><s:a href="CommodityAction!findCommodityById.action?commodity.commodityId=%{#commodityByClass.commodityId}"><s:property value="#commodityByClass.commodityName" /></s:a></div>
	                 <div class="product_img"><s:a href="CommodityAction!findCommodityById.action?commodity.commodityId=%{#commodityByClass.commodityId}"><img src="product/<s:property value='#commodityByClass.image' />" 
	                 alt="<s:property value='#commodityByClass.commodityName' />" title="<s:property value='#commodityByClass.commodityName' />" border="0"  width="144px" height="144px"/></s:a></div>
	                 <div class="prod_price"><span class="reduce">￥<s:property value="#commodityByClass.commodityPrice"/></span> <span class="price">￥<s:property value="#commodityByClass.webPrice"/></span></div>                        
	            </div>
	            <div class="bottom_prod_box"></div>             
	            <div class="prod_details_tab">
	            <a href="AddToCarAction?commodity.commodityId=<s:property value='#commodityByClass.commodityId'/>" title="header=[添加到购物车] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /> </a>      
	           <a href="CommodityAction!findCommodityById.action?commodity.commodityId=<s:property value='#commodityByClass.commodityId'/>" class="prod_details">详细</a> </div>                     
	        </div>
	        </s:iterator></s:else>
    	</div>
                <li>
                    <a href=""><img src="./img/1..jpg"></a>
                </li>
                <li>
                    <a href=""><img src="./img/2..jpg"></a>
                </li>
                <li>
                    <a href=""><img src="./img/3..jpg"></a>
                </li>
                <li>
                    <a href=""><img src="./img/4..jpg"></a>
                </li>
                <li>
                    <a href=""><img src="./img/5..jpg"></a>
                </li>
              <!--   <li>
                    <a href=""><img src="./img/6..jpg"></a>
                </li>
                <li>
                    <a href=""><img src="./img/7..jpg"></a>
                </li> -->
                <!-- <li>
                    <a href=""><img src="./img/3..jpg"></a>
                </li> -->
            </ul>
            <ul id="two">
                <li class="on">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
            </ul>
            <!--轮播图左右箭头-->
            <div class="slider-page">
                <a href="javascript:void(0)" id="left">
                    <</a>
                        <a href="javascript:void(0)" id="right">></a>
            </div>
        </div>
        <div class="under-lunbo">
            <a href="#"><img src="img/6..jpg"></a>
            <a href="#"><img src="img/7..jpg"></a>
        </div>
        <!--轮播图右侧一栏-->
        <div class="m">
            <div class="mt">
                <h3>夏季注意事项</h3>
                <div class="extra"><a href="">更多 ></a></div>
            </div>
            <div class="mc">
                 &nbsp  &nbsp &nbsp  &nbsp &nbsp 三伏天气温不断升高，空气湿度加大，许多人没有食欲，这时尝试多吃一些清淡食物，不仅可以促进食欲，还能防病。

　　清淡饮食能清热、防暑、敛汗、补液，还能增进食欲。多吃新鲜蔬菜瓜果，既可满足所需营养，又可预防中暑。
           
            </div>
        </div>
        <div class="ms">
            <div class="mm">
                <h3>生活小贴士</h3>
                <div class="extra"><a href="">更多 ></a></div>
            </div>
            <div class="mmm">
                   &nbsp &nbsp &nbsp &nbsp&nbsp应忌苦燥  中医学认为，苦性燥，苦燥之品易伤津耗气秋令饮食养生应忌苦燥。  七月勿食生蜜，否则易中毒。蜜蜂采了有毒植物的花，酿成的蜜也是有毒的。我国有些地区有大量的有毒植物，如雷公藤、昆明的海棠、南烛花等，来自这些植物的花蜜都含有剧毒的生物碱。而这些植物，大多在七月份开花，所以在七月不要吃生蜜，否则容易中毒，尤其是云南、四川、福建、广西、湖南等地之人。
            </div>
        </div>
    </div>
    <!--右侧导航栏-->
    
   
    <!-- 轮播下方-->
    <div class="jd-seckill">
       
    <div  align="center"><br />&copy;&nbsp;2014-2018&nbsp;|&nbsp;版权所有 :郑州大学 王世远 		
					<div align=center>
					E-mail：945570098@zzu.com
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豫ICP备05002440号
</div>
   
    </div>

<div id="loginui" style="display:none;margin-top:45px;">
		<form action="login" class="form-horizontal" id="loginfrom" method="post">
			<div class="form-group col-xs-12 text-center content">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">帐号</label>
					<div class="col-sm-9">
							<input type="text" name="username"
							class="col-xs-12 col-sm-12 form-control" id="loginuname" placeholder="请输入用户名" />
					</div>
				</div>
			</div>
			<div class="form-group col-xs-12 no-padding-right">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">密码</label>
					<div class="col-sm-9">
						<input type="password" name="password"
							class="col-xs-12 col-sm-12 form-control" id="loginpass" placeholder="请输入密码" />
					</div>
				</div>
			</div>
			
			<div class="form-group col-xs-12">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">验证码</label>
					<div class="col-sm-5">
						<input type="text" name=""
							class="col-xs-12 col-sm-12 form-control" id="inputCode" placeholder="请输入验证码" />
					</div>
					<div class="col-xs-4 no-padding-left">
						<div class="code col-sm-12" id="checkCode" onclick="createCode()" ></div>
					</div>
				</div>
			</div>
			<div class="form-group col-xs-12">
				<div class="col-xs-11 col-md-offset-1">
					<div class="pull-right">还没有帐号：<a href="javascript:registerjs()">注册帐号</a></div>
				</div>
			</div>
			<button type="submit" id="ss" class="hide"></button>
		</form>
	</div>
	<div id="registerui" style="display:none;margin-top:45px;">
		<form class="form-horizontal" id="registerfrom" action="register "id="upfrom" method="post">
			<div class="form-group col-xs-12 text-center content">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">帐号</label>
					<div class="col-sm-9">
							<input type="text" name="n1"
							class="col-xs-12 col-sm-12 form-control" id="registeruname" placeholder="请输入用户名" />
					</div>
				</div>
			</div>
			<div class="form-group col-xs-12 no-padding-right">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">密码</label>
					<div class="col-sm-9">
						<input type="password" name="n2"
							class="col-xs-12 col-sm-12 form-control" id="registerpass" placeholder="请输入密码" />
					</div>
				</div>
			</div>
			
			<div class="form-group col-xs-12 no-padding-right">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">确认密码</label>
					<div class="col-sm-9">
						<input type="password" name="n3"
							class="col-xs-12 col-sm-12 form-control" id="registerppass" placeholder="请确认密码" />
					</div>
				</div>
			</div>
			
			<div class="form-group col-xs-12 no-padding-right">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">邮箱</label>
					<div class="col-sm-9">
						<input type="text" name="mail"
							class="col-xs-12 col-sm-12 form-control" id="registerem" placeholder="请输入邮箱" />
					</div>
				</div>
			</div>
			
			<div class="form-group col-xs-12">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">验证码</label>
					<div class="col-sm-5">
						<input type="text" name=""
							class="col-xs-12 col-sm-12 form-control" id="inputCode1" placeholder="请输入验证码" />
					</div>
					<div class="col-xs-4 no-padding-left">
						<div class="code col-sm-12" id="checkCode1" onclick="createCode()" ></div>
					</div>
				</div>
			</div>
			<div class="form-group col-xs-12">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right "></label>
					<div class="col-sm-9">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="cb" id="cb">
								阅读并同意
								<a href="javascript:gongg()">《用户注册协议》</a>
							</label>
						</div>
					</div>
				</div>
			</div>
			<button type="submit" id="ss1" class="hide"></button>
		</form>
	</div>
	<!-- 信息修改from -->
			<% if(user!=null){ %>
	<div id="upui" style="display:none;margin-top:35px;">
		<form class="form-horizontal" action="update_user" id="upfrom" method="post">
	
			<div class="form-group col-xs-12 text-center content">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">帐号</label>
					<div class="col-sm-9">
					<%-- <%if(user.) %> --%>
						<input type="text" name="n1"
							class="col-xs-12 col-sm-12 form-control" id="upuname" placeholder="请输入用户名" value="<%=user.getUsername()%>"/>
					</div>
				</div>
			</div>
				<div class="form-group col-xs-12 no-padding-right">
					<div class="col-xs-11 col-md-offset-1">
						<label class="col-sm-3 control-label no-padding-right " >原始密码</label>
						<div class="col-sm-9">
					
							<input type="password" name="n2"
								class="col-xs-12 col-sm-12 form-control" id="uplpass" placeholder="请输入密码"  value="<%=user.getPassword()%>"/>
						</div>
					</div>
				</div>
				
				<div class="form-group col-xs-12 no-padding-right">
					<div class="col-xs-11 col-md-offset-1">
						<label class="col-sm-3 control-label no-padding-right ">新密码</label>
						<div class="col-sm-9">
							<input type="password" name="n3"
								class="col-xs-12 col-sm-12 form-control" id="upxpass" placeholder="请确认密码" />
						</div>
					</div>
				</div>
				
				<div class="form-group col-xs-12 no-padding-right">
					
		</div>
				
			<button type="submit" id="upss" class="hide"></button>
		</form>
	</div>
<%} %>


		<% if(user==null){ %>
	<div id="upui" style="display:none;margin-top:35px;">
		<form class="form-horizontal" action="update_user" id="upfrom" method="post">
	
			<div class="form-group col-xs-12 text-center content">
				<div class="col-xs-11 col-md-offset-1">
					<label class="col-sm-3 control-label no-padding-right ">帐号</label>
					<div class="col-sm-9">
						<input type="text" name="n1"
							class="col-xs-12 col-sm-12 form-control" id="upuname" placeholder="请输入用户名" />
					</div>
				</div>
			</div>
				<div class="form-group col-xs-12 no-padding-right">
					<div class="col-xs-11 col-md-offset-1">
						<label class="col-sm-3 control-label no-padding-right ">原始密码</label>
						<div class="col-sm-9">
					
							<input type="text" name="n2"
								class="col-xs-12 col-sm-12 form-control" id="uplpass" placeholder="请输入密码" />
						</div>
					</div>
				</div>
				
				<div class="form-group col-xs-12 no-padding-right">
					<div class="col-xs-11 col-md-offset-1">
						<label class="col-sm-3 control-label no-padding-right ">新密码</label>
						<div class="col-sm-9">
							<input type="password" name="n3"
								class="col-xs-12 col-sm-12 form-control" id="upxpass" placeholder="请确认密码" />
						</div>
					</div>
				</div>
				
				
				
			<button type="submit" id="upss" class="hide"></button>
		</form>
	</div>
<%} %>
    

</s:if>
    <s:else><s:action name="GoIndexAction" executeResult="true"></s:action>
    </s:else>


<script type="text/javascript">
createCode();
var code;

function createCode() 
{
 code = "";
 var codeLength = 4; //验证码的长度
 var checkCode = document.getElementById("checkCode");
 var checkCode1 = document.getElementById("checkCode1");
 var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
      'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
 for(var i = 0; i < codeLength; i++) 
 {
  var charNum = Math.floor(Math.random() * 52);
  code += codeChars[charNum];
 }
 if(checkCode)
 {
  checkCode.className = "code";
  checkCode1.className = "code";
  checkCode.innerHTML = code;
  checkCode1.innerHTML = code;
 }
} 
</script>
<script>
/* 登录弹窗js */
		
				function loginjs() {
					document.getElementById("checkCode").innerHTML=code;
					document.getElementById("loginuname").value="";
					document.getElementById("loginpass").value="";
					document.getElementById("inputCode").value="";
					userModel = layer.open({
						type : 1,
						shade : [ 0.5 ],
						title : '用户登录', //不显示标题
						skin: 'layui-layer-myjs layui-layer-molv',
						area : [ '480px', '400px' ], //显示空间
						content : $('#loginui'), //捕获的元素
						btn : [ '登录', '取消' ],
						yes : function(index, layero) { //或者使用btn1
							var uname = document.getElementById("loginuname").value;
							var pass = document.getElementById("loginpass").value;
							var inputCode=document.getElementById("inputCode").value;
							if (uname==""||pass=="") {
								if(uname == "" && pass != "")
									layer.msg("帐号不能为空！");
								else if(uname != "" && pass == "")
									layer.msg("密码不能为空！");
								else
									layer.msg("请输入帐号和密码！");
							} else {
								if(inputCode=="")
									layer.msg("验证码不能为空！");
								 else if(inputCode.toUpperCase() != code.toUpperCase()) {
   								 	layer.msg("验证码输入有误，请从新输入！");
   								 	document.getElementById("inputCode").value="";
   								 	createCode();
	 							 }
	 							 else{
	 								 
	 								 $("#ss").click();
								/* $.post("login1/login", $("#loginfrom").serialize(),
									 function(data) {
									alert(data);
											 layer.msg("登录成功"); 
										} 
										);
										layer.close(index); */
										}
							}
						},
						cancel : function(index) {
							layer.close(index);
							createCode() ;
							layer.msg("已取消");
						},
					});
				}
	/* 注册弹窗 */		
				function registerjs() {
					document.getElementById("checkCode1").innerHTML=code;
					document.getElementById("registeruname").value="";
					document.getElementById("registerpass").value="";
					document.getElementById("registerppass").value="";
					document.getElementById("registerem").value="";
					document.getElementById("inputCode1").value="";
					userModel = layer.open({
						type : 1,
						shade : [ 0.5 ],
						title : '用户注册', //不显示标题
						skin: 'layui-layer-myjs layui-layer-molv',
						area : [ '500px', '510px' ], //显示空间
						content : $('#registerui'), //捕获的元素
						btn : [ '注册', '取消' ],
						yes : function(index, layero) { //或者使用btn1
							var uname = document.getElementById("registeruname").value;
							var pass = document.getElementById("registerpass").value;
							var ppass = document.getElementById("registerppass").value;
							var em = document.getElementById("registerem").value;
							var inputCode=document.getElementById("inputCode1").value;
							var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;//使用正则表达式定义邮箱格式
							if (uname==""||pass==""||ppass==""||em=="") {
								if(uname == ""){
									layer.msg("用户名不能为空！");
									return false;
								}
								if(pass == ""){
									layer.msg("密码不能为空！");
									return false;
								}
								if(ppass == ""){
									layer.msg("请确认密码！");
									return false;
								}
								if(em == ""){
									layer.msg("邮箱不能为空！");
									return false;
								}
							} else {
								if(pass!=ppass)
									layer.msg("密码与确认密码不同，请从新输入！");
								else if(!reg.test(em)){
									layer.msg("邮箱格式不正确，请从新输入！");
								}
								else if(inputCode=="")
									layer.msg("验证码不能为空！");
								 else if(inputCode.toUpperCase() != code.toUpperCase()) {
   								 	layer.msg("验证码输入有误，请从新输入！");
   								 	document.getElementById("inputCode").value="";
   								 	createCode();
	 							 }else if(!document.getElementById("cb").checked)
	 							 	layer.msg("请阅读用户协议！");
	 							 else{
	 								$("#ss1").click();
								/* $.post("register", $("#loginfrom").serialize(),
										function(data) {
											
										});
										layer.close(index);
										layer.msg("注册成功"); */
										}
							}
						},
						cancel : function(index) {
							layer.close(index);
							createCode() ;
							layer.msg("已取消");
						},
					});
				}	
				
	/* 信息修改弹窗 */
	
			function upxg(){
				
			
					userModel = layer.open({
						type : 1,
						shade : [ 0.5 ],
						title : '用户信息修改', //不显示标题
						skin: 'layui-layer-myjs layui-layer-molv',
						area : [ '480px', '370px' ], //显示空间
						content : $('#upui'), //捕获的元素
						btn : [ '修改', '取消' ],
						yes : function(index, layero) { //或者使用btn1
							var uname = document.getElementById("upuname").value;
							var lpass = document.getElementById("uplpass").value;
							var xpass = document.getElementById("upxpass").value;
							var upem = document.getElementById("upem").value;
							var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;//使用正则表达式定义邮箱格式
							if (uname==""||lpass==""||xpass==""||upem=="") {
								if(uname==""){
									layer.msg("账号不能为空！");
									return false;
								}
								if(lpass == ""){
									layer.msg("请输入原始密码！");
									return false;
								}
								if(xpass == ""){
									layer.msg("请输入要修改的密码！");
									return false;
								}
								if(upem == ""){
									layer.msg("邮箱不能为空！");
									return false;
								}
							} else {
								if(!reg.test(upem)){
									layer.msg("邮箱格式不正确，请从新输入！");
									return false;
								}
	 							 else{
	 								$("#upss").click();
								/* $.post("#", $("#upfrom").serialize(),
										function(data) {
											
										});
										layer.close(index);
										layer.msg("修改成功"); */
										} 
							}
						},
						cancel : function(index) {
							layer.close(index);
							createCode() ;
							layer.msg("已取消");
						},
					});
	}
	/* 注册协议弹窗 */			
	function gongg(){
		   layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '1000px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['同意并继续']
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 25px; line-height: 50px; background-color: #393D49; color: #fff; font-weight: 300;"><h3>用户注册协议</h3><br>第1条 本站服务条款的确认和接纳<br>1.1本站的各项电子服务的所有权和运作权归美好食代所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。<br>1.2用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。<br>1.3如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。<br>1.4京东保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容或取消订单的权利<br>第2条 本站服务<br>2.1美好食代通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。<br>2.2用户必须自行准备如下设备和承担如下开支：（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等<br>第3条 用户信息<br>3.1用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且美好食代保留终止用户使用美好食代各项服务的权利。<br>3.2用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。<br>3.3用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。<br>3.4用户同意，美好食代拥有通过邮件、短信电话等形式，向在本站注册、购物用户、收货人发送订单信息、促销活动等告知信息的权利。<br>3.5用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。<br>3.6用户同意，美好食代有权使用用户的注册信息、用户名、密码等信息，登录进入用户的注册账户，进行证据保全，包括但不限于公证、见证等。<br></div>'
        ,success: function(layero){
          var btn = layero.find('.layui-layer-btn');
          btn.css('text-align', 'center');
          btn.find('.layui-layer-btn0').attr({
          
          });
        }
	});
	}
	</script>
	
<script src="js/canvas_clock.js"></script>
<script>
	  
	  clockd11_={
			  "dial1_color": "#666600",
			  "time_24h": true,
			  "date_add":3,
			  "date_add_color": "#999",
				 };
	
	  var c = document.getElementById('clock11_');
	  cns11_ = c.getContext('2d');
	

		
	 
	  clock_digitalran(200,cns11_,clockd11_);
	 
</script>

	
</body>
</html>