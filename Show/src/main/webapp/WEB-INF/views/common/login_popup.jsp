<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/style2.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/password2.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/jquery-3.0.0.js"></script>
<script>
$('.close_btn').click(function(){
	$('.menu_pop').empty();
	$('.menu_pop').fadeOut(1000);
})
$('.cancel_btn').click(function(){
	var email = $("#cancel_email").val();
	var password = $("#cancel_password").val();
		$.ajax({
			url:'/show/sign/cancel_AX',
			type: "PUT",
			headers :{
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			data: JSON.stringify({
			"member_email" : email,
			"member_pass" : password,
			}),
			success:function(result){
				
				if(result == "OK"){
				alert("계정 탈퇴가 취소되었습니다.");
				$('.menu_pop').empty();
				$('.menu_pop').fadeOut(1000);
				$('#cancel_email').val('');
				$('#cancel_password').val('');
				}else {
					$('.menu_pop').empty();
					$('.menu_pop').fadeOut(1000);
				}
   			 }
     });
});
</script>
<TITLE> 로그인 팝업 </TITLE>
	<div id="wrap">
		<div class="password_box1">
			<div class="id_check">
				<p>이 계정은 이미 탈퇴신청이 완료된 계정입니다.</p>
				<p>계정을 이용하시려면 사용자 정보를 입력해주시길 바랍니다.</p><br><br>
				<input id="cancel_email" type="text" placeholder="&nbsp;&nbsp;이메일 입력 하세요"/>
				<input id="cancel_password" type="password" placeholder="&nbsp;&nbsp;비밀번호를 입력 하세요"/>
				<p class="cancel_btn" align="center">보내기</p>
				<p class="close_btn" align="center">닫기</p>
			</div>
		</div>
	</div>
