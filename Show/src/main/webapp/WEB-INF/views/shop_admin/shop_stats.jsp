<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_stats.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".day_choice").hide();
		$(".month_choice").hide();
		$(".stats_day_menu_text").hide();
		$(".stats_day_menu_list").hide();
		$(".stats_month_list").hide();
		$(".stats_month_menu_list").hide();


		$(".stats_day").click(function(){
			$(".stats_day").css({"background":"#ffa500"});
			$(".stats_day_menu").css({"background":"#3d3d3d"});
			$(".stats_month").css({"background":"#3d3d3d"});
			$(".stats_month_menu").css({"background":"#3d3d3d"});
			$(".day_choice").hide();
			$(".month_choice").hide();
			$(".stats_day_text").show();
			$(".stats_day_menu_text").hide();

			$(".stats_day_list").show();
			$(".stats_day_menu_list").hide();
			$(".stats_month_list").hide();
			$(".stats_month_menu_list").hide();
		});
		$(".stats_day_menu").click(function(){
			$(".stats_day").css({"background":"#3d3d3d"});
			$(".stats_day_menu").css({"background":"#ffa500"});
			$(".stats_month").css({"background":"#3d3d3d"});
			$(".stats_month_menu").css({"background":"#3d3d3d"});
			$(".day_choice").show();
			$(".month_choice").hide();
			$(".stats_day_menu_text").show();
			$(".stats_day_text").hide();

			$(".stats_day_list").hide();
			$(".stats_day_menu_list").show();
			$(".stats_month_list").hide();
			$(".stats_month_menu_list").hide();
		});
		$(".stats_month").click(function(){
			$(".stats_day").css({"background":"#3d3d3d"});
			$(".stats_day_menu").css({"background":"#3d3d3d"});
			$(".stats_month").css({"background":"#ffa500"});
			$(".stats_month_menu").css({"background":"#3d3d3d"});
			$(".day_choice").hide();
			$(".month_choice").hide();
			$(".stats_day_text").show();
			$(".stats_day_menu_text").hide();

			$(".stats_day_list").hide();
			$(".stats_day_menu_list").hide();
			$(".stats_month_list").show();
			$(".stats_month_menu_list").hide();
		});
		$(".stats_month_menu").click(function(){
			$(".stats_day").css({"background":"#3d3d3d"});
			$(".stats_day_menu").css({"background":"#3d3d3d"});
			$(".stats_month").css({"background":"#3d3d3d"});
			$(".stats_month_menu").css({"background":"#ffa500"});
			$(".day_choice").hide();
			$(".month_choice").show();
			$(".stats_day_menu_text").show();
			$(".stats_day_text").hide();

			$(".stats_day_list").hide();
			$(".stats_day_menu_list").hide();
			$(".stats_month_list").hide();
			$(".stats_month_menu_list").show();
		});

	});
</script>
<TITLE> 통계 관리 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<div class="stats_shop_choice">
			<p>매장선택</p>
			<select>
				<option>매장선택</option>
				<option>매장명</option>
			</select>
		</div>
		<div class="shop_stats">
			<div class="stats_menu">
				<div class="stats_day">익일 판매량</div>
				<div class="stats_day_menu">익일 종류별 판매량</div>
				<div class="stats_month">월별 판매량</div>
				<div class="stats_month_menu">월별 종류별 판매량</div>
			</div>
		</div>
		<!--익일 종류별 판매량-->
		<div class="stats_menu_box">
			<div class="day_choice">
				<p>날짜선택</p>
				<select class="year">
					<option class="year_text">년도
					</option>
						<%for (int i=2016; i < 2100 ;i++ ){%>
							<option value="<%=i%>">+i+</option>);
						<%} %>
				</select>
				<select class="month">
					<option class="month_text">월</option>
						<%for (int i=1; i < 13 ;i++ ){%>
							<option value="<%=i%>">+i+</option>);
						<%} %>
				</select>
				<select class="day">
					<option class="day_text">일</option>
						<%for (int i=1; i < 32 ;i++ ){%>
							<option value="<%=i%>">+i+</option>);
						<%} %>
				</select>
				<p class="show_btn">검색</p>
			</div>
			<!--익일 종류별 판매량-->

			<!--월별 종류별 판매량-->
			<div class="month_choice">
				<p>날짜선택</p>
				<select class="year">
					<option class="year_text">년도
					</option>
						<%for (int i=2016; i < 2100 ;i++ ){%>
							<option value="<%=i%>">+i+</option>);
						<%} %>
				</select>
				<select class="month">
					<option class="month_text">월</option>
						<%for (int i=1; i < 13 ;i++ ){%>
							<option value="<%=i%>">+i+</option>);
						<%} %>
				</select>
				<p class="show_btn">검색</p>
			</div>
			<!--익일 종류별 판매량-->

			<!--익일 판매량 / 월별 판매량-->
			<div class="stats_day_text">
				<ul>
					<li>순번</li>
					<li>날짜</li>
					<li>총 수입</li>
					<li>총 판매수량</li>
				</ul>
			</div>
			<!--익일 판매량 / 월별 판매량-->

			<!--익일 종류별 판매량 / 월별 종류별 판매량-->
			<div class="stats_day_menu_text">
				<ul>
					<li>순번</li>
					<li>메뉴명</li>
					<li>총 수입</li>
					<li>총 판매수량</li>
				</ul>
			</div>
			<!--익일 종류별 판매량 / 월별 종류별 판매량-->
		</div>

		<!--익일 판매량-->
		<div class="stats_day_list">
			<div class="list_score">순번db</div>
			<div class="list_day">날짜 db</div>
			<div class="all_pay">총 수입db</div>
			<div class="all_count">총 판매수량db</div>
		</div>
		<!--익일 판매량-->
		<!--익일 메뉴 판매량-->
		<div class="stats_day_menu_list">
			<div class="list_score">순번db</div>
			<div class="list_day">메뉴 db</div>
			<div class="all_pay">총 수입db</div>
			<div class="all_count">총 판매수량db</div>
		</div>
		<!--익일 판매량-->
		<!--월별 판매량-->
		<div class="stats_month_list">
			<div class="list_score">순번db</div>
			<div class="list_day">날짜 db</div>
			<div class="all_pay">총 수입db</div>
			<div class="all_count">총 판매수량db</div>
		</div>
		<!--익일 판매량-->
		<!--월별 메뉴 판매량-->
		<div class="stats_month_menu_list">
			<div class="list_score">순번db</div>
			<div class="list_day">메뉴 db</div>
			<div class="all_pay">총 수입db</div>
			<div class="all_count">총 판매수량db</div>
		</div>
		<!--익일 판매량-->
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>
</BODY>
</HTML>
