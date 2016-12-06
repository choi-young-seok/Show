<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_order_check.css" rel="stylesheet" type="text/css" />
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
		$('.new_order').click(function(){
			$.ajax({
				url : '',
				type: "POST",
				data: {
					
				},
				succuess:function(result){
					
				}
			});
		});
		
		$(".choice_left").change(function(){
			var group_no =  $(this).val();

			$.ajax({
				url : '/show/new_order',
				type: "POST",
				data: {
					"group_no" : group_no,
					"member_no" : <%=session.getAttribute("id")%>
				},
				success : function(result){
					$().append('${new_list}');
					$().hide();
					$().show();
				}
			});
		});
	});
</script>
<TITLE> 주문관리 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<div class="order_shop_choice">
			<p class="choice_left">매장선택</p>
			<select class="choice_left">
				<option>전체보기</option>
				<c:forEach items="${name_list}" var='name' varStatus="i">
					<option value="${name.group_no}">${name.group_name}</option>
				</c:forEach>
			</select>
		</div>
		<div class="order_check_menu">
			<div class="new_order">신청한 주문</div>
			<div class="wait_order">대기 중인 주문</div>
			<div class="end_order">판매 완료 주문</div>
		</div>
		<div class="order_top_text">
			<ul>
				<li>선택</li>
				<li>주문번호</li>
				<li>주문자명</li>
				<li>주문자번호</li>
				<li>신청메뉴</li>
				<li>금액</li>
				<li>총 결제 금액</li>
				<li>주문상태</li>
			</ul>
		</div>
		<div class="new_order_list">
			<div class="order_left order_choice">
				<input type="checkbox"/>
			</div>
			<div class="order_left order_num">
				<p>주문번호db</p>
			</div>
			<div class="order_left user_name">
				<p>주문자이름</p>
			</div>
			<div class="order_left user_phone">
				<p>주문자연락처</p>
			</div>
			<div class="order_left order_menu">
			</div>
			<div class="order_left order_pay">
				<p>메뉴당 금액 for</p>
				<p>이것도 마진만</p>
			</div>
			<div class="order_left order_all_pay">
				<p>총 걀제 금액 합친거</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>신청중</p>
					<select>
						<option>신청중</option>
						<option>대기중</option>
						<option>판매완료</option>
					</select>
					<p class="check_btn">상태 변경</p>
				</div>
			</div>
		</div>

		<div class="wait_order_list">
			<div class="order_left order_choice">
				<input type="checkbox"/>
			</div>
			<div class="order_left order_num">
				<p>주문번호db</p>
			</div>
			<div class="order_left user_name">
				<p>주문자이름</p>
			</div>
			<div class="order_left user_phone">
				<p>주문자연락처</p>
			</div>
			<div class="order_left order_menu">
				<p>신청메뉴 여러개일수도 있으니까 for문</p>
				<p>이건 마진값만 넣어놓음</p>
			</div>
			<div class="order_left order_pay">
				<p>메뉴당 금액 for</p>
				<p>이것도 마진만</p>
			</div>
			<div class="order_left order_all_pay">
				<p>총 걀제 금액 합친거</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>대기중</p>
					<select>
						<option>신청중</option>
						<option>대기중</option>
						<option>판매완료</option>
					</select>
					<p class="check_btn">상태 변경</p>
				</div>
			</div>
		</div>

		<div class="end_order_list">
			<div class="order_left order_choice">
				<input type="checkbox"/>
			</div>
			<div class="order_left order_num">
				<p>주문번호db</p>
			</div>
			<div class="order_left user_name">
				<p>주문자이름</p>
			</div>
			<div class="order_left user_phone">
				<p>주문자연락처</p>
			</div>
			<div class="order_left order_menu">
				<p>신청메뉴 여러개일수도 있으니까 for문</p>
				<p>이건 마진값만 넣어놓음</p>
			</div>
			<div class="order_left order_pay">
				<p>메뉴당 금액 for</p>
				<p>이것도 마진만</p>
			</div>
			<div class="order_left order_all_pay">
				<p>총 결제 금액 합친거</p>
			</div>
			<div class="order_left order_check">
				<div>
					<p>판매완료</p>
					<select>
						<option>신청중</option>
						<option>대기중</option>
						<option>판매완료</option>
					</select>
					<p class="check_btn">상태 변경</p>
				</div>
			</div>
		</div>
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>
</BODY>
</HTML>
