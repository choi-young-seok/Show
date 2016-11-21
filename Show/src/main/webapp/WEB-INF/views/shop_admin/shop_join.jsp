<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/common/join.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script src="../resources/js/common/joinjs.js"></script>
<script>
	$(document).ready(function(){
		var join = "../index.jsp";
		$(".join_btn").click(function(){
			sell_Account();
		});
		//약관전체 동의
		$("#dd2").click(function(){

        var chk = $(this).is(":checked");//.attr('checked');

        if(chk) $(".check_text input").prop('checked', true);

        else  $(".check_text input").prop('checked', false);
		});
		//생년월일
	});
</script>
<TITLE> ON SHOW 회원가입 </TITLE>
</HEAD>
<style>

</style>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="join_bg">
			<div class="none_box"><!--아무것도 넣지마 위치값--></div>
			<div id="membership_box">
				<div id="membership">
					<div>
						회원가입
					</div>
					<hr />
					<br />
					<div>
						<div class="member_box">
							<label for="id_box" class="big_text">이메일 주소</label>
							<br />
							<input id="id_box_1" class="box_text"type="text" maxlength="30" placeholder="&nbsp;&nbsp;이메일 주소를 입력 하세요."/> @ 
							<select id="id_box_2">
								<option>선택하세요</option>
								<option value="naver.com">naver.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
							</select>
							<div id="email_ch" class="check_box">중복확인</div>
						</div>
						<div class="member_box">
							<label for="name_box" class="big_text">성명</label>
							<br />
							<input id="name_box"  class="size2" type="text" maxlength="30"/>
						</div>
						<div class="member_box">
							<label for="pw_box1" class="big_text">비밀번호</label>
							<br />
							<input id="pw_box1"  class="size2"type="password" maxlength="30"/>
						</div>
						<div class="member_box">
							<label for="pw_box2" class="big_text">비밀번호 확인</label>
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
							<input id="hp_box_2" class="size5 box_text" type="text" maxlength="4"/> - 
							<input id="hp_box_3" class="size5 box_text" type="text" maxlength="4"/>
							
						</div>
						<div class="member_box">
							<label for="no_box" class="big_text">생년월일</label>
							<br />
							<div class="size2">
							<select class="year">
								<option class="year_text" value="">년도
								</option value="">
									<script>
										for (i=2016; i > 1089 ;i-- )
											document.write('<option value="'+i+'">'+i+'</option>');
									</script>
							</select>
							<select class="month">
								<option class="month_text">월</option>
									<script>
									for (i=1;i < 13 ;i++ )
										document.write('<option value="'+i+'">'+i+'</option>');
									</script>
							</select>
							<select class="day">
								<option class="day_text">일</option>
									<script>
									for (i=1;i < 32 ;i++ )
										document.write('<option value="'+i+'">'+i+'</option>');
									</script>
							</select>
							</div>
						</div>		
						<div class="member_box">
							<label for="no_box" class="big_text">약관동의</label>
							<br />
							<div class="check">
								<label for="dd2" class="check_text">
								<input id="dd2" type="checkbox" />
								전체 동의 
								</label>
							</div>
							<div class="check">
								<label for="aa2" class="check_text">
									<input id="aa2" type="checkbox" />
									이용약관 동의 
									<a href="#">내용보기</a>
								</label>
							</div>
							<div class="check">
								<label for="bb2" class="check_text">
									<input id="bb2" type="checkbox" />
									전자금융거래 이용약관 
									<a href="#">내용보기</a>
								</label>
							</div>
							<div class="check">
								
								<label for="cc2" class="check_text">
									<input id="cc2" type="checkbox" />
									개인정보 수집 이용 동의
									<a href="#">내용보기</a>
								</label>
							</div>
						</div>
						<div class="join_btn" onclick="Account();">
							완료
						</div>				
					</div>			
				</div>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>
