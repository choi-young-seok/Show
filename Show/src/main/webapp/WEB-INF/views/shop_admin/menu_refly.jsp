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
				$('.menu_pop').fadeOut(0);
				$('.menu_pop').empty();
		
	});
	
	$('.menu_keep_btn_b').click(function(){
		var menu_no = $("#menu_no1").val();
		var menu_category = $("#menu_category").val();
		var menu_name = $("#menu_name").val();
		var menu_price = $("#menu_price").val();
		$.ajax({
			url:'/show/menuUpdate',
			headers: {"Content-Type": "application/json", "X-HTTP-Method-Override": "PUT"},
			type:"PUT",
			data:JSON.stringify({"menu_no":menu_no, "menu_category":menu_category, "menu_name":menu_name, "menu_price":menu_price}),
			success: function(result){
				if(result == 'OK'){
					alert('메뉴가 수정되었습니다.');
				}else if(result == 'NO'){
					alert('메뉴가 수정되지 않았습니다.');
				}
			$('.menu_pop').fadeOut(0);
			$('.menu_pop').empty();
			list();
			}
		});
	});
	
	function list(){
		var group_no = $("#group_no").val();
		$.ajax({
			url:'/show/detailView',
			data:{"group_no":group_no},
			success: function(data){
				$('.shop_view_box').empty(); 
				$('.shop_view_box').append(data);
			}
		});
	}
});
</script>
<TITLE> 메뉴수정 </TITLE>
</HEAD>
	<div class="menu_write_box">
	<input type="hidden" id="group_no" value="${group_no }">
	<input type="hidden" id="menu_no1" value="${menu_no1 }">
		<p class="big_text">&nbsp;&nbsp;메뉴수정</p>
		<div class="menu_boonryu">
			<p class="left_cl text-size">메뉴분류</p>
			<div class="left_cl box-size">
				<input type="text" id="menu_category" value="${menu_no.menu_category }"/>
			</div>
		</div>
		<div class="menu_name">
			<p class="left_cl text-size">메뉴명</p>
			<div class="left_cl box-size">
				<input type="text" id="menu_name" value="${menu_no.menu_name }"/>
			</div>
		</div>
		<div class="menu_pay">
			<p class="left_cl text-size">가격</p>
			<div class="left_cl box-size">
				<input type="text" id="menu_price" value="${menu_no.menu_price }"/>
			</div>
		</div>
		<div class="menu_write_btn_a">
			<div class="menu_keep_btn_b">수정완료</div>
			<div class="close_btn">닫기</div>
		</div>
	</div>