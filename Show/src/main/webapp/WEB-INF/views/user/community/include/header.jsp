<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML LANG="KO">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<HEAD>
<link href="../resources/css/header.css" rel="stylesheet" type="text/css" />
<TITLE> ON SHOW </TITLE>
</HEAD>
<BODY>
		<header>
			<div class="main_logo">
				<a href="../onshow/index.html">
					<img src="../resources/image/logo.png"/>
				</a>
			</div>
			<nav>
				<ul class="nav_menu">
					<li><a href="intro">서비스안내</a></li>
					<li><a href="qnalist">고객센터</a></li>
					<% if(session.getAttribute("email")==null){ %>
					<li><a href="sign/login">로그인</a></li>
					<% } else { %>
					<li><a href="sign/logout">로그아웃</a></li>
					<% } %>
					<li><a href="sign/up">회원가입</a></li>
				</ul>
			</nav>
		</header>
</BODY>
</HTML>
