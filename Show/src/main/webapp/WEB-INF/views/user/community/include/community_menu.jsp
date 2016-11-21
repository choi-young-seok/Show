<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href=../resources/css/style.css rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/menu_bar.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../../js/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".service").hover(function(){
			$(".menu_bottom1").css({"background":"#000"});
			$(".menu_bottom2").css({"background":"#fff"});
			$(".menu_bottom3").css({"background":"#fff"});
			$(".menu_bottom4").css({"background":"#fff"});
			$(".service").css({"background":"#696969","color":"#fff"});
			$(".event").css({"background":"#ededed","color":"#000"});
			$(".qna").css({"background":"#ededed","color":"#000"});
			$(".call").css({"background":"#ededed","color":"#000"});
		});
		$(".event").hover(function(){
			$(".menu_bottom1").css({"background":"#fff"});
			$(".menu_bottom2").css({"background":"#000"});
			$(".menu_bottom3").css({"background":"#fff"});
			$(".menu_bottom4").css({"background":"#fff"});
			$(".event").css({"background":"#696969","color":"#fff"});
			$(".service").css({"background":"#ededed","color":"#000"});
			$(".qna").css({"background":"#ededed","color":"#000"});
			$(".call").css({"background":"#ededed","color":"#000"});
		});
		$(".qna").hover(function(){
			$(".menu_bottom1").css({"background":"#fff"});
			$(".menu_bottom2").css({"background":"#fff"});
			$(".menu_bottom3").css({"background":"#000"});
			$(".menu_bottom4").css({"background":"#fff"});
			$(".qna").css({"background":"#696969","color":"#fff"});
			$(".event").css({"background":"#ededed","color":"#000"});
			$(".service").css({"background":"#ededed","color":"#000"});
			$(".call").css({"background":"#ededed","color":"#000"});
		});
		$(".call").hover(function(){
			$(".menu_bottom1").css({"background":"#fff"});
			$(".menu_bottom2").css({"background":"#fff"});
			$(".menu_bottom3").css({"background":"#fff"});
			$(".menu_bottom4").css({"background":"#000"});
			$(".call").css({"background":"#696969","color":"#fff"});
			$(".event").css({"background":"#ededed","color":"#000"});
			$(".qna").css({"background":"#ededed","color":"#000"});
			$(".service").css({"background":"#ededed","color":"#000"});
		});
		//hover 영역
		$(".service").click(function(){
			var service = "intro";
			$(location).attr('href',service);
		});
		$(".event").click(function(){
			var event = "list";
			$(location).attr('href',event);
		});
		$(".qna").click(function(){
			var qna = "qnalist";
			$(location).attr('href',qna);
		});
		$(".call").click(function(){
			var call = "create";
			$(location).attr('href',call);
		});
	});
</script>
<TITLE> ON SHOW 이벤트 </TITLE>

	<div id="wrap">
		<div class="community_bar">
			<div class="menu_bar">
				<div class="service">서비스소개</div>
				<div class="menu_bottom1"></div>
			</div>
			<div class="menu_bar">
				<div class="event">공지사항/이벤트</div>
				<div class="menu_bottom2"></div>
			</div>
			<div class="menu_bar">
				<div class="qna">자주묻는질문</div>
				<div class="menu_bottom3"></div>
			</div>
			<div class="menu_bar">
				<div class="call">문의하기</div>
				<div class="menu_bottom4"></div>
			</div>
		</div>
	</div>

