<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/menu_refly2.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.close_btn').click(function(){
		var menu_no = $("#menu_no").val();
		$.ajax({
			url:'/show/menu_update',
			data:{"menu_no":menu_no},
			success: function(result){
				$('.menu_pop').fadeOut(0);
				$('.menu_pop').empty();
			}
		});
	});
});
</script>
<TITLE> 메뉴수정 </TITLE>
</HEAD>
	<div class="menu_write_box">
		<p class="big_text">&nbsp;&nbsp;메뉴수정</p>
		<div class="menu_boonryu">
			<p class="left_cl text-size">메뉴분류</p>
			<div class="left_cl box-size">
				<input type="text" value="${menu_no.menu_category }"/>
			</div>
		</div>
		<div class="menu_name">
			<p class="left_cl text-size">메뉴명</p>
			<div class="left_cl box-size">
				<input type="text" value="${menu_no.menu_name }"/>
			</div>
		</div>
		<div class="menu_pay">
			<p class="left_cl text-size">가격</p>
			<div class="left_cl box-size">
				<input type="text" value="${menu_no.menu_price }"/>
			</div>
		</div>
		<div class="menu_write_btn_a">
			<div class="menu_keep_btn_b">수정완료</div>
			<div class="close_btn">닫기</div>
		</div>
	</div>