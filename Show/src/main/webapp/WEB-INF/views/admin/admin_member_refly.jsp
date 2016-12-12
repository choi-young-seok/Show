<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script type="text/javascript">
$('.next').click(function(){
	var member_no = ${detail.member_no}+1;
	$.ajax({
		url:'/show/admin_member_refly',
		data:{"member_no":member_no},
		success: function(result){
			$('.admin_member_refly').empty();
			$('.admin_member_refly').append(result);
			$('.admin_member_refly').fadeIn(0);
		}
	}); 
});
$('.prev').click(function(){
	var member_no = ${detail.member_no}-1;
	$.ajax({
		url:'/show/admin_member_refly',
		data:{"member_no":member_no},
		success: function(result){
			$('.admin_member_refly').empty();
			$('.admin_member_refly').append(result);
			$('.admin_member_refly').fadeIn(0);
		}
	}); 
});
$('#btn_cancle').click(function(){
	$('.admin_member_refly').empty();
	$('.admin_member_refly').fadeOut(0);
});


</script>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
				<div class="btn_box">
			<c:if test="${detail.member_no != 1}" >
		
        	<a href="#" class="prev"><img src="resources/image/prev.png"></a> 
        	</c:if>
        	
        	<c:if test="${detail.member_no != cnt}">
        	<a href="#" class="next"><img src="resources/image/next.png"></a>
        	</c:if>
        </div>	
		<div class="member_refly">
			<div class="email">
				<p class="email_text text_op text_size">이메일</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail.member_email }">
			</div>
			<div class="name">
				<p class="name_text text_op text_size">닉네임</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail.member_nickName }"></div>
			</div>
			<div class="password">
				<p class="password_text text_op text_size">비밀번호</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail.member_pass }">
			</div>
			<div class="phone">
				<p class="phone_text text_op text_size">휴대폰</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail.member_phone }">
			</div>
			<div class="birth">
				<p class="birth_text text_op text_size">생년월일</p>
				<input type="text" id="show" disabled="disabled" value="${detail.member_birth }">  
                          
				
				
			</div>
			<div class="member_btn">
				<div id="btn_cancle">닫기</div>
			</div>
		</div>
		
	</div>
</BODY>
</HTML>
