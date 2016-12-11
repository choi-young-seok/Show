<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/header_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/search.css" rel="stylesheet" type="text/css" />
<link href="resources/css/search_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/user/buy_order.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section_media.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
var inorder = null;
var menu = new Array();
var side = new Array();
	$(document).ready(function(){
		$(".choice1_menu").hide();
		$(".choice_1").click(function(){
			$(this).next().slideToggle(500);
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
		
		/* ------------수량버튼 ------------------------*/
		$(document).on("click","#right",function(){
			//var p_val = $('.count_text').text();
			var p_val = $(this).prev().text();
			p_val++;
			$(this).prev().text(p_val);
			/* var index = itemList.indexOf($(this).parent().parent().parent().prev().prev().prev().attr('name'));
			countList.setByIndex(index,p_val); */
		});

		$(document).on("click","#left",function(){
			//var p_val = $('.count_text').text();
			var p_val = $(this).next().text();
			p_val--;
			if(p_val <1){
			p_val = 1;
			}
			$(this).next().text(p_val);
			/* var index = itemList.indexOf($(this).parent().parent().parent().prev().prev().prev().attr('name'));
			countList.setByIndex(index,p_val); */

		});
		/* ------------수량버튼 ------------------------*/
		
		/*--------------------삭제하기버튼------------------*/
		$(document).on("click",".order_menu_delete",function(){
			var side_no =$(this).attr('name');
			var menu_no=$(this).attr('name');
			$(this).parent().remove();
			for (var int = 0; int < side.length; int++) {
				if(side[int]==('s'+side_no)){
					side.splice(int,1);
				}
			}
			
			for (var int = 0; int < menu.length; int++) {
				if(menu[int]==('m'+menu_no)){
					menu.splice(int,1);
				}
			}
		/* 	var index = itemList.indexOf(menu);
			itemList.removeAt(index);
			priceList.removeAt(index);
			countList.removeAt(index); */
		});
		/*--------------------삭제하기버튼------------------*/
		
		/*-----------사이드 메뉴 쪽 장바구니 추가--------------------------------*/
		$(document).on("click",".choice_btn",function(){
			var side_name = $(':radio[name="choice1"]:checked').val();
			var side_pay = $(':radio[name="choice1"]:checked').attr('id');
			var side_no = $(':radio[name="choice1"]:checked').parent().attr('id');
			var che = null;
			if(side_no == null){
				alert('메뉴를 선택해주세요');
			}else{
			for (var i = 0; i < side.length; i++) {
				if(side[i]==('s'+side_no)){
					alert("이미 주문표에 있습니다.");
					che ="NO";
				}
			}
			if(che != "NO"){
			side.push('s'+side_no);
			
			$('#side_pop').empty();
			$('#side_pop').fadeOut(500);
			inorder = "<div class=\"order_box\">"+
			"<div class=\"order_menu_name\">&nbsp;&nbsp;"+side_name+"</div>"+
			"<div class=\"order_menu_delete\" name=\""+side_no+"\">삭제하기</div>"+
			"<div class=\"order_menu_pay\">"+
				"<p>&nbsp;&nbsp;가격 : </p>"+
				"<p>"+side_pay+"</p>"+
		"	</div>"+
			"<div class=\"menu_count\">"+
				"<ul>"+
				"<div class=\"menu_count\">"+
				"<input id=\"left\" type=\"button\" value=\"-\" class=\"count_btn count_left\"></input>"+
				"<p class=\"count_left count_text\">1</p>"+
				"<input id=\"right\" type=\"button\" value=\"+\" class=\"count_btn count_left\"></input>"+
				"	</div>"+
					"	</ul>"+
					"</div>"+
				"</div>";
			$(".order_in").append(inorder);
		
			}
			}
		});
		/*-----------사이드 메뉴 쪽 장바구니 추가--------------------------------*/
		
		$(".menu_in_choice").click(function(){
				var menu_no = $(this).attr('id');
				var menu_name = $(this).children(':eq(0)').text();
				var menu_price = $(this).children(':eq(1)').text();
				var chch = null;
				$.ajax({
					url : 'sidecount',
					data: {"menu_no":menu_no},
					success : function(result){
						if(result==="NO"){
							for (var i = 0; i < menu.length; i++) {
								if(menu[i]==('m'+menu_no)){
									alert("이미 주문표에 있습니다.");
									chch ="NO";
								}
							}
							
							if(chch != "NO"){
							menu.push('m'+menu_no);
								inorder = "<div class=\"order_box\">"+
						"<div class=\"order_menu_name\">&nbsp;&nbsp;"+menu_name+"</div>"+
						"<div class=\"order_menu_delete\" name=\""+menu_no+"\">삭제하기</div>"+
						"<div class=\"order_menu_pay\">"+
							"<p>&nbsp;&nbsp;가격 : </p>"+
							"<p>"+menu_price+"</p>"+
					"	</div>"+
						"<div class=\"menu_count\">"+
							"<ul>"+
							"<div class=\"menu_count\">"+
							"<input id=\"left\" type=\"button\" value=\"-\" class=\"count_btn count_left\"></input>"+
							"<p class=\"count_left count_text\">1</p>"+
							"<input id=\"right\" type=\"button\" value=\"+\" class=\"count_btn count_left\"></input>"+
							"	</div>"+
								"	</ul>"+
								"</div>"+
							"</div>";
						$(".order_in").append(inorder);
							}//chch if문
						}else{
							 $.ajax({
									url : 'side_menu',
									data: {"menu_no":menu_no},
									success : function(result){
										$('#side_pop').append(result);
										$('#side_pop').fadeIn(0);
									}//success
								});//2번째 ajax
						}//else
					}//success
				});	
		});//menu_in_choice.click
		
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
					<p>${group_info.group_name}</p>
				</li>
				<li>
					<p>평점 : </p>
					<p>${group_info.review_score }점</p>
				</li>
			</ul>
			<div class="shop_info">
				<div class="shop_img">
					<img src="${group_info.group_files }"/>
				</div>
				<div class="shop_text">
					<ul>
						<li>영업시간 : ${group_info.group_start }~${group_info.group_end }</li>
						<li>위치 : ${group_info.group_address }</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="menu">
			<div class="total_menu_review">
				<div class="total_menu">메뉴</div>
				<div class="total_review">리뷰</div>
			</div>
			<div class="menu_bar">
			
				<c:forEach items="${category }" var="cate">
					<div class="choice_1">${cate.menu_category }</div>
					<div class="choice1_menu">
					<c:forEach items="${menu_list }" var="menu">
						<c:if test="${cate.menu_category eq menu.menu_category }">
						<ul class="menu_in_choice" id="${menu.menu_no }">
						<li>${menu.menu_name }</li>
						<li> ${menu.menu_price }원</li>
					</ul>
				
					</c:if>
					 </c:forEach>
					 </div>
				</c:forEach>
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
				<div class="order_in" id="order_in">
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
		<div id="side_pop" style="display:none; position: fixed; top: 0; left: 0; width: 1920px; height: 1200px; background-color: rgba(0,0,0,0.7); z-index: 1001; margin-left : 0px">
		</div>
</BODY>
</HTML>
