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
<TITLE> 업체정보 </TITLE>
</HEAD>
<style>

</style>
<script type="text/javascript">
$('.next').click(function(){
	var group_no = ${detail2.group_no}+1;
	$.ajax({
		url:'/show/admin_group_refly',
		data:{"group_no":group_no},
		success: function(result){
			$('.admin_group_refly').empty();
			$('.admin_group_refly').append(result);
			$('.admin_group_refly').fadeIn(0);
		}
	}); 
});
$('.prev').click(function(){
	var group_no = ${detail2.group_no}-1;
	$.ajax({
		url:'/show/admin_group_refly',
		data:{"group_no":group_no},
		success: function(result){
			$('.admin_group_refly').empty();
			$('.admin_group_refly').append(result);
			$('.admin_group_refly').fadeIn(0);
		}
	}); 
});

$('#btn_cancle').click(function(){
	$('.admin_group_refly').empty();
	$('.admin_group_refly').fadeOut(0);
});

</script>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="btn_box">
			<c:if test="${detail2.group_no != 1}" >
		
        	<a href="#" class="prev"><img src="resources/image/prev.png"></a> 
        	</c:if>
        	
        	<c:if test="${detail2.group_no != cnt}">
        	<a href="#" class="next"><img src="resources/image/next.png"></a>
        	</c:if>
        </div>	
		<div class="group_refly">
			<div class="no">
				<p class="no_text text_op text_size">업체번호</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail2.group_no }">
			</div>
			<div class="Gname">
				<p class="Gname_text text_op text_size">업체명</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail2.group_name }">
			</div>
			<div class="category">
				<p class="category_text text_op text_size">업종</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail2.group_category }"></div>
			</div>
			<div class="Mname">
				<p class="Mname_text text_op text_size">업주명</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail2.member_name }">
			</div>
			<div class="address">
				<p class="address_text text_op text_size">주소</p>
				<input type="text" id="show" disabled="disabled" value="&nbsp;&nbsp;${detail2.group_address }">
			</div>
			<div class="phone">
				<p class="phone_text text_op text_size">업체번호</p>
				<input type="text" id="show" disabled="disabled" value="${detail2.group_phone }">  
			</div>
			<div class="ch">
				<p class="ch_text text_op text_size">승인여부</p>
				<input type="text" id="show" disabled="disabled" value="${detail2.group_ch }">  
			</div>
			<div class="delch">
				<p class="delch_text text_op text_size">탈퇴여부</p>
				<input type="text" id="show" disabled="disabled" value="${detail2.group_delete_ch }">  
			</div>
			<div class="files">
				<p class="files_text text_op text_size">로고</p>
				<input type="text" id="show" value="${detail2.group_files }">  
			</div>
			
			
			
			<div class="group_btn">
				<div id="btn_cancle">닫기</div>
			</div>
		</div>
		
	</div>
</BODY>
</HTML>
