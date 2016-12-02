<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/css/admin/admin_header.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		$(".qna").click(function(){
			$(".qna").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member1").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".gong").click(function(){
			$(".gong").css({"background":"#ffa500"});
			$(".qna").css({"background":"#696969"});
			$(".member1").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".member1").click(function(){
			$(".member1").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".shop").click(function(){
			$(".shop").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member1").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
		});
	});
</script>
</head>
<body>
<div id="wrap">
		<header>
			<div class="header_logo">
				<img src="resources/image/logo.png" class="logo_left"/>
				<p class="logo_left">관리자 페이지</p>
			</div>
			<div class="header_box">
				<div class="qna">문의관리</div>
				<div class="gong">공지사항</div>
				<div class="member1">회원관리</div>
				<div class="shop">매장관리</div>
			</div>
		</header>
	</div>
</body>
</html>