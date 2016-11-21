<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/introduce.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<TITLE> ON SHOW 소개페이지 </TITLE>

	<div id="wrap">
	<header>
		<%@ include file="../community/include/header.jsp" %>
	</header>
		<%@ include file="include/community_menu.jsp" %>
		<div class="introduce">
			<p class="intro_text">서비스 소개</p>
			<div class="intro_box">
			<!--introbox-->
				<div class="onshow_box">
					<div class="onshow_img onshow">
						<img src="../resources/image/logo.png"/>
					</div>
					<div class="onshow_text onshow">
						<p>대학생들을 위한 테이크아웃 예약웹,</p>
						<p>ON SHOW 입니다.</p>
					</div>
				</div>
				<div class="shop_box">
					<div class="shop_img shop">
						<img src="../resources/image/buy_order.png"/>
					</div>
					<div class="shop_text shop">
						<p>테이크 아웃할 메뉴와 시간을 선택해주세요.</p>
					</div>
				</div>
				<div class="pay_box">
					<div class="pay_img pay">
						<img src="../resources/image/pay.png"/>
					</div>
					<div class="pay_text pay">
						<p>결제와 바로 예약이 진행됩니다.</p>
					</div>
				</div>
				<div class="give_box">
					<div class="give_img give">
						<img src="../resources/image/give.png"/>
					</div>
					<div class="give_text give">
						<p>여러분의 소중한 시간을 절약하세요.</p>
					</div>
				</div>
			<!--introbox-->
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>

