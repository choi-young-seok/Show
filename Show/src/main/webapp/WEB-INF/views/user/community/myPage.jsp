<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/user/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/user/shop_order_check.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		
		$(".wait_order_list").hide();
		$(".end_order_list").hide();
		$(".new_order").click(function(){
			$(".new_order").css({"background":"#ffa500"});
			$(".wait_order").css({"background":"#3d3d3d"});
			$(".end_order").css({"background":"#3d3d3d"});
			$(".new_order_list").show();
			$(".wait_order_list").hide();
			$(".end_order_list").hide();
		});
	
		$(".wait_order").click(function(){
			$(".new_order").css({"background":"#3d3d3d"});
			$(".wait_order").css({"background":"#ffa500"});
			$(".end_order").css({"background":"#3d3d3d"});
			$(".new_order_list").hide();
			$(".wait_order_list").show();
			$(".end_order_list").hide();
		});
		
		$(".end_order").click(function(){
			$(".new_order").css({"background":"#3d3d3d"});
			$(".wait_order").css({"background":"#3d3d3d"});
			$(".end_order").css({"background":"#ffa500"});
			$(".new_order_list").hide();
			$(".wait_order_list").hide();
			$(".end_order_list").show();
		});
		
		
		
		$('.wait_order').click(function(){
			$.ajax({
				url:"",
				data:{
					order_no
					member_no
					group_no
				},
				success:function(){
					
				}
			});
		});
	});
</script>
<TITLE> 마이 페이지 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
	
		<div class="order_check_menu">
			<div class="new_order">신청한 주문</div>
			<div class="wait_order">대기 중인 주문</div>
			<div class="end_order">환불 요청</div>
		</div>
		<div class="order_top_text">
			<ul>
				<li></li>
				<li>주문번호</li>
				<li>업체명</li>
				<li>업체전화번호</li>
				<li>신청메뉴</li>
				<li>수량</li>
				<li>총 결제 금액</li>
				<li>주문상태</li>
			</ul>
		</div>
		<div class="new_order_list">
			<c:forEach items="${list }" var="list">
			<c:if test="${list.owner_ch eq '신청중'}">
			<div class="order_left order_choice">
				<input type="hidden"/>
			</div>
			<div class="order_left order_num">
				<p>${list.order_no }</p>
			</div>
			<div class="order_left user_name">
				<p>${list.group_name }</p>
			</div>
			<div class="order_left user_phone">
				<p>${list.group_phone }</p>
			</div>
			
			<div class="order_left order_menu">
			<c:forEach items="${list2 }" var="list2">
			<c:if test="${list.order_no eq list2.order_no}">
				<br>
				<p>${list2.menu_name }</p>
			</c:if>
			</c:forEach>
			</div>
			<div class="order_left order_pay">
			<c:forEach items="${list2 }" var="list2">
			<c:if test="${list.order_no eq list2.order_no}">
				<p>${list2.menu_count }</p>
			</c:if>
			</c:forEach>	
			</div>
			<div class="order_left order_all_pay">
				<p>${list.menu_price} 원</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>${list.owner_ch }</p>
					
			<p class="check_btn">환불 신청</p>
				</div>
			</div>
			<hr>
			</c:if>
			</c:forEach>
		</div>

		<div class="wait_order_list">
			<c:forEach items="${list }" var="list">
			<c:if test="${list.owner_ch eq '대기중'}">
			<div class="order_left order_choice">
				<input type="hidden"/>
			</div>
			<div class="order_left order_num">
				<p>${list.order_no }</p>
			</div>
			<div class="order_left user_name">
				<p>${list.group_name }</p>
			</div>
			<div class="order_left user_phone">
				<p>${list.group_phone }</p>
			</div>
			
			<div class="order_left order_menu">
			<c:forEach items="${list2 }" var="list2">
			<c:if test="${list.order_no eq list2.order_no}">
				<br>
				<p>${list2.menu_name }</p>
			</c:if>
			</c:forEach>
			</div>
			<div class="order_left order_pay">
			<c:forEach items="${list2 }" var="list2">
			<c:if test="${list.order_no eq list2.order_no}">
				<p>${list2.menu_count }</p>
			</c:if>
			</c:forEach>	
			</div>
			<div class="order_left order_all_pay">
				<p>${list.menu_price} 원</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>${list.owner_ch }</p>
					
			 	<p class="check_btn">환불 신청</p>
				</div>
			</div>
			<hr>
			</c:if>
			</c:forEach>
		</div>
		
		<div class="end_order_list">
			<c:forEach items="${list }" var="list">
			<c:if test="${list.owner_ch eq '환불 요청 중'}">
			<div class="order_left order_choice">
				<input type="hidden"/>
			</div>
			<div class="order_left order_num">
				<p>${list.order_no }</p>
			</div>
			<div class="order_left user_name">
				<p>${list.group_name }</p>
			</div>
			<div class="order_left user_phone">
				<p>${list.group_phone }</p>
			</div>
			
			<div class="order_left order_menu">
			<c:forEach items="${list2 }" var="list2">
			<c:if test="${list.order_no eq list2.order_no}">
				<br>
				<p>${list2.menu_name }</p>
			</c:if>
			</c:forEach>
			</div>
			<div class="order_left order_pay">
			<c:forEach items="${list2 }" var="list2">
			<c:if test="${list.order_no eq list2.order_no}">
				<p>${list2.menu_count }</p>
			</c:if>
			</c:forEach>	
			</div>
			<div class="order_left order_all_pay">
				<p>${list.menu_price} 원</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>${list.owner_ch }</p>
					
			 	<p class="check_btn">환불 신청 취소</p>
				</div>
			</div>
			<hr>
			</c:if>
			</c:forEach>
		</div>

	
	</div>
</BODY>
</HTML>
