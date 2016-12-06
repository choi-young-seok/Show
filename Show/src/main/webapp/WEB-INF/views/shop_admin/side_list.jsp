<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="resources/css/shop_admin/shop_view_pop3.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){
	$('.pop_close_btn').click(function(){
		$('.menu_pop').fadeOut(0);
		$('.menu_pop').empty();
	});
	
	$('.menu_refly_btn_a').click(function(){
		var sidemenu_no = $(this).parent().children(":first").val();
		var menu_no = $("#menu_no1").val();
		$.ajax({
			url:'/show/side_update',
			data:{"menu_no":menu_no,"sidemenu_no":sidemenu_no},
			type:'GET',
			success: function(result){
				$('.menu_pop').empty();
				$('.menu_pop').append(result);
				 
			}
		});
	});
	
	$('.menu_delete_btn_a').click(function(){
		var menu_no = $("#menu_no1").val();
		var sidemenu_no = $(this).attr('id');
			$.ajax({
				url:'/show/sideDelete',
				headers: {"Content-Type": "application/json", "X-HTTP-Method-Override": "DELETE"},
				type:"DELETE",
				data:JSON.stringify({"menu_no":menu_no,"sidemenu_no":sidemenu_no}),
				type:'DELETE',
				success: function(result){
					if(result=='OK'){
						q = confirm("정말 삭제하시겠습니까?");
						if(q==true){
							alert("삭제되었습니다.");
							$.ajax({
								url:'/show/side_list',
								data:{"menu_no":menu_no},
								success: function(result){
									$('.menu_pop').empty();
									$('.menu_pop').append(result);
								}
							});
						}else{
							alert("취소되었습니다.");
						}
					}//if
				}//success
			});
		});
});
</script>
<title>사이드 메뉴 보기</title>
<div class="menu_view" style="margin-top:200px;">
 <input type="hidden" id="menu_no1" value="${menu_no1 }">
	<div class="menu_top_text_a">
		<ul>
			<li>메뉴분류</li>
			<li>메뉴이름</li>
			<li>가격</li>
			<li>수정</li>
			<li>삭제</li>
		</ul>
	</div>
	 <c:forEach items="${menu_list }" var="i">
	<div class="menu_list_a">
		<input type="hidden" value="${i.sidemenu_no }">
		<div class="menu_image_a">${i.sidemenu_category }</div>
		<div class="menu_name_a">${i.sidemenu_name }</div>
		<div class="menu_pay_a">${i.sidemenu_pay }</div>
		<div class="menu_refly_btn_a" id="menu_ref">
			<p>수정</p>
		</div>
		<div class="menu_delete_btn_a" id="${i.sidemenu_no }">
			<p>삭제</p>
		</div>
	</div>
	</c:forEach> 
</div>
<div class="refly_btn">
	<div class="pop_close_btn">닫기</div>
</div>
