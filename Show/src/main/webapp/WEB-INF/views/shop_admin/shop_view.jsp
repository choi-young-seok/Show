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
		$(".review_box").hide();
		$(".menu_management").click(function(){
			$(".menu_management").css({"background":"#ffa500"});
			$(".review_management").css({"background":"#696969"});
			$(".menu_view").show();
			$(".review_box").hide();
		});
		$(".review_management").click(function(){
			$(".review_management").css({"background":"#ffa500"});
			$(".menu_management").css({"background":"#696969"});
			$(".menu_view").hide();
			$(".review_box").show();
		});
		
		$('.menu_delete_btn').click(function(){
			var menu_no = $(this).parent().children(":eq(0)").val();
			$.ajax({
				url:'/show/menuDelete?menu_no='+menu_no,
				type:'DELETE',
				success: function(result){
					if(result == 'OK'){
						var group_no = $('#group_no').val();
						alert("삭제가 완료되었습니다.");
						$.ajax({    		  
							url:'/show/detailView',
							data:{"group_no":group_no},
							success: function(data){
								$('.shop_view_box').empty(); 
								$('.shop_view_box').append(data);
							}
						});
					}
				}
			});
		});
		
		$('.menu_write_btn').click(function(){
			var group_no = $('#group_no').val();
			$.ajax({
				url:'/show/menu_write',
				data:{"group_no":group_no},
				success: function(result){
					$('.menu_pop').append(result);
					$('.menu_pop').fadeIn(0);
				}
			});
		});
		
		$('.menu_refly_btn').click(function(){
			var menu_no = $(this).parent().children(":eq(0)").val();
			$.ajax({
				url:'/show/menu_update',
				data:{"menu_no":menu_no},
				type:'GET',
				success: function(result){
					$('.menu_pop').append(result);
					$('.menu_pop').fadeIn(0);
				}
			});
		});
		
		$('.enterpriseRemoveApplication').click(function(){
			var group_no = $('#group_no').val();
			$.ajax({
				url:'/show/enterpriseRemoveApplication',
				data:{"group_no":group_no},
				success:function(result){
					if(result=='OK'){
						q = confirm("탈퇴를 신청하시겠습니까?");
						if(q==true){
							alert("신청되었습니다.");
							enterpriseRemoveApplication();
						}else{
							alert("취소되었습니다.");
						}
					}
				}
			});
		});
		
		$('.refly_keep_btn').click(function(){
			enterpriseRemoveApplication();			
		});


		function enterpriseRemoveApplication(){
			var member_no = $('#id').val();
			$.ajax({
				url:'/show/management',
				data:{"member_no":member_no},
				success:function(result){
					$('.adminMain').empty();
					$('.adminMain').append(result);
				}
			});
		}
		
		$('.menu_side_btn').click(function(){
			var group_no = $('#group_no').val();
			var menu_no = $('#menu_no').val();
			var menu_category = $(this).parent().children(":eq(1)").text();
			$.ajax({
				url:'/show/menu_side',
				data:{"group_no":group_no,"menu_no":menu_no,"menu_category":menu_category},
				success: function(result){
					$('.menu_pop').append(result);
					$('.menu_pop').fadeIn(0);
				}
			});
		});
		
	});
	
	
</script>
<TITLE> 매장 상세보기 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
	<input type="hidden" id="id" value="${id }">
		<div class="shop_view_box">
			<div class="shop_info">
				<ul>
					<li>이미지</li>
					<li>매장명</li>
					<li>매장주소</li>
					<li>매장번호</li>
				</ul>
			</div>
			<div class="shop_view">
				<div class="img_box">
					<img src=""/>
					<input type="file" value="${detailView.group_files }"/>
				</div>
				<div class="name_box">
					<p>${detailView.group_name }</p>
					<div class="refly_box">
						<input type="text" class="left_box" value="${detailView.group_name }"/>
					</div>
				</div>
				<div class="addr_box">
					<p>${detailView.group_address }</p>
					<div class="refly_box2">
						<input type="text" class="left_box" value="${detailView.group_address }"/>
					</div>
				</div>
				<div class="number_box">
					<p>${detailView.group_no }</p>
					<input type="hidden" id="group_no" value="${detailView.group_no }">
				</div>
			</div>
			
			<div class="shop_info_btn">
					<ul>
					<li class="enterpriseRemoveApplication">업체탈퇴</li>
					<li class="listOneUpdate">수정</li>
					</ul>
			</div>
			<div class="shop_menu_bar">
				<div class="menu_management">메뉴관리</div>
				<div class="review_management">리뷰관리</div>
			</div>
			<div class="menu_view">
				<div class="menu_top_text">
					<ul>
						<li>메뉴분류</li>
						<li>메뉴이름</li>
						<li>가격</li>
						<li>수정</li>
						<li>삭제</li>
						<li>사이드 추가</li>
						<li>사이드 보기</li>
					</ul>
				</div>
				<c:forEach items="${menuList }" var="m">
				<div class="menu_list">
				<input type="hidden" id="menu_no" value="${m.menu_no }">
					<div class="menu_category">${m.menu_category }</div>
					<div class="menu_name1">${m.menu_name }</div>
					<div class="menu_pay1">${m.menu_price }</div>
					<div class="menu_refly_btn">
						<p>수정</p>
					</div>
					<div class="menu_delete_btn">
						<p>삭제</p>
					</div>
					<div class="menu_side_btn">
						<p>사이드추가</p>
					</div>
					<div class="menu_side_view_btn">
						<p>사이드보기</p>
					</div>
				</div>
				</c:forEach>
				<div class="refly_btn">
					<div class="menu_write_btn">메뉴추가</div>
					<div class="refly_keep_btn">돌아가기</div>
				</div>
			</div>
			<div class="review_box">
				<div class="review_top_text">
					<ul>
						<li>평점</li>
						<li>닉네임</li>
						<li>내용</li>
						<li>삭제</li>
					</ul>
				</div>
				<c:forEach items="${reviewList }" var="r">
				<div class="review_list">
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
		</div>
	</div>
</BODY>
</HTML>