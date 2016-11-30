<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../resources/css/common/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/common/join.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/common/join_media.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
	$(function(){
		$('#hp_box_1').val('${modi_phone1}');
		$('.modi_btn').click(function(){
			var email = '${modi_email1}@${modi_email2}';
			var password = $('#pw_box2').val();
			var phone = $('#hp_box_1').val()+"-"+$('#hp_box_2').val()+"-"+$('#hp_box_3').val();
			
			if(password === ''){
				alert('비밀번호를 적지 않았습니다.');
				return;
			}
			
			modi_AX(email, password, phone);
		});
	})
	// 패스워드 일치 확인용
var pwd_check_vl = false;
var email_check_vl = false;
// 패스워드 일치함수
function pwd_check() {

	var password1 = $("#pw_box1").val();
	var password2 = $("#pw_box2").val();

	var password = new Array();
	var reg_pwd = /^.*(?=.{4,8})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;

	for (i = 0; i < password1.length; i++) {
		tmp = password1.charCodeAt(i);
		// document.write(tmp);
		password[i] = tmp;
	}

	if (!reg_pwd.test(password1)) {
		var print = document.getElementById("print");
		print.innerHTML = "영문,숫자 조합으로 4~8자리로 입력해 주십시오.";
		$("#pw_box1").val("");
		$("#pw_box2").val("");
		$("#pw_box1").focus();
		return;
	} else if (reg_pwd.test(password1)) {

		if (password1.length > 3 && password1.length < 9) {
			if (password1 == password2) {
				var print = document.getElementById("print");
				print.innerHTML = "비밀번호가 일치합니다.";
				pwd_check_vl = true;
				return;
			} else if (!(password1 == password2)) {
				var print = document.getElementById("print");
				print.innerHTML = "비밀번호가 일치하지않습니다.";
				$("#pw_box1").val("");
				$("#pw_box2").val("");
				$("#pw_box1").focus();
				pwd_check_vl = false;
				return;
			}// 비밀번호 일치 확인
			return;
		} else if (!(password1.length > 3 && password1.length < 9)) {
			var print = document.getElementById("print");
			print.innerHTML = "비밀번호를 4~8자 사이로 입력해주십시오.";
			return;
		}
	}
}

function modi_AX(email, password, phone) {

	$.ajax({
		url : '/show/sign/modi_AX', //주소
		type : 'POST',
		data : {
			"email" : email,
			"password" : password,
			"phone" : phone
		},
		success : function(result) {
			if (result == "OK") {
				alert('수정되었습니다.');
				location.href='/show';
			} else if (result != "OK") {
				alert('올바르지 않은 값입니다.');
				
				return;
			}
		}
	});
}
</script>
</head>
<body>
<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="join_bg">
			<div class="none_box"><!--아무것도 넣지마 위치값--></div>
			<div id="membership_box">
				<div id="membership">
					<div>
						개인정보수정
					</div>
					<hr />
					<br />
					<div>
						<div class="member_box">
							<label for="id_box" class="big_text">이메일 주소</label>
							<br />
							<input id="id_box_1" class="box_text"type="text" disabled="disabled" maxlength="30" placeholder="&nbsp;&nbsp;이메일 주소를 입력 하세요." value="${modi_email1}"/> @ 
							<select id="id_box_2" disabled="disabled">
								<option>${modi_email2}</option>
								<option value="naver.com">naver.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
							</select>
							<div class="check_box" id ="email_ch" onclick="idcheck()">중복확인</div>
						</div>
						<div class="member_box">
							<label for="name_box" class="big_text">이름</label>
							<br />
							<input id="name_box"  class="size2" type="text" maxlength="30" placeholder="&nbsp;&nbsp;5글자 이하로 작성해주세요." disabled="disabled" value="${modi_name}"/>
						</div>
						<div class="member_box">
							<label for="nickName_box" class="big_text">닉네임</label>
							<br />
							<input id="nickName_box"  class="size2" type="text" maxlength="30" placeholder="&nbsp;&nbsp;4글자 이하로 작성해주세요." disabled="disabled" value="${modi_nickName}"/>
						</div>
						<div class="member_box">
							<label for="pw_box1" class="big_text">새로운 비밀번호</label>
							<br />
							<input id="pw_box1"  class="size2"type="password" maxlength="30" placeholder="&nbsp;&nbsp;4~8자의 영문,숫자 조합으로 입력 하세요."/>
						</div>
						<div class="member_box">
							<label for="pw_box2" class="big_text">새로운 비밀번호 확인</label>
							<br />
							<input id="pw_box2" class="size2" type="password" maxlength="30" onblur="pwd_check()"/>
						</div>
						<font name="print" class="print" id="print" color="red" ></font>
						<div class="member_box size_box">
							<label for="hp_box" class="big_text">휴대폰</label>
							<br />
							<select id="hp_box_1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> - 
							<input id="hp_box_2" class="size5 box_text" type="text" maxlength="4"/ value="${modi_phone2}"> - 
							<input id="hp_box_3" class="size5 box_text" type="text" maxlength="4"/ value="${modi_phone3}">
							
						</div>
						<div class="member_box">
							<label for="no_box" class="big_text">생년월일</label>
							<br />
							<div class="size2">
							<select class="year" id="year" disabled="disabled">
								<option class="year_text">${modi_birth1}</option>
									<script>
										for (i=2016; i > 1900; i-- )
											document.write('<option value="'+i+'">'+i+'</option>');
									</script>
							</select>
							<select class="month" id="month" disabled="disabled">
								<option class="month_text">${modi_birth2}</option>
									<script>
									for (i=1;i < 13 ;i++ )
										document.write('<option value="'+i+'">'+i+'</option>');
									</script>
							</select>
							<select class="day" id="day" disabled="disabled">
								<option class="day_text">${modi_birth3}</option>
									<script>
									for (i=1;i < 32 ;i++ )
										document.write('<option value="'+i+'">'+i+'</option>');
									</script>
							</select>
							</div>
						</div>						
						<div class="modi_btn">
							수정 완료
						</div>		
					</div>			
				</div>
			</div>
		</div>
		<footer>
			<!-- include -->
		</footer>
	</div>
</body>
</html>