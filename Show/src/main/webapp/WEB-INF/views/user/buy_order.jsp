<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/user/buy_order.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".choice1_menu").hide();
		$(".choice_1").click(function(){
			$(".choice1_menu").slideToggle(500);
		});
		$(".choice2_menu").hide();
		$(".choice_2").click(function(){
			$(".choice2_menu").slideToggle(500);
		});
		$(".choice3_menu").hide();
		$(".choice_3").click(function(){
			$(".choice3_menu").slideToggle(500);
		});
		$(".choice4_menu").hide();
		$(".choice_4").click(function(){
			$(".choice4_menu").slideToggle(500);
		});
		$(".review").hide();
		$(".total_review").click(function(){
			$(".total_review").css({background:"#ffa500"});
			$(".total_menu").css({background:"#696969"});
			$(".menu_bar").hide();
			$(".review").show();
		});
		$(".total_menu").click(function(){
			$(".total_menu").css({background:"#ffa500"});
			$(".total_review").css({background:"#696969"});
			$(".review").hide();
			$(".menu_bar").show();
		});
		$(".order_box").hide();
		$(".menu_in_choice").click(function(){
			$(".order_box").show();
		});
		$(".order_btn").click(function(){
			alert("주문이 완료 되었습니다.");
		});
		$(".order_btn").click(function(){
			var paygo = "pay.html";
			$(location).attr('href',paygo);
		});
	});
</script>
<TITLE> New Document </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="shop_name">
			<ul>
				<li>
					<p>매장이름 : </p>
					<p>매장써라</p>
				</li>
				<li>
					<p>평점</p>
					<p>평점써라</p>
				</li>
			</ul>
			<div class="shop_info">
				<div class="shop_img">
					<img src=""/>
				</div>
				<div class="shop_text">
					<ul>
						<li>영업시간 :</li>
						<li>위치 : </li>
					</ul>
				</div>
			</div>
		</div>
		<div class="menu">
			<div class="total_menu_review">
				<div class="total_menu">메뉴(N개)</div>
				<div class="total_review">리뷰(N개)</div>
			</div>
			<div class="menu_bar">
				<div class="choice_1">TOP10</div>
				<div class="choice1_menu">
				<!--ul 에 for문 돌려ㅋㅋㅋㅋㅋㅋ-->
					<ul class="menu_in_choice">
						<li>디비로 메뉴 넣어줭ㅎㅎㅎ힝^----^ㅋㅋㅋ</li>
						<li>가격 99999원</li>
					</ul>
				</div>
				<!--menu2-->
				<div class="choice_2">주메뉴</div>
				<div class="choice2_menu">
				<!--ul 에 for문 돌려ㅋㅋㅋㅋㅋㅋ-->
					<ul class="menu_in_choice">
						<li>디비로 메뉴 넣어줭ㅎㅎㅎ힝^----^ㅋㅋㅋ</li>
						<li>가격 99999원</li>
					</ul>
				</div>
				<!--menu3-->
				<div class="choice_3">사이드 메뉴</div>
				<div class="choice3_menu">
				<!--ul 에 for문 돌려ㅋㅋㅋㅋㅋㅋ-->
					<ul class="menu_in_choice">
						<li>디비로 메뉴 넣어줭ㅎㅎㅎ힝^----^ㅋㅋㅋ</li>
						<li>가격 99999원</li>
					</ul>
				</div>
				<!--menu4-->
				<div class="choice_4">기타 메뉴</div>
				<div class="choice4_menu">
				<!--ul 에 for문 돌려ㅋㅋㅋㅋㅋㅋ-->
					<ul class="menu_in_choice">
						<li>디비로 메뉴 넣어줭ㅎㅎㅎ힝^----^ㅋㅋㅋ</li>
						<li>가격 99999원</li>
					</ul>
				</div>
			</div>
			<div class="review">
				<!--review_box 부분 for문 돌리-->
				<div class="review_box">
					<div class="star_point">
						<p>평점 :</p>
						<p>여기에 평점</p>
					</div>
					<div class="date_user">
						<p>날짜랑</p>
						<p>유저이름</p>
					</div>
					<div class="review_text">리뷰넣어</div>
				</div>
			</div>
			<!--주문표 부분-->
			<div class="order_memo">
				<div class="memo_text">주문표</div>
				<div class="order_in">
					<div class="order_box">
						<div class="menu_name">&nbsp;&nbsp;메뉴이름DB값</div>
						<div class="menu_delete">삭제하기</div>
						<div class="menu_pay">
							<p>&nbsp;&nbsp;가격 : </p>
							<p>33333원</p>
						</div>
						<div class="menu_count">
							<ul>
								<li>-</li>
								<li>수량</li>
								<li>+</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="order_btn">주문하기</div>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>
