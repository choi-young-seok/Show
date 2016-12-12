<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/common/style.css" rel="stylesheet"
	type="text/css" />
<link href="../resources/css/common/join.css" rel="stylesheet"
	type="text/css" />
<link href="../resources/css/common/join_media.css" rel="stylesheet"
	type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script src="../resources/js/common/joinjs.js"></script>
<script>
	var email_confirm = false;
	$(document).ready(function() {
		var join = "../index.jsp";
		$(".join_btn").click(function() {
			Account(email_confirm);
		});

		//약관전체 동의
		$("#dd2").click(function() {

			var chk = $(this).is(":checked");//.attr('checked');

			if (chk)
				$(".check_text input").prop('checked', true);

			else
				$(".check_text input").prop('checked', false);
		});//수신전체동의
		$("#all_search").click(function() {

			var chk = $(this).is(":checked");//.attr('checked');

			if (chk)
				$(".check_text2 input").prop('checked', true);

			else
				$(".check_text2 input").prop('checked', false);
			});//생년월일

		
	});
</script>
<TITLE>ON SHOW 회원가입</TITLE>
</HEAD>
<style>
</style>
<BODY>
	<div id="wrap">
		<header> <!--include--> </header>
		<div class="join_bg">
			<div class="none_box">
				<!--아무것도 넣지마 위치값-->
			</div>
			<div id="membership_box">
				<div id="membership">
					<div>회원가입</div>
					<hr />
					<br />
					<div>
						<div class="member_box">
							<label for="id_box" class="big_text">이메일 주소</label> <br /> <input
								id="id_box_1" class="box_text" type="text" maxlength="30"
								placeholder="&nbsp;&nbsp;이메일 주소를 입력 하세요." /> @ <select
								id="id_box_2">
								<option>선택하세요</option>
								<option value="naver.com">naver.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
							</select>
							<div class="check_box" id="email_ch" onclick="viewMessage()">중복확인</div>
						</div>
						<div class="member_box">
							<label for="name_box" class="big_text">이름</label> <br /> <input
								id="name_box" class="size2" type="text" maxlength="30"
								placeholder="&nbsp;&nbsp;5글자 이하로 작성해주세요." />
						</div>
						<div class="member_box">
							<label for="nickName_box" class="big_text">닉네임</label> <br /> <input
								id="nickName_box" class="size2" type="text" maxlength="30"
								placeholder="&nbsp;&nbsp;4글자 이하로 작성해주세요." />
						</div>
						<div class="member_box">
							<label for="pw_box1" class="big_text">비밀번호</label> <br /> <input
								id="pw_box1" class="size2" type="password" maxlength="30"
								placeholder="&nbsp;&nbsp;4~8자의 영문,숫자 조합으로 입력 하세요." />
						</div>
						<div class="member_box">
							<label for="pw_box2" class="big_text">비밀번호 확인</label> <br /> <input
								id="pw_box2" class="size2" type="password" maxlength="30"
								onblur="pwd_check()" />
						</div>
						<font name="print" class="print" id="print" color="red"></font>
						<div class="member_box size_box">
							<label for="hp_box" class="big_text">휴대폰</label> <br /> <select
								id="hp_box_1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> - <input id="hp_box_2" class="size5 box_text" type="text"
								maxlength="4" /> - <input id="hp_box_3" class="size5 box_text"
								type="text" maxlength="4" />

						</div>
						<div class="member_box">
							<label for="no_box" class="big_text">생년월일</label> <br />
							<div class="size2">
								<select class="year" id="year">
									<option class="year_text" value="">년도</option>
									<script>
										for (i = 2016; i > 1900; i--)
											document
													.write('<option value="'+i+'">'
															+ i + '</option>');
									</script>
								</select> <select class="month" id="month">
									<option class="month_text">월</option>
									<script>
										for (i = 1; i < 13; i++)
											document
													.write('<option value="'+i+'">'
															+ i + '</option>');
									</script>
								</select> <select class="day" id="day">
									<option class="day_text">일</option>
									<script>
										for (i = 1; i < 32; i++)
											document
													.write('<option value="'+i+'">'
															+ i + '</option>');
									</script>
								</select>
							</div>
						</div>
						<div class="member_box">
							<label for="no_box" class="big_text">약관동의</label> <br />
							<div class="check">
								<label for="dd2" class="check_text"> <input id="dd2"
									type="checkbox" /> 전체 동의
								</label>
							</div>
							<div class="check">
								<label for="aa2" class="check_text"> <input id="aa2"
									type="checkbox" /> 이용약관 동의 <a href="../continue.html">내용보기</a>
								</label>
							</div>
							<div class="check">
								<label for="bb2" class="check_text"> <input id="bb2"
									type="checkbox" /> 전자금융거래 이용약관 <a href="../continue.html">내용보기</a>
								</label>
							</div>
							<div class="check">

								<label for="cc2" class="check_text"> <input id="cc2"
									type="checkbox" /> 개인정보 수집 이용 동의 <a href="../continue.html">내용보기</a>
								</label>
							</div>
						</div>
						<div class="sms_check">
							<div class="check2">
								<label for="all_search" class="check_text2"> <input
									id="all_search" type="checkbox" /> 수신 전체 동의
								</label>
							</div>
							<div class="check2">
								<label for="sms_search" class="check_text2"> <input
									id="sms_search" type="checkbox" /> sms수신 동의(선택)
								</label>
							</div>
							<div class="check2">
								<label for="email_search" class="check_text2"> <input
									id="email_search" type="checkbox" /> e-mail수신 동의(선택)
								</label>
							</div>
						</div>
						<div class="join_btn">완료</div>
					</div>
				</div>
			</div>
		</div>
		<footer> <!-- include --> </footer>
	</div>
	<script type="text/javascript">
	function viewMessage() {
		var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

		var email_1 = $("#id_box_1").val();
		var email_2 = $("#id_box_2").val();
		var email = email_1 + "@" + email_2;

		if (regex.test(email) == false) {
			alert("이메일 형식을 확인하여 주십시오");
			return;
		}
		$.ajax({
			url : '/show/sign/confirm_AX',
			type : 'POST',
			data : {
				"email" : email
			},
			success : function(result) {
				if (result) {
					alert('사용가능한 이메일입니다.');
					email_confirm = true;
					$("#id_box_1").attr("disabled", true);
					$("#id_box_2").attr("disabled", true);
					return result;
				} else {
					alert('사용이 불가능한 이메일입니다.');
					return result;
				}
			}
		})
	}
	</script>
</BODY>
</HTML>
