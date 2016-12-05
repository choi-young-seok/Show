<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_view.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/menu_wirte2.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){
	$('.review_delete_btn').click(function(){
		var review_no = $(this).parent().children(":eq(0)").val();
		var group_no = $('#group_no').val();
		$.ajax({
			url:'/show/reviewDelete?review_no='+review_no,
			type:'DELETE',
			success: function(result){
				if(result=='OK'){
					q = confirm("정말 삭제하시겠습니까?");
					if(q==true){
						alert("삭제되었습니다.");
							reviewList();
					}else{
						alert("취소되었습니다.");
					}
				}//if
			}//success
		});
	});
	
	function reviewList(){
		var group_no = $('#group_no').val();
		$.ajax({
			url:'/show/review_list',
			data:{"group_no":group_no},
			success: function(data){
				$('.menu_review_box').empty(); 
				$('.menu_review_box').append(data);
				$(".review_management").css({"background":"#ffa500"});
				$(".menu_management").css({"background":"#696969"});
			}
		}); 
	}
});
</script>
<title>리뷰 관리</title>
</HEAD>
<div class="review_box">
<input type="hidden" id="group_no" value="${group_no }">
	<div class="review_top_text">
		<ul>
			<li>평점</li>
			<li>닉네임</li>
			<li>내용</li>
			<li>삭제</li>
		</ul>
	</div>
	<c:forEach items="${reviewList1 }" var="r">
		<div class="review_list">
			<input type="hidden" id="review_no" value="${r.review_no }">
			<div class="review_score">
				<p>${r.review_score }</p>
			</div>
			<div class="review_user_name">
				<p>${r.nickname }</p>
			</div>
			<div class="review_text">
				<p>${r.review_text }</p>
			</div>
			<div class="review_delete_btn">
				<p>삭제</p>
			</div>
		</div>
	</c:forEach>
</div>