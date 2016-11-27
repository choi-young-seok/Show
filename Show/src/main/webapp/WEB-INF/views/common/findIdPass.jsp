<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../resources/css/style2.css" rel="stylesheet"
	type="text/css" />
<link href="../resources/css/password.css" rel="stylesheet"
	type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).on("click", ".pass_check_btn", function() {
		var reciver = $("#pass_text").val();
		$.ajax({
			url : '/show/email/send',
			type : 'POST',
			data : {
				"reciver" : reciver
			},
			success : function(result) {
				if (result == "OK") {
					alert("해당 이메일로 전송되었습니다.");
				} else {
					alert("가입되지않는 이메일이거나 \n 관리자에게 문의하세요.");
				}
			}
		});
	});
</script>
<TITLE>비밀번호 찾기</TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header> <!--include--> </header>
		<div class="password_box">
			<div class="id_check">
				<p>회원가입한 이메일 계정을 입력하세요.</p>
				<p>비밀번호 재설정 링크를 이메일로 보내드립니다.</p>
				<label class="big_text">이메일 주소</label> <input id="pass_text"
					type="text" size="10" placeholder="&nbsp;&nbsp;이메일을 입력 하세요" />
				<p class="pass_check_btn">전송</p>
				<label class="big_text">인증번호</label>&nbsp;&nbsp;&nbsp; <input
					id="number_text" type="text" placeholder="&nbsp;&nbsp;인증번호를 입력 하세요" />
				<p class="number_check_btn">인증</p>
			</div>
		</div>
		<footer> <!--include--> </footer>
	</div>
</BODY>
</HTML>
