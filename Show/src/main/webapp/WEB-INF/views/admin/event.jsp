<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/event.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".event_form").hide();
		$(".event_menu > ul > li:nth-child(1)").click(function(){
			$(".event_menu > ul > li:nth-child(1)").css({"background":"#ffa500"});
			$(".event_menu > ul > li:nth-child(2)").css({"background":"#696969"});
			$(".gong_form").show();
			$(".event_form").hide();
		});
		$(".event_menu > ul > li:nth-child(2)").click(function(){
			$(".event_menu > ul > li:nth-child(1)").css({"background":"#696969"});
			$(".event_menu > ul > li:nth-child(2)").css({"background":"#ffa500"});
			$(".event_form").show();
			$(".gong_form").hide();
		});
	});
</script>
<TITLE> 공지사항관리 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="main">
			<div class="event_menu">
				<ul>
					<li>공지사항관리</li>
					<li>이벤트관리</li>
				</ul>
			</div>
			<div class="gong_form">
				<div class="gong_main">
					<ul>
						<li>순번</li>
						<li>제목</li>
						<li>날짜</li>
					</ul>
				</div>
				<div class="gong_text">
					<div>순번db</div>
					<div>제목db</div>
					<div>등록날짜db</div>
				</div>
			</div>

			<div class="event_form">
				<div class="event_main">
					<ul>
						<li>순번</li>
						<li>제목</li>
						<li>날짜</li>
					</ul>
				</div>
				<div class="event_text">
					<div>순번db</div>
					<div>제목db</div>
					<div>등록날짜db</div>
				</div>
			</div>
			<div class="write_btn">글쓰기</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>
