<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/member.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<TITLE> 회원관리 </TITLE>
</HEAD>
<BODY>

	<div id="wrap">
		<div class="	">
			<div class="member_top">
				<ul>
					<li>선택</li>
					<li>아이디</li>
					<li>이름</li>
					<li>생년월일</li>
					<li>구별</li>
					<li>상세보기</li>
				</ul>
			</div>
			<div class="member_choice">
				<div>
					<input type="checkbox"/>
				</div>
				<div>아이디db</div>
				<div>이름db</div>
				<div>가입날짜db</div>
				<div class="read">상세보기</div>
			</div>
				
			<div class="member_btn">
				<p>선택삭제</p>
			</div>
		</div>
	</div>
</BODY>
</HTML>
