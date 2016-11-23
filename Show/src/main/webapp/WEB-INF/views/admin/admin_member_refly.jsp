<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/member_refly.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
</script>
<TITLE> 회원정보 </TITLE>
</HEAD>
<style>

</style>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="member_refly">
			<div class="email">
				<p class="email_text text_op text_size">이메일</p>
				<input type="text" class="email_show text_op text text_show_size" value="&nbsp;&nbsp;이메일db값">
			</div>
			<div class="name">
				<p class="name_text text_op text_size">닉네임</p>
				<input type="text" class="name_show text_op text text_show_size" value="&nbsp;&nbsp;닉네임db값"></div>
			</div>
			<div class="password">
				<p class="password_text text_op text_size">비밀번호</p>
				<input type="text" class="password_show text_op text text_show_size" value="&nbsp;&nbsp;비밀번호db값">
			</div>
			<div class="phone">
				<p class="phone_text text_op text_size">휴대폰</p>
				<input type="text" class="phone_show text_op text text_show_size" value="&nbsp;&nbsp;휴대폰번호db값">
			</div>
			<div class="birth">
				<p class="birth_text text_op text_size">생년월일</p>
				<input type="text" class="birth_show text_op text text_show_size" value="&nbsp;&nbsp;생년월일db값">
			</div>
			<div class="member_btn">
				<div>수정확인</div>
				<div>회원삭제</div>
				<div>닫기</div>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>
