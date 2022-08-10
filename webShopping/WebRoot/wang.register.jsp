<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html >
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0"> 
	<title>注册</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />

    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class='login'>
	  <div class='login_title'>
	    <span>ç®¡çåç»å½</span>
	  </div>
	   <form name="myform" method="post" action="UserAction" id="myform" onsubmit="return check();">
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input id="username" type="text" name="user.username" onclick="fun(msg)"   onblur="show(msg)" placeholder='ç用户名' maxlength="16"  autocomplete="off" value="kbcxy"/>
	        <div  id=msg style="color:#ff0000;display:none;">用户名长度为8至15位</div>
			<div class='validation'>
	          <img alt="" src='img/tick.png'>
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input id="password" type="password" name="user.password"  onclick="fun(msg1)"  onblur="show(msg1)" placeholder='密码' maxlength="16"  autocomplete="off"/>
	         <div  id=msg1 style="color:#ff0000;display:none;">密码长度为8至15位</div>
	        <div class='validation'>
	          
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input id="repassword" type='password' name="pwd2" onclick="fun(msg2)"  onblur="show(msg2)" placeholder='重复密码 ' maxlength="16"  autocomplete="off"/>
	                <div  id=msg2 style="color:#ff0000;display:none;">两次输入的密码必须相同</div>
	        
	        <div class='validation'>
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input  id="name" name="user.name"onclick="fun(msg3)"  onblur="show(msg3)"placeholder='你的姓名' maxlength="16" type='text' autocomplete="off" />
	               <div  id=msg3 style="color:#ff0000;display:none;">输入您的姓名</div>
	        
	        <div class='validation'>
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input name="login" placeholder='ç¨æ·å' maxlength="16" type='text' autocomplete="off"/>
	                <div  id=msg4 style="color:#ff0000;display:none;">输入您联系电话</div>
	        
	        <div class='validation'>
	          <img alt="" src='img/tick.png'>
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input id="phone" name="user.phone" onclick="fun(msg4)"  onblur="show(msg4)"placeholder='çµè¯' maxlength="16" type='text' autocomplete="off" />
	        <div class='validation'>
        <div  id=msg4 style="color:#ff0000;display:none;">è¾å¥æ¨èç³»çµè¯</div>
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input name=id="post"  name="user.post"  onclick="fun(msg7)"  onblur="show(msg7)" placeholder='é®ç¼' maxlength="16" type='text' autocomplete="off" />
	        <div class='validation'>
        <div  id=msg7 style="color:#ff0000;display:none;">jnkjakef加厚裤袜发</div>
	        </div>
	    </div>
		 <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'>
	      </div>
	      <input  id="address" name="user.address" onclick="fun(msg5)"  onblur="show(msg5)" placeholder='æ¶è´§å°å' maxlength="16" type='text' autocomplete="off" />
	        <div class='validation'>
        <div  id=msg6 style="color:#ff0000;display:none;">å¡«åå¦wangshiyuan@zzu.comçå°å</div>
	        </div>
	    </div>
		
		
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='img/lock_icon_copy.png'>
	      </div>
	      <input name="pwd" placeholder='å¯ç ' maxlength="16" type='text' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='img/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='img/key.png'>
	      </div>
	      <input name="code" placeholder='éªè¯ç ' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
	      <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code();">edwawangk</canvas>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='button' value='ç»å½'>
	    </div>
	  </div>
	  <tr><td><input type="hidden" name="user.money" value="1000"/>
  </td><td> <input type="submit" name="submit1" value="登录" />
    <input type="reset" name="Submit2" value="重置" /></td>
  </tr>
	  </form>
	  <div class='success'>
	  </div>
	  <div class='disclaimer'>
	    <p></p>
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
	<div class="OverWindows"></div>
    <link href="layui/css/layui.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src='js/stopExecutionOnTimeout.js?t=1'></script>
    <script src="layui/layui.js" type="text/javascript"></script>
    <script src="js/Particleground.js" type="text/javascript"></script>
    <script src="Js/Treatment.js" type="text/javascript"></script>
    <script src="js/jquery.mockjax.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/boxOver.js"></script>
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
    //æ£æ¥ç¨æ·åæ¯å¦å¨æå®çèå´ä¹å
    alert("ç¨æ·åé¿åº¦å¿é¡»å¨6~15ä½ä¹é´ï¼");
	return false;
   }
   if(pass1.length<8||pass1.length>20){
    //æ£æ¥å¯ç æ¯å¦å¨æå®çèå´ä¹å
    alert("å¯ç é¿åº¦å¿é¡»å¨8~20ä½ä¹é´ï¼");
	return false;
   }
   if(pass1!=pass2){
    
    alert("ä¸¤æ¬¡å¯ç è¾å¥ä¸åï¼");
	return false;
   }
   
  if(address==null||address==''){
    alert("å°åä¸è½ä¸ºç©ºï¼");
	return false;
   }
  if(name==null||name==''){
    alert("åå­ä¸è½ä¸ºç©ºï¼");
	return false;
  }
	if(phone==null||phone==''){
    alert("çµè¯ä¸è½ä¸ºç©ºï¼");
	return false;
  }
  if(post==null||post==''){
    alert("é®ç¼ä¸è½ä¸ºç©ºï¼");
	return false;
  }
 
  
  if(email.match(/[\w-]+@{1}[\w-]+\.{1}\w{2,4}(\.{0,1}\w{2}){0,1}/ig)!=email.value)
   { alert("çµå­é®ç®±æ ¼å¼ä¸æ­£ç¡®ï¼");
	return false;
  }
  
}
</script>


 <script>
  function fun(t)
  {
    t.style.display='';
  }
  function show(t)
  {
    t.style.display='none';
    }
 </script>

	<script type="text/javascript">
		var canGetCookie = 0;//æ¯å¦æ¯æå­å¨Cookie 0 ä¸æ¯æ 1 æ¯æ
		var ajaxmockjax = 1;//æ¯å¦å¯ç¨èæAjaxçè¯·æ±å 0 ä¸å¯ç¨  1 å¯ç¨
		//é»è®¤è´¦å·å¯ç 
		
		var truelogin = "kbcxy";
		var truepwd = "mcwjs";
		
		var CodeVal = 0;
	    Code();
	    function Code() {
			if(canGetCookie == 1){
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			}else{
				showCheck(createCode(""));
			}
	    }
	    function showCheck(a) {
			CodeVal = a;
	        var c = document.getElementById("myCanvas");
	        var ctx = c.getContext("2d");
	        ctx.clearRect(0, 0, 1000, 1000);
	        ctx.font = "80px 'Hiragino Sans GB'";
	        ctx.fillStyle = "#E8DFE8";
	        ctx.fillText(a, 0, 100);
	    }
	    $(document).keypress(function (e) {
	        // åè½¦é®äºä»¶  
	        if (e.which == 13) {
	            $('input[type="button"]').click();
	        }
	    });
	    //ç²å­èæ¯ç¹æ
	    $('body').particleground({
	        dotColor: '#E8DFE8',
	        lineColor: '#133b88'
	    });
	    $('input[name="pwd"]').focus(function () {
	        $(this).attr('type', 'password');
	    });
	    $('input[type="text"]').focus(function () {
	        $(this).prev().animate({ 'opacity': '1' }, 200);
	    });
	    $('input[type="text"],input[type="password"]').blur(function () {
	        $(this).prev().animate({ 'opacity': '.5' }, 200);
	    });
	    $('input[name="login"],input[name="pwd"]').keyup(function () {
	        var Len = $(this).val().length;
	        if (!$(this).val() == '' && Len >= 5) {
	            $(this).next().animate({
	                'opacity': '1',
	                'right': '30'
	            }, 200);
	        } else {
	            $(this).next().animate({
	                'opacity': '0',
	                'right': '20'
	            }, 200);
	        }
	    });
	    var open = 0;
	    layui.use('layer', function () {
			var msgalert = 'é»è®¤è´¦å·:' + truelogin + '<br/> é»è®¤å¯ç :' + truepwd;
    		var index = layer.alert(msgalert, { icon: 6, time: 4000, offset: 't', closeBtn: 0, title: 'åææç¤º', btn: [], anim: 2, shade: 0 });  
			layer.style(index, {
				color: '#777'
			}); 
	        //éç©ºéªè¯
	        $('input[type="button"]').click(function () {
	            var login = $('input[name="login"]').val();
	            var pwd = $('input[name="pwd"]').val();
	            var code = $('input[name="code"]').val();
	            if (login == '') {
	                ErroAlert('è¯·è¾å¥æ¨çè´¦å·');
	            } else if (pwd == '') {
	                ErroAlert('è¯·è¾å¥å¯ç ');
	            } else if (code == '' || code.length != 4) {
	                ErroAlert('è¾å¥éªè¯ç ');
	            } else {
	                //è®¤è¯ä¸­..
	                fullscreen();
	                $('.login').addClass('test'); //å¾æç¹æ
	                setTimeout(function () {
	                    $('.login').addClass('testtwo'); //å¹³ç§»ç¹æ
	                }, 300);
	                setTimeout(function () {
	                    $('.authent').show().animate({ right: -320 }, {
	                        easing: 'easeOutQuint',
	                        duration: 600,
	                        queue: false
	                    });
	                    $('.authent').animate({ opacity: 1 }, {
	                        duration: 200,
	                        queue: false
	                    }).addClass('visible');
	                }, 500);

	                //ç»é
	                var JsonData = { login: login, pwd: pwd, code: code };
					//æ­¤å¤åä¸ºajaxåé¨å¤æ­
					var url = "";
					if(JsonData.login == truelogin && JsonData.pwd == truepwd && JsonData.code.toUpperCase() == CodeVal.toUpperCase()){
						url = "Ajax/Login";
					}else{
						url = "Ajax/LoginFalse";
					}
					
					
	                AjaxPost(url, JsonData,
	                                function () {
	                                    //ajaxå è½½ä¸­
	                                },
	                                function (data) {
	                                    //ajaxè¿å 
	                                    //è®¤è¯å®æ
	                                    setTimeout(function () {
	                                        $('.authent').show().animate({ right: 90 }, {
	                                            easing: 'easeOutQuint',
	                                            duration: 600,
	                                            queue: false
	                                        });
	                                        $('.authent').animate({ opacity: 0 }, {
	                                            duration: 200,
	                                            queue: false
	                                        }).addClass('visible');
	                                        $('.login').removeClass('testtwo'); //å¹³ç§»ç¹æ
	                                    }, 2000);
	                                    setTimeout(function () {
	                                        $('.authent').hide();
	                                        $('.login').removeClass('test');
	                                        if (data.Status == 'ok') {
	                                            //ç»å½æå
	                                            $('.login div').fadeOut(100);
	                                            $('.success').fadeIn(1000);
	                                            $('.success').html(data.Text);
												//è·³è½¬æä½
												
	                                        } else {
	                                            AjaxErro(data);
	                                        }
	                                    }, 2400);
	                                })
	            }
	        })
	    })
	    var fullscreen = function () {
	        elem = document.body;
	        if (elem.webkitRequestFullScreen) {
	            elem.webkitRequestFullScreen();
	        } else if (elem.mozRequestFullScreen) {
	            elem.mozRequestFullScreen();
	        } else if (elem.requestFullScreen) {
	            elem.requestFullscreen();
	        } else {
	            //æµè§å¨ä¸æ¯æå¨å±APIæå·²è¢«ç¦ç¨  
	        }
	    }  
		if(ajaxmockjax == 1){
			$.mockjax({  
				url: 'Ajax/Login',  
				status: 200,  
				responseTime: 50,          
				responseText: {"Status":"ok","Text":"ç»éæå<br /><br />æ¬¢è¿åæ¥"}  
			}); 
			$.mockjax({  
				url: 'Ajax/LoginFalse',  
				status: 200,  
				responseTime: 50,          
				responseText: {"Status":"Erro","Erro":"è´¦å·åæå¯ç æéªè¯ç æè¯¯"}
			});   
		}
    </script>
</body>
</html>
