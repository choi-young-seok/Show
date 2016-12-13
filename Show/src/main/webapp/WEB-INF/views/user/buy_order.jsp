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
<link href="resources/css/user/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/user/buy_order.css" rel="stylesheet" type="text/css" />
<link href="resources/css/user/pay.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section_media.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
var inorder = null;
var menu = new Array();
var side = new Array();
var m_price = new Array();
var s_price = new Array();
var m_count = new Array();
var s_count = new Array();
var m_name = new Array();
var s_name = new Array();
var order_pop = null;
var paysum = 0;
var menu_list;

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
			var no = $(this).attr('name');
			p_val++;
			$(this).prev().text(p_val);
			for (var int = 0; int < menu.length; int++) {
				if(menu[int] == ('m'+no)){
					m_count[int] = m_count[int]+1;
				}
			}
			
			for (var int = 0; int < side.length; int++) {
				if(side[int] == ('s'+no)){
					s_count[int] = s_count[int]+1;
				}
			}
		});

		$(document).on("click","#left",function(){
			//var p_val = $('.count_text').text();
			var p_val = $(this).next().text();
			var no = $(this).attr('name');
			p_val--;
			if(p_val <1){
			p_val = 1;
			}
			$(this).next().text(p_val);
			
			for (var int = 0; int < menu.length; int++) {
				if(menu[int] == ('m'+no)){
					m_count[int] = m_count[int]-1;
				}
			}
			
			for (var int = 0; int < side.length; int++) {
				if(side[int] == ('s'+no)){
					s_count[int] = s_count[int]-1;
				}
			}

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
					s_name.splice(int,1);
					s_price.splice(int,1);
					s_count.splice(int,1);
				}
			}
			
			for (var int = 0; int < menu.length; int++) {
				if(menu[int]==('m'+menu_no)){
					menu.splice(int,1);
					m_name.splice(int,1);
					m_price.splice(int,1);
					s_count.splice(int,1);
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
					return;
				}
			}
			if(che != "NO"){
			side.push('s'+side_no);
			s_price.push(side_pay);
			s_name.push(side_name);
			s_count.push(1);
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
				"<input id=\"left\" type=\"button\" value=\"-\" name=\""+side_no+"\" class=\"count_btn count_left\"></input>"+
				"<p class=\"count_left count_text\">1</p>"+
				"<input id=\"right\" type=\"button\" value=\"+\" name=\""+side_no+"\" class=\"count_btn count_left\"></input>"+
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
									return;
								}
							}
							
							 if(chch != "NO"){
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
							"<input id=\"left\" type=\"button\" value=\"-\" name=\""+menu_no+"\" class=\"count_btn count_left\"></input>"+
							"<p class=\"count_left count_text\">1</p>"+
							"<input id=\"right\" type=\"button\" value=\"+\" name=\""+menu_no+"\" class=\"count_btn count_left\"></input>"+
							"	</div>"+
								"	</ul>"+
								"</div>"+
							"</div>";
						$(".order_in").append(inorder);
						menu.push('m'+menu_no);
						m_price.push(menu_price);
						m_name.push(menu_name);
						m_count.push(1);
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
		
			opder_pop = '<div class="pay_userinfo" style="background-color: rgba(250,250,250,10.0); position: relative; top: 5%;">'+
			'<div class="pay_text">'+
			'<p>결제하기</p>'+
			'<p onclick =order_pop_close();>닫기</p>'+
		'</div>'+
		'<div class="user_info">'+
			'<p class="phone_num_text">휴대전화 번호</p>'+
			'<div class="phone_box">'+
				'<div class="phone_num">'+
					'<input class="phon_number" type="text" maxlength="11" placeholder="&nbsp;&nbsp;번호입력" />'+
				'</div>'+
				'<div class="phone_num_btn">인증번호</div>'+
				'<div class="phone_check">'+
					'<input type="text" maxlength="4" placeholder="&nbsp;&nbsp;4자리 인증번호 입력"/>'+
				'</div>'+
				'<div class="check_btn">확인</div>'+
			'</div>'+
		'</div>'+
		'<div class="order_list">'+
			'<p>주문 내역&nbsp;<lable> <input type="radio" id="radi" name="order_ch" value="음식배달" onclick="radi(0)">&nbsp;음식배달주문&nbsp;</lable>'+
			'<lable><input type="radio" id="radi" name="order_ch" value="음식&자리" onclick="radi(1)">&nbsp;자리예약 및 음식 주문&nbsp;</lable>'+
			'<lable><input type="radio" id="radi" name="order_ch" value="자리예약" onclick="radi(2)">&nbsp;자리 예약</lable>'+ 
			'</p>'+
		'</div>'+
		'<div class="order_menu_list">'+
		'<ul class="ordermenu">'+
		
		'</ul>'+
			 '</div>'+
			'<div class="total_money">'+
			'</div>'+
		<!--주문시요청사항-->
			'<div class="request_box">'+
			'<p>주문시 요청사항'+
			'<select name="yy" id="yy" style="display: none;">'+
			'<option value="0">=예약년=</option>'+
			'</select>&nbsp;'+
			'<select name="mm" id="mm" style="display: none;">'+
			'<option value="0">=예약월=</option>'+
			'</select>&nbsp;'+
			'<select name="day" id="day" style="display: none;">'+
			'<option value="0">=예약일=</option>'+
			'</select>&nbsp;'+
			'<select name="start_hour" id="startHour" style="display:none;">'+
			'<option value="0">=예약시간=</option>'+
			'</select>'+
			'<select name="mi" id="mi" style="display: none;">'+
			'<option value="0">=예약시간=</option>'+
			'</select>&nbsp;'+
			'<input type="text" class="count" placeholder="인원수입력" style="display:none;width:40px;"/>'+
			'</p>'+
		'</div>'+
		'<textarea class="request_text"/></textarea>'+
		'<div class="pay_way">'+
			'<p>결제수단</p>'+
		'</div>'+
		'<span class="user_card">신용카드 결제</span>'+
		'<div class="discount">'+
			'<p>할인</p>'+
		'</div>'+
		'<div class="cupon_box">'+
			'<div class="cupon_text">쿠폰</div>'+
			'<div class="cupon_num">'+
				'<input type="text" placeholder="&nbsp;&nbsp;쿠폰번호 입력" />'+
			'</div>'+
		'</div>'+
		'<div class="pay_ok_btn">'+
			'<p class="ord" onclick="ord_btn()">주문완료</p>'+
		'</div>'+
	'</div>';
		$('#side_pop').append(opder_pop);
		$('#side_pop').fadeIn(0);
		paysum = parseInt(paysum);
		paysum =0;
		for (var m = 0; m < menu.length; m++) {
			menu_list ='<li class="menu_name">'+m_name[m]+'</li>'+
						'<li class="order_pay">'+m_price[m]+'x'+m_count[m]+'</li>';
			$('.ordermenu').append(menu_list);
			paysum = paysum + parseInt(m_price[m])*parseInt(m_count[m]);
		}
		
		for (var m = 0; m < side.length; m++) {
			side_list ='<li class="menu_name">'+s_name[m]+'</li>'+
						'<li class="order_pay">'+s_price[m]+'x'+s_count[m]+'</li>';
			$('.ordermenu').append(side_list);
			paysum = paysum + parseInt(s_price[m])*parseInt(s_count[m]);
		}
		var pricesum = "<p>총</p>"+
					"<p>가격</p>"+
				"<p>"+paysum+"원</p>";
			$(".total_money").append(pricesum);
			 var today = new Date();
			  for(i=today.getFullYear();i < today.getFullYear()+5; i++) {
			   if(today.getFullYear() != i) {
				   var sel = '<option value="'+i+'">'+i+" 년";
				   $('#yy').append(sel);
			   } else {
			    var se = '<option value="'+i+'" selected>'+i+" 년";
			    $('#yy').append(se);
			   }
			  }
			
			 for (var i = 0; i < 25; i++) {
				if(i < 10){
					var sel = "<option value=0" + i + " style='text-align: center;'>&nbsp;&nbsp;&nbsp;&nbsp;0" + i + "시</option>";
					$('#startHour').append(sel);
				}else{
					var se = '<option value="' + i + '" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;' + i + '시</option>';
					$('#startHour').append(se);
				}
			} 
			 for (var i = 0; i < 61; i++) {
					if(i < 10){
						var sel = "<option value=0" + i + " style='text-align: center;'>&nbsp;&nbsp;&nbsp;&nbsp;0" + i + "분</option>";
						$('#mi').append(sel);
					}else{
						var se = '<option value="' + i + '" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;' + i + '분</option>';
						$('#mi').append(se);
					}
				} 
			 
			 for (var i = 1; i < 13; i++) {
					if(i < 10){
						var sel = "<option value=0" + i + " style='text-align: center;'>&nbsp;&nbsp;&nbsp;&nbsp;0" + i + "월</option>";
						$('#mm').append(sel);
					}else{
						var se = '<option value="' + i + '" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;' + i + '월</option>';
						$('#mm').append(se);
					}
				} 
			 
			 for (var i = 1	; i < 32; i++) {
					if(i < 10){
						var sel = "<option value=0" + i + " style='text-align: center;'>&nbsp;&nbsp;&nbsp;&nbsp;0" + i + "일</option>";
						$('#day').append(sel);
					}else{
						var se = '<option value="' + i + '" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;' + i + '일</option>';
						$('#day').append(se);
					}
				} 
		});
		/* $(".order_btn").click(function(){
			var paygo = "pay.html";
			$(location).attr('href',paygo);
		}); */
		
	});
	function radi(ra){
		if(ra==1 || ra==2){
			$('#yy').show();
			$('#mm').show();
			$('#day').show();
			$('#startHour').show();
			$('#mi').show();
			$('.count').show();
		}else{
			$('#yy').hide();
			$('#startHour').hide();
			$('#mi').hide();
			$('.count').hide();
			$('#mm').hide();
			$('#day').hide();
		}
	}
	
