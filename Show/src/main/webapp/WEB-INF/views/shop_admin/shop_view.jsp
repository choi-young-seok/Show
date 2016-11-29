<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_view.css" rel="stylesheet" type="text/css" />
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
	});
</script>
<TITLE> 매장 상세보기 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="shop_view_box">
			<div class="shop_info">
				<ul>
					<li>이미지</li>
					<li>매장명</li>
					<li>매장주소</li>
					<li>매장번호</li>
					<li>인근대학</li>
				</ul>
			</div>
			<div class="shop_view">
				<div class="img_box">
					<img src=""/>
					<input type="file"/>
				</div>
				<div class="name_box">
					<p>매장이름db</p>
					<div class="refly_box">
						<input type="text" class="left_box"/>
					</div>
				</div>
				<div class="addr_box">
					<p>주소db</p>
					<div class="refly_box2">
						<input type="text" class="left_box"/>
					</div>
				</div>
				<div class="number_box">
					<p>매장번호db</p>
					<div class="refly_box3">
						<input type="text" class="left_box"/>
					</div>
				</div>
				<div class="school_box">
					<p>인근대학db</p>
					<div class="refly_box4">
						<input type="text" class="left_box"/>
					</div>
				</div>
			</div>
			<div class="shop_info_btn">
					<p>수정 내용 저장</p>
				</div>
			<div class="shop_menu_bar">
				<div class="menu_management">메뉴관리</div>
				<div class="review_management">리뷰관리</div>
			</div>
			<div class="menu_view">
				<div class="menu_top_text">
					<ul>
						<li>선택</li>
						<li>메뉴분류</li>
						<li>메뉴이름</li>
						<li>가격</li>
						<li>수정</li>
						<li>삭제</li>
					</ul>
				</div>
				<div class="menu_list">
					<div class="menu_choice">
						<input type="checkbox"/>
					</div>
					<div class="menu_image">
						메뉴분류db
					</div>
					<div class="menu_name">메뉴이름db</div>
					<div class="menu_pay">가격db</div>
					<div class="menu_refly_btn">
						<p>수정</p>
					</div>
					<div class="menu_delete_btn">
						<p>삭제</p>
					</div>
				</div>
				<div class="refly_btn">
					<div class="menu_write_btn">메뉴추가</div>
					<div class="choice_delete_btn">선택삭제</div>
					<div class="refly_keep_btn">수정내용 저장</div>
				</div>
			</div>
			<div class="review_box">
				<div class="review_top_text">
					<ul>
						<li>선택</li>
						<li>평점</li>
						<li>닉네임</li>
						<li>내용</li>
						<li>삭제</li>
					</ul>
				</div>
				<div class="review_list">
					<div class="review_choice">
						<input type="checkbox"/>
					</div>
					<div class="review_score">
						<p>평점db</p>
					</div>
					<div class="review_user_name">
						<p>유저닉네임db</p>
					</div>
					<div class="review_text">
						<p>리뷰내용db</p>
					</div>
					<div class="review_delete_btn">
						<p>삭제</p>
					</div>
				</div>
				<div class="review_choice_delete">
					<p>선택삭제</p>
				</div>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>