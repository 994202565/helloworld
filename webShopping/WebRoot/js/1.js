/*
 * @Author: 虚竹
 * @Date:   2016-12-05 23:57:25
 * @Last Modified by:   虚竹
 * @Last Modified time: 2016-12-08 21:39:38
 */

'use strict';
// window.onload = function() {
//     var otext = document.getElementById('textt');
//     otext.onmousedown = function() {
//         otext.value = '';
//     };
// }
$(function(){
	$("#textt").mousedown(function(event) {
		$("#textt").val(" ");
	});
})
$(function(){
	 //去除广告
    $("span").click(function(event) {
    	$(".advertisement").fadeOut().css("display","none");
    });
});
$(function() {
    
    //手动控制轮播图
    $('#one li').eq(0).show();

    $('#two li').mouseover(function() {
            $(this).addClass('on').siblings().removeClass('on');
            var index = $(this).index();
            // i = index;
            $('#one li').eq(index).stop().fadeIn(300).siblings().stop().fadeOut(300);
        })
        //自动播放
    var i = 0;
    var t = setInterval(move, 1500);
    //自动播放核心函数
    function move() {
        i++;
        if (i == 5) {
            i = 0;
        }
        $('#two li').eq(i).addClass('on').siblings().removeClass('on');
        $('#one li').eq(i).fadeIn(300).siblings().fadeOut(300);
    }

    //向右播放核心函数
    function moveL() {
        i--;
        if (i == -1) {
            i = 4;
        }
        $('#two li').eq(i).addClass('on').siblings().removeClass('on');
        $('#one li').eq(i).fadeIn(300).siblings().fadeOut(300);
    }
    $('#left').click(function() {
        moveL();
    })
    $('#right').click(function() {
            move();
        })
        //鼠标移入移除
    $('#lunbo').hover(function() {
        clearInterval(t);
    }, function() {
        t = setInterval(move, 1500);
    });
});
$(function() {
    $('.hidein').click(function() {
        $(this).css('display', 'none');
        $('#jd_chaojidapai').css('display', 'none');
    })
})
