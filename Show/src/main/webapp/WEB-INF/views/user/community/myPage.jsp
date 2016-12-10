<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	var member_no = <%=session.getAttribute("id")%>;
	
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

		
		 $('.check_btn').click(function(){//환불 버튼 누르면
			alert(member_no)
		 var group_no = $('.group_no').attr("id");
		 var order_no = $('#order_no').val();
			alert(order_no)
			alert(group_no)
			$.ajax({
				url:"/show/orderState",
				type: "PUT",
				headers:{
					"Content-Type":"application/json",
					"X-HTTP-Method-Override":"PUT"
				},
				data:JSON.stringify({
					"order_no":order_no,
					"member_no":member_no,
					"group_no":group_no
				}),
				success:function(){
					alert("성공")
				}
			});
		}); 
		 
		 $('.wait_order').click(function(){//대기중인 거 나타내기
			 
		});  
		
	});
</script>
<TITLE> 마이페이지 </TITLE>
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
				<li>시간</li>
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
				<fmt:formatDate value="${list.order_time }" pattern="yyyy/MM/dd hh:mm"/>
			</div>
			<div class="order_left order_num">
				<p>${list.order_no}</p>	
			</div>
			<div class="order_left user_name">
				<p id="${list.group_no }" class="group_no">${list.group_name }</p>
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
					<p>${list.order_refund }</p>
					
			 	<p id="${list.order_no }" class="check_btn">환불 신청 </p>
				</div>
			</div>
			<hr>
			</c:if>
			</c:forEach>
		</div>

		<div class="wait_order_list">
			<c:forEach items="${list }" var="list">
			<c:if test="${list.owner_ch eq '대기'}">
			<div class="order_left order_choice">
				<fmt:formatDate value="${list.order_time }" pattern="yyyy/MM/dd hh:mm"/>
			</div>
			<div class="order_left order_num">
				<p>${list.order_no}</p>
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
				<div>${list2.menu_name }</div>
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
					<p>${list.order_refund }</p>
					
			 	<p id="${list.order_no }" class="check_btn">환불 신청</p>
				</div>
			</div>
			<hr>
			</c:if>
			</c:forEach>
		</div>

		<div class="end_order_list">
			<c:forEach items="${list3 }" var="list3">
			<div class="order_left order_choice">
				<fmt:formatDate value="${list3.order_time }" pattern="yyyy/MM/dd hh:mm"/>
			</div>
			<div class="order_left order_num">
				<p>${list3.order_no }</p>
			</div>
			<div class="order_left user_name">
				<p>${list3.group_name }</p>
			</div>
			<div class="order_left user_phone">
				<p>${list3.group_phone }</p>
			</div>
			
			<div class="order_left order_menu">
			<c:forEach items="${list4 }" var="list4">
			<c:if test="${list3.order_no eq list4.order_no}">
				<br>
				<div>${list4.menu_name }</div>
			</c:if>
			</c:forEach>
			</div>
			<div class="order_left order_pay">
			<c:forEach items="${list4 }" var="list4">
			<c:if test="${list3.order_no eq list4.order_no}">
				<p>${list4.menu_count }</p>
			</c:if>
			</c:forEach>	
			</div>
			<div class="order_left order_all_pay">
				<p>${list3.menu_price} 원</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>${list3.order_refund }</p>
					
			 	<p id="${list3.order_no }" class="check_btn">환불 신청   </p>
				</div>
			</div>
			<hr>
			</c:forEach>
		</div>

	
	</div>
</BODY>
</HTML>
