<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/admin_header.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".qna").click(function(){
			$(".qna").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".gong").click(function(){
			$(".gong").css({"background":"#ffa500"});
			$(".qna").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".member").click(function(){
			$(".member").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".shop").click(function(){
			$(".shop").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
		});
		
	});
	
</script>
<TITLE></TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<div class="header_logo">
				<a href="/show"><img src="resources/image/logo.png" class="logo_left"/></a>
				<p class="logo_left">사장님 페이지</p>
			</div>
			<div class="header_box">
				<div class="qna">업체신청</div>
				<div class="gong">내업체관리</div>
				<div class="member">통계조회</div>
				<div class="shop">주문확인</div>
			</div>
		</header>
	</div>
</BODY>
</HTML>
