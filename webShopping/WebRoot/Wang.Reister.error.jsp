<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>错误页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="css/404.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function() {
		var h = $(window).height();
		$('body').height(h);
		$('.mianBox').height(h);
		centerWindow(".tipInfo");
	});

	//2.将盒子方法放入这个方，方便法统一调用
	function centerWindow(a) {
		center(a);
		//自适应窗口
		$(window).bind('scroll resize',
				function() {
					center(a);
				});
	}

	//1.居中方法，传入需要剧中的标签
	function center(a) {
		var wWidth = $(window).width();
		var wHeight = $(window).height();
		var boxWidth = $(a).width();
		var boxHeight = $(a).height();
		var scrollTop = $(window).scrollTop();
		var scrollLeft = $(window).scrollLeft();
		var top = scrollTop + (wHeight - boxHeight) / 2;
		var left = scrollLeft + (wWidth - boxWidth) / 2;
		$(a).css({
			"top": top,
			"left": left
		});
	}
</script>
  </head>
  
  <body>
<div class="mianBox">
	<img src="images/yun0.png" alt="" class="yun yun0" />
	<img src="images/yun1.png" alt="" class="yun yun1" />
	<img src="images/yun2.png" alt="" class="yun yun2" />
	<img src="images/bird.png" alt="" class="bird" />
	<img src="images/san.png" alt="" class="san" />
	<div class="tipInfo">
		<div class="in">
			<div class="textThis">
				<h2>用户名已经存在</h2>
				<p><span>若没有跳转，请点击<a id="href"href=register.jsp>跳转</a></span><span>等待<b id="wait">3</b>秒</span></p>
				<script type="text/javascript">                            
				(function() {
						var wait = document.getElementById('wait'), href = document.getElementById('href').href;
						var interval = setInterval(function() {
							var time = --wait.innerHTML;
							if (time <= 0) {
								
								clearInterval(interval);
								
 <% response.setHeader("refresh","3;url=register.jsp"); %>							}
							;
						}, 1000);
					})();
				</script>
			</div>
		</div>
	</div>
</div>
  </body>
</html>
