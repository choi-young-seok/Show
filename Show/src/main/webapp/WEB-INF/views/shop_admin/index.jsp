<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/admin_header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/admin_footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/admin_login.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".qna").click(function(){
			$(".qna").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".gong").click(function(){
			$(".gong").css({"background":"#ffa500"});
			$(".qna").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".member").click(function(){
			$(".member").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".shop").click(function(){
			$(".shop").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
		});

		var join = "join/shop_join.html";
		$(".join").click(function(){
			$(location).attr('href',join);
		});
		$(".find_pass").click(function(){
			$(location).attr('href',"password.html");
		});
	});
</head>
<body>

function Login(){
	
   //var frm  = document.getElementById("Account_form");
   var email   = $(".id_box").val();
	var password   = $(".password_box").val();

if(!email){
	alert("이메일을 입력해주세요.");
   return;
}else if(!password){
	alert("비밀번호를 입력해주세요.");
   return;
}

      Login_AX(email,password);   

}
function Login_AX(email,password){

		
	//var barth = year+"-"+month+"-"+day;

		$.ajax({
                    url:'shop_admin_login_process.php',	
                    type:'POST',
                    data:{"email" : email, "password" : password},
                    success:function(result){
          					if(result == "OK"){
								alert('로그인되었습니다..');
							location.replace('index.php');
								}else if(result != "OK"){
								alert(result);
									
							return;
								}

                   			 }
                });


}
</script>
<TITLE> ON SHOW 사장님 페이지 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<div class="header_logo">
				<img src="resources/image/logo.png" class="logo_left"/>
				<p class="logo_left">사장님 페이지</p>
			</div>
			<div class="header_box">
				<div class="qna">업소신청</div>
				<div class="gong">내업소관리</div>
				<div class="member">통계조회</div>
				<div class="shop">주문확인</div>
			</div>
		</header>
		<div class="main">
			<div class="login_box">
				<p>LOGIN</p>
				<div class="login_table">
					<div class="login_text_box">
						<input type="text" placeholder="&nbsp;&nbsp;아이디를 입력해 주세요." class="id_box"/>
						<input type="password" class="password_box" placeholder="&nbsp;&nbsp;비밀번호"/>
					</div>
					<div class="login_btn" onclick="Login()">로그인</div>
				</div>
				<div class="join">회원가입</div>
				<div class="find_pass">비밀번호 찾기</div>
			</div>
		</div>
		<footer>
			<div class="footer_text1">
				<p><a href="">법적고지</a></p>
				<p><a href="">개인정보취급방식</a></p>
				<p><a href="">이용약관</a></p>
				<p><a href="">이메일 무단수집거부</a></p>
			</div>
			<div class="thanks_to">
				<p>Thank`s to -</p>
				<div class="thanks_text">
					<p>Programing : Sin yoo dong , Lee gil hak</p>
					<p>Web Disign : Jo chung hee</p>
				</div>
			</div>
		</footer>
		<div class="copyright">
				<p>Copyright ⓒ 2016 BRKOREA Company. All Rights Reserved.</p>
		</div>
	</div>
</BODY>
</HTML>
