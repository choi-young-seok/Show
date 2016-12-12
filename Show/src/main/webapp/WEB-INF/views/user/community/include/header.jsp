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
				<a href="/show">
					<img src="../resources/image/logo.png"/>
				</a>
			</div>
			<nav>
				<ul class="nav_menu">
	
					<% if(session.getAttribute("id") == null && session.getAttribute("email") == null && session.getAttribute("position") == null) {%>
					<li><a href="sign/login">로그인</a></li>
					<li><a href="sign/up">회원가입</a></li>					
					<% } else { %>
					<li><a href="/show/sign/logout">로그아웃</a></li>
					<li><a href="/show/sign/modi">개인정보수정</a></li>
					<li><a href="/show/myPage">마이 페이지</a></li>
					<%  } %>
					<% if(session.getAttribute("id")!=null){ %>
						<% if(session.getAttribute("position").equals("10")) { %>
						<li><a href="/show/application">업체추가</a></li>
						<% } else if(session.getAttribute("position").equals("20")) { %>
						<li><a href="/show/adminMain">업체 관리페이지</a></li>
					<% } %><% } %>
				</ul>
			</nav>
		</header>
</BODY>
</HTML>