</script>
<TITLE> New Document </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
	<input type="hidden" class="member_no" value="${id }">
	<input type="hidden" class="group_no" value="${group_info.group_no}">
	<input type="hidden" class="or_name" value="${name }">
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
					<img src="resources/img/thumbnail${group_info.group_files }"/>
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
				<c:forEach items="${ review}" var="re">
				<div class="review_box">
					<div class="star_point">
						<p>평점 :</p>
						<p>${re.review_score }</p>
					</div>
					<div class="date_user">
						<p>${re.review_regdate }</p>
						<p>${re.nickname }</p>
					</div>
					<div class="review_text">${re.review_text }</div>
				</div>
				</c:forEach>
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
<script type="text/javascript">
function order_pop_close(){
	$('#side_pop').empty();
	$('#side_pop').fadeOut(500);
}
/* 주문버튼 */
function ord_btn(){
	var member_no = $('.member_no').val();
	var group_no = $('.group_no').val();
	var order_name = $('.or_name').val();
	var phone = $('.phon_number').val();
	var year = $('#yy').val();
	var mm = $('#mm').val();
	var day = $('#day').val();
	var hour = $('#startHour').val();
	var mi = $('#mi').val();
	var res_time = $('#yy').val()+ $('#mm').val()+$('#day').val()+$('#startHour').val() + $('#mi').val();
	var cou = $('.count').val();
	var ask1 = '0';
	ask1 = $('.request_text').val();
	var ask2 = $(':radio[name="order_ch"]:checked').val();
	var ch = null;
	var reg_phone = /^[0-9]*$/;
	if(ask2=="음식배달"){
		var d = new Date();
		  var s =
		    leadingZeros(d.getFullYear(), 4) + 
		    leadingZeros(d.getMonth() + 1, 2) + 
		    leadingZeros(d.getDate(), 2) +
		    leadingZeros(d.getHours(), 2) +
		    leadingZeros(d.getMinutes(), 2);

		res_time = s.toString();
		cou = 0;
		year = '1';
		mm='1';
		day='1';
		hour='1';
		mi='1';
	};
	if(phone.length==0){
		alert('핸드폰번호를 입력해 주세요.');
	}else if(!reg_phone.test(phone)){
		alert('핸드폰 유형에 맞지 않습니다.');
	}else if(ask2 = "undefined"){
		alert('주문 유형을 선택하여 주십시오');
	}else if(cou.length==0){
		alert('인원수를 입력해주세요')
	}else if(year == '0' ||mm=='0'||day==='0'||hour=='0'||mi=='0'){
		alert('예약 시간을 확인하여 주십시오.')
	}else{
	 $.ajax({
			url : 'orderinsert',
			type: 'post',
			data: {"member_no":member_no,"group_no":group_no,"order_name":order_name,"order_phone":phone,
					"reservation_time":res_time,"order_count":cou,"order_ask":ask1,"order_ask2":ask2,"order_price":paysum},
			success : function(result){
				if(result=="OK"){
					
					for (var int = 0; int < menu.length; int++) {
						var menu_no = menu[int];
						var menulen = menu_no.length;
						var menuno = menu_no.substring(1,menulen);
						var menu_price = m_price[int];
						var prilen = menu_price.length;
						var prilen1 = prilen-1;
						var price = menu_price.substring(0,prilen1);
						 $.ajax({
								url : 'menuinsert',
								type : 'post',
								data: {"member_no":member_no,"group_no":group_no,"menu_no":menuno,"menu_name":m_name[int],"menu_count":m_count[int],"menu_price":price},
								success : function(result){
									if(result =="OK"){
										ch="OK";
									}else{
										ch="NO";
									}
								}//success
							});	
					}
					
					for (var int2 = 0; int2 < side.length; int2++) {
						var side_no = side[int2];
						var sidelen = side_no.length;
						var sideno = side_no.substring(1,sidelen);
						var menu_price = m_price[int2];
						var prilen = menu_price.lenght;
						var price = menu_price.substring(0,prilen-1);
						 $.ajax({
								url : 'sideinsert',
								type : 'post',
								data: {"member_no":member_no,"group_no":group_no,"side_no":sideno,"menu_name":s_name[int2],"menu_count":s_count[int2],"menu_price":price},
								success : function(result){
									if(result ==="OK"){
										ch="OK";
									}else{
										ch="NO";
									}
								}//success
							});	
					}
					
						alert("주문이 완료되었습니다.");
						$('#side_pop').empty();
						$('#side_pop').fadeOut(500);
					
				}else{
					alert('주문 실패!');
				}
				
			}//success
		});	
	 
	 function leadingZeros(n, digits) {
		  var zero = '';
		  n = n.toString();

		  if (n.length < digits) {
		    for (i = 0; i < digits - n.length; i++)
		      zero += '0';
		  }
		  return zero + n;
		}
	}

}
</script>
</HTML>