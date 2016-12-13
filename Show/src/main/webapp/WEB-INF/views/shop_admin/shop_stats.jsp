<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		$(".day_ym").show();		
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
			$(".day_ym").show();
			$(".day_choice").hide();
			$(".month_choice").hide();
			$(".stats_day_menu_text").hide();
			$(".stats_day_text").show();

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
			$(".day_ym").hide();
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
			$(".day_ym").hide();
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
			$(".day_ym").hide();
			$(".day_choice").hide();
			$(".month_choice").show();
			$(".stats_day_menu_text").show();
			$(".stats_day_text").hide();

			$(".stats_day_list").hide();
			$(".stats_day_menu_list").hide();
			$(".stats_month_list").hide();
			$(".stats_month_menu_list").show();
		});
		
		$('.show_btn1').click(function(){
			var group_no = $('#group_name_select').val();
			var reservation_month = $('.month1').val();
			if(reservation_month < 10){
				reservation_month = "0" + reservation_month;
			}
			var reservation_time = $('.year1').val()+ reservation_month;
			$.ajax({
				url:'/show/stats_daySell',
				data:{"group_no":group_no, "reservation_time":reservation_time},
				success : function(data) {
					var a = document.getElementById("daySell");
					$('#daySell').empty();
					data.forEach(function(vo, i) {
						a.innerHTML = a.innerHTML + '<div class="stats_day_list">'+
					'<div class="list_score">'+i+1+'</div>'+
					'<div class="list_day">'+vo.reservation_time+'</div>'+
					'<div class="all_pay">'+vo.order_price+'</div>'
					+'</div>';
					});
				}
			});
		});
		
		$('.show_btn2').click(function(){
			var group_no = $('#group_name_select').val();
			var reservation_month = $('.month2').val();
			var reservation_day = $('.day2').val();
				if(reservation_month < 10){
					reservation_month = "0" + reservation_month;
				}
				if(reservation_day < 10){
					reservation_day = "0" + reservation_day;
				}
			var reservation_time = $('.year2').val() + reservation_month + reservation_day;
			$.ajax({
				url:'/show/stats_dayMenuSell',
				data:{"group_no":group_no, "reservation_time":reservation_time},
				success : function(data) {
					var a = document.getElementById("dayMenuSell");
					$('#dayMenuSell').empty();
					data.forEach(function(vo, i) {
						a.innerHTML = a.innerHTML + '<div class="stats_day_menu_list">'+
					'<div class="list_score">'+i+'</div>'+
					'<div class="list_day">'+vo.menu_name+'</div>'+
					'<div class="all_pay">'+vo.menu_price+'</div>'+
					'<div class="all_count">'+vo.menu_count+'</div>'
					+'</div>';
					});
				}
			});
		});
		
		$('.stats_month').click(function(){
			var group_no = $('#group_name_select').val();
			var now = new Date();
		    var reservation_time;
		    reservation_time = String(now.getFullYear());
			$.ajax({
				url:'/show/stats_monthSell',
				data:{"group_no":group_no,"reservation_time":reservation_time},
				success : function(data) {
					var a = document.getElementById("monthSell");
					$('#monthSell').empty();
					data.forEach(function(vo, i) {
						a.innerHTML = a.innerHTML + '<div class="stats_month_list">'+
					'<div class="list_score">'+i+1+'</div>'+
					'<div class="list_day">'+vo.reservation_time+'</div>'+
					'<div class="all_pay">'+vo.order_price+'</div>'
					+'</div>';
					});
				}
			});
		});
		
		$('.show_btn3').click(function(){
			var group_no = $('#group_name_select').val();
			var reservation_month = $('.month3').val();
			var reservation_day = $('.day3').val();
				if(reservation_month < 10){
					reservation_month = "0" + reservation_month;
				}
			var reservation_time = $('.year3').val() + reservation_month;
			$.ajax({
				url:'/show/stats_monthMenuSell',
				data:{"group_no":group_no, "reservation_time":reservation_time},
				success : function(data) {
					var a = document.getElementById("monthMenuSell");
					$('#monthMenuSell').empty();
					data.forEach(function(vo, i) {
						a.innerHTML = a.innerHTML + '<div class="stats_month_menu_list">'+
					'<div class="list_score">'+i+'</div>'+
					'<div class="list_day">'+vo.menu_name+'</div>'+
					'<div class="all_pay">'+vo.menu_price+'</div>'+
					'<div class="all_count">'+vo.menu_count+'</div>'
					+'</div>';
					});
				}
			});
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
			<select id="group_name_select">
				<option>매장선택</option>
				<c:forEach items="${name_list}" var='name'>
					<option class="group_no" value="${name.group_no }">${name.group_name}</option>
				</c:forEach>
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
		
		<div class="stats_menu_box">
			<div class="day_ym">
				<p>날짜선택</p>
				<select class="year1">
					<option class="year_text1">년도
					</option>
						<%for (int i=2016; i < 2100 ;i++ ){%>
							<option value="<%=i%>"><%=i%>년</option>
						<%} %>
				</select>
				<select class="month1">
					<option class="month_text1">월</option>
						<%for (int i=1; i < 13 ;i++ ){%>
							<option value="<%=i%>"><%=i%>월</option>
						<%} %>
				</select>
				<p class="show_btn1">검색</p>
			</div>
			
			<!--익일 종류별 판매량-->
			<div class="day_choice">
				<p>날짜선택</p>
				<select class="year2">
					<option class="year_text2">년도
					</option>
						<%for (int i=2016; i < 2100 ;i++ ){%>
							<option value="<%=i%>"><%=i%>년</option>
						<%} %>
				</select>
				<select class="month2">
					<option class="month_text2">월</option>
						<%for (int i=1; i < 13 ;i++ ){%>
							<option value="<%=i%>"><%=i%>월</option>
						<%} %>
				</select>
				<select class="day2">
					<option class="day_text2">일</option>
						<%for (int i=1; i < 32 ;i++ ){%>
							<option value="<%=i%>"><%=i%>일</option>
						<%} %>
				</select>
				<p class="show_btn2">검색</p>
			</div>
			
			<!--월별 종류별 판매량-->
			<div class="month_choice">
				<p>날짜선택</p>
				<select class="year3">
					<option class="year_text3">년도
					</option>
						<%for (int i=2016; i < 2100 ;i++ ){%>
							<option value="<%=i%>"><%=i%>년</option>
						<%} %>
				</select>
				<select class="month3">
					<option class="month_text3">월</option>
						<%for (int i=1; i < 13 ;i++ ){%>
							<option value="<%=i%>"><%=i%>월</option>
						<%} %>
				</select>
				<p class="show_btn3">검색</p>
			</div>
			
			<!--익일 판매량 / 월별 판매량-->
			<div class="stats_day_text">
				<ul>
					<li>순번</li>
					<li>날짜</li>
					<li>총 수입</li>
				</ul>
			</div>
			<!--익일 종류별 판매량 / 월별 종류별 판매량-->
			<div class="stats_day_menu_text">
				<ul>
					<li>순번</li>
					<li>메뉴명</li>
					<li>총 수입</li>
					<li>총 판매수량</li>
				</ul>
			</div>
		</div>

		<!--익일 판매량-->
		<div id="daySell">
		</div>
		
		<!--익일 메뉴 판매량-->
		<div id="dayMenuSell">
		</div>
		
		<!--월별 판매량-->
		<div id="monthSell">
		</div>
		
		<!--월별 메뉴 판매량-->
		<div id="monthMenuSell">
		</div>
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>
</BODY>
</HTML>
