<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/common/login.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/common/login_media.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script src="../resources/js/common/loginjs.js"></script>
<script>
	$(document).ready(function(){
		var login = "../index.php";
		$(".login_btn").click(function(){
			Login();
		});
		var join = "../join/join.html";
		$(".join_btn").click(function(){
			location.href='/show/sign/up';
		});
		$(".password_find").click(function(){
			$(location).attr('href',"/show/sign/find");
		});
	});
</script>
<TITLE> ON SHOW 로그인 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="login_page">
			<div class="none_box"><!--위치값 빈박스 건들지마--></div>
			<div class="login_big_box">
				<div class="login_logo">
					<a href="../index.php" ><img src="../resources/image/logo.png"/></a>
				</div>
				<div class="login_box">
					<div class="login_text_box">
						<input type="text" placeholder="&nbsp;&nbsp;이메일을 입력해 주세요." class="id_box"/>
						<input type="password" class="password_box" placeholder="&nbsp;&nbsp;비밀번호"/>
					</div>
					<div class="login_btn">로그인</div>
				</div>
				<div class="login_checkbox">
					<input type="checkbox"/>
					<p class="id_input">아이디 저장</p>
					<p class="password_find">아이디/비밀번호 찾기</p>
				</div>
				<div class="join_btn">회원가입</div>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>
