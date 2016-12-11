<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_order_check.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script src="resources/js/common/order_menu.js"></script>
<script>
	$(document).ready(function(){
		var group_no;
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
		
		function newOrder(order_no){
			$.ajax({
				url : '/show/menu_name',
				type: "POST",
				data: {
					"group_no" : group_no,
					"member_no" : <%=session.getAttribute("id")%>,
					"order_no" : order_no
				},
				success : function(name){
					var b = document.getElementById("m_n"+order_no);
					var total = document.getElementById("total"+order_no);
					name.forEach(function(elt, i) {
						b.innerHTML = b.innerHTML + '<br><p>'+elt.menu_name+'</p>';
					total.innerHTML = total.innerHTML + '<p>총 '+elt.total+'원</p>';
					})
				}
			});

			$.ajax({
				url : '/show/menu_name',
				type: "POST",
				data: {
					"group_no" : group_no,
					"member_no" : <%=session.getAttribute("id")%>,
					"order_no" : order_no
				},
				success : function(price){
					var c = document.getElementById("m_p"+order_no);
					price.forEach(function(elt, i) {
						c.innerHTML = c.innerHTML + '<p>'+elt.menu_count+'개</p>';
					})
				}
			});
		}

		
	$(".choice_left").change(function(){
			$('#new').empty();	$('#wait').empty();	$('#end').empty();
			group_no =  $(this).val();
			$.ajax({
				url : '/show/new_order',
				type: "POST",
				data: {
					"group_no" : group_no,
					"member_no" : <%=session.getAttribute("id")%>
				},
				success : function(omvo){
					var a = document.getElementById("new");
					omvo.forEach(function(vo, i) { //items와 index다.
						if(vo.owner_ch == '신청중'){
						a.innerHTML = a.innerHTML+'<div class="new_order_list">'+
							'<div class="order_left order_choice">'+
								'<p>'+vo.reservation_time+'</p>'+
							'</div>'+
							'<div class="order_left order_num">'+
								'<p>'+vo.order_no+'</p>'+
							'</div>'+
							'<div class="order_left user_name">'+
								'<p>'+vo.order_name+'</p>'+
							'</div>'+
							'<div class="order_left user_phone">'+
								'<p>'+vo.order_phone+'</p>'+
							'</div>'+
							'<div class="order_left order_menu" id="m_n'+vo.order_no+'">'+
							'</div>'+
							'<div class="order_left order_pay" id="m_p'+vo.order_no+'">'+
							'</div>'+
							'<div class="order_left order_all_pay" id="total'+vo.order_no+'">'+
							'</div>'+
							'<div class="order_left order_check">'+
								'<div>'+
									'<select>'+
										'<option value="신청중" selected="selected">신청중</option>'+
										'<option value="대기">대기중</option>'+
										'<option value="완료">판매완료</option>'+
									'</select>'+
									'<p id="'+vo.order_no+'" class="check_btn">상태 변경</p>'+
								'</div>'+
							'</div>'+
						'</div>';
						
						newOrder(vo.order_no);
						
					}
				});
			}
		});

	});
		$(".new_order").click(function(){
			$('#new').empty();	$('#wait').empty();	$('#end').empty();
			$.ajax({
				url : '/show/new_order',
				type: "POST",
				data: {
					"group_no" : group_no,
					"member_no" : <%=session.getAttribute("id")%>
				},
				success : function(omvo){
					var a = document.getElementById("new");
					omvo.forEach(function(vo, i) { //items와 index다.
						if(vo.owner_ch == '신청중'){
						a.innerHTML = a.innerHTML+'<div class="new_order_list">'+
							'<div class="order_left order_choice">'+
								'<p>'+vo.reservation_time+'</p>'+
							'</div>'+
							'<div class="order_left order_num">'+
								'<p>'+vo.order_no+'</p>'+
							'</div>'+
							'<div class="order_left user_name">'+
								'<p>'+vo.order_name+'</p>'+
							'</div>'+
							'<div class="order_left user_phone">'+
								'<p>'+vo.order_phone+'</p>'+
							'</div>'+
							'<div class="order_left order_menu" id="m_n'+vo.order_no+'">'+
							'</div>'+
							'<div class="order_left order_pay" id="m_p'+vo.order_no+'">'+
							'</div>'+
							'<div class="order_left order_all_pay" id="total'+vo.order_no+'">'+
							'</div>'+
							'<div class="order_left order_check">'+
								'<div>'+
									'<select>'+
										'<option value="신청중" selected="selected">신청중</option>'+
										'<option value="대기">대기중</option>'+
										'<option value="완료">판매완료</option>'+
									'</select>'+
									'<p id="'+vo.order_no+'" class="check_btn">상태 변경</p>'+
								'</div>'+
							'</div>'+
						'</div>';
					
						newOrder(vo.order_no);
					}
				});
			}
		});
			playAlert = setInterval(function() {
				$('#new').empty();	$('#wait').empty();	$('#end').empty();
				$.ajax({
					url : '/show/new_order',
					type: "POST",
					data: {
						"group_no" : group_no,
						"member_no" : <%=session.getAttribute("id")%>
					},
					success : function(omvo){
						var a = document.getElementById("new");
						omvo.forEach(function(vo, i) { //items와 index다.
							if(vo.owner_ch == '신청중'){
							a.innerHTML = a.innerHTML+'<div class="new_order_list">'+
								'<div class="order_left order_choice">'+
									'<p>'+vo.reservation_time+'</p>'+
								'</div>'+
								'<div class="order_left order_num">'+
									'<p>'+vo.order_no+'</p>'+
								'</div>'+
								'<div class="order_left user_name">'+
									'<p>'+vo.order_name+'</p>'+
								'</div>'+
								'<div class="order_left user_phone">'+
									'<p>'+vo.order_phone+'</p>'+
								'</div>'+
								'<div class="order_left order_menu" id="m_n'+vo.order_no+'">'+
								'</div>'+
								'<div class="order_left order_pay" id="m_p'+vo.order_no+'">'+
								'</div>'+
								'<div class="order_left order_all_pay" id="total'+vo.order_no+'">'+
								'</div>'+
								'<div class="order_left order_check">'+
									'<div>'+
										'<select>'+
											'<option value="신청중" selected="selected">신청중</option>'+
											'<option value="대기">대기중</option>'+
											'<option value="완료">판매완료</option>'+
										'</select>'+
										'<p id="'+vo.order_no+'" class="check_btn">상태 변경</p>'+
									'</div>'+
								'</div>'+
							'</div>';
							
							newOrder(vo.order_no);
							
						}
					});
				}
			});	}, 50000);
	});
$(".wait_order").click(function(){
	$('#new').empty();	$('#wait').empty();	$('#end').empty();
	$.ajax({
		url : '/show/new_order',
		type: "POST",
		data: {
			"group_no" : group_no,
			"member_no" : <%=session.getAttribute("id")%>
		},
		success : function(omvo){
			var a = document.getElementById("wait");
			omvo.forEach(function(vo, i) { //items와 index다.
				if(vo.owner_ch == '대기'){
				a.innerHTML = a.innerHTML+'<div class="wait_order_list">'+
					'<div class="order_left order_choice">'+
						'<p>'+vo.reservation_time+'</p>'+
					'</div>'+
					'<div class="order_left order_num">'+
						'<p>'+vo.order_no+'</p>'+
					'</div>'+
					'<div class="order_left user_name">'+
						'<p>'+vo.order_name+'</p>'+
					'</div>'+
					'<div class="order_left user_phone">'+
						'<p>'+vo.order_phone+'</p>'+
					'</div>'+
					'<div class="order_left order_menu" id="m_n'+vo.order_no+'">'+
					'</div>'+
					'<div class="order_left order_pay" id="m_p'+vo.order_no+'">'+
					'</div>'+
					'<div class="order_left order_all_pay" id="total'+vo.order_no+'">'+
					'</div>'+
					'<div class="order_left order_check">'+
						'<div>'+
							'<select>'+
								'<option value="신청중">신청중</option>'+
								'<option value="대기" selected="selected">대기중</option>'+
								'<option value="완료">판매완료</option>'+
							'</select>'+
							'<p id="'+vo.order_no+'" class="check_btn">상태 변경</p>'+
						'</div>'+
					'</div>'+
				'</div>';
				
				newOrder(vo.order_no);
				}
			});
		}
	});
}); //$(document).on("click",".check_btn",function()
$(".end_order").click(function(){
	$('#new').empty();	$('#wait').empty();	$('#end').empty();	
	$.ajax({
		url : '/show/new_order',
		type: "POST",
		data: {
			"group_no" : group_no,
			"member_no" : <%=session.getAttribute("id")%>
		},
		success : function(omvo){
			
			var a = document.getElementById("end");
			omvo.forEach(function(vo, i) { //items와 index다.
				if(vo.owner_ch == '완료'){
				a.innerHTML = a.innerHTML+'<div class="end_order_list">'+
					'<div class="order_left order_choice">'+
						'<p>'+vo.reservation_time+'</p>'+
					'</div>'+
					'<div class="order_left order_num">'+
						'<p>'+vo.order_no+'</p>'+
					'</div>'+
					'<div class="order_left user_name">'+
						'<p>'+vo.order_name+'</p>'+
					'</div>'+
					'<div class="order_left user_phone">'+
						'<p>'+vo.order_phone+'</p>'+
					'</div>'+
					'<div class="order_left order_menu" id="m_n'+vo.order_no+'">'+
					'</div>'+
					'<div class="order_left order_pay" id="m_p'+vo.order_no+'">'+
					'</div>'+
					'<div class="order_left order_all_pay" id="total'+vo.order_no+'">'+
					'</div>'+
					'<div class="order_left order_check">'+
						'<div>'+
							'<select>'+
								'<option value="신청중">신청중</option>'+
								'<option value="대기">대기중</option>'+
								'<option value="완료" selected="selected">판매완료</option>'+
							'</select>'+
							'<p id="'+vo.order_no+'" class="check_btn">상태 변경</p>'+
						'</div>'+
					'</div>'+
				'</div>';
				
				newOrder(vo.order_no);
				}
			});
		}
	});
})
$(document).on("click",".check_btn",function(){
	var check = $(this).parent().children().val(); //대기나 완료 값을 불러온다.
	var order_no = $(this).attr('id');
	$.ajax({
		url:'/show/checkUpdate',
		type: "PUT",
		headers: {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "PUT"
		},
		data : JSON.stringify({
			"owner_ch" : check,
			"order_no" : order_no
		}),
		success:function(result){
			$.ajax({
				url:'/show/checkUpdate',
				type: "PUT",
				headers: {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT"
				},
				data : JSON.stringify({
					"owner_ch" : check,
					"order_no" : order_no
				}),
				success:function(result){
					if(check=='완료'){
						$(".end_order").trigger("click");
					} else if(check=='대기'){
						$(".wait_order").trigger("click");
					} else if(check=='신청중'){
						$(".new_order").trigger("click");
					}
					alert('변경되었습니다.');
				}
			})
		}
	})
});
});
</script>
<TITLE> 주문관리 </TITLE>
</HEAD>
<BODY>
<p onclick="change()">
	<div id="wrap">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<div class="order_shop_choice">
			<p class="choice_left">매장선택</p>
			<select class="choice_left">
				<option>매장</option>
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
				<li>시간</li>
				<li>주문번호</li>
				<li>주문자명</li>
				<li>주문자번호</li>
				<li>신청메뉴</li>
				<li>수량</li>
				<li>총 결제 금액</li>
				<li>주문상태</li>
			</ul>
		</div>
<!-- 여기서부터 컬럼값 -->

		<div id="new"></div>
			
<!-- 컬럼값 끝 -->

		<div id="wait"></div>

<!-- 대기 컬럼 -->

		<div id="end"></div>
		
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>
</BODY>
</HTML>
