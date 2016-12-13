<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
<div class="pay_userinfo" style="background-color: rgba(250,250,250,10.0); position: relative; top: 5%;">

$(document).on("click",".choice_btn",function(){
			var chois_name = $(this).attr('name');
			var form = $("input[id="+chois_name+"]:checked")
			var price = form.val();

			var menu = form.next().attr('name');
			if(menu == null){
			alert("메뉴를 선택해 주십시오");
			return;
			}
			else if(menu != null){		
			for(var i =0; i < itemList.size(); i++){
				if(itemList.get(i) == menu){
					alert("장바구니에 있습니다.");
					return;
				}
			}
			itemList.add(menu);
			priceList.add(price);
			countList.add(1);
			var inorder = "<div class=\"order_box\">"+

						"<div class=\"order_menu_name\" name=\""+menu+"\">&nbsp;&nbsp;"+menu+"</div>"+

						"<div class=\"order_menu_delete\">삭제하기</div>"+

						"<div class=\"order_menu_pay\">"+

							"<p>&nbsp;&nbsp;가격 : </p>"+

							"<p>"+price+"원</p>"+

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
			
			$(".menu_box").fadeOut(500);//창닫기
		}

	});
			<div class="pay_text">
				<p>결제하기</p>
				<p onclick =order_pop_close();>닫기</p>
			</div>
			<div class="user_info">
				<p class="phone_num_text">휴대전화 번호</p>
				<div class="phone_box">
					<div class="phone_num">
						<input class="phon_number" type="text" maxlength="11" placeholder="&nbsp;&nbsp;번호입력" />
					</div>
					<div class="phone_num_btn">예약시간</div>
					<div class="phone_check">
					<input type="radio" value="dd">
					</div>
					<div class="check_btn">확인</div>
				</div>
			</div>
			<!--주문 목록-->
			<div class="order_list">
				<p>주문 내역</p>
			</div>

			<div class="order_menu_list">
				<ul class="ordermenu">
					</ul>
				</div>
			
				<div class="total_money">
					
				</div>
			<!--주문시요청사항-->
			<div class="request_box">
				<p>주문시 요청사항</p>
			</div>
			<textarea class="request_text"/></textarea>
			<div class="pay_way">
				<p>결제수단</p>
			</div>
			<span class="user_card">신용카드 결제</span>
			<div class="discount">
				<p>할인</p>
			</div>
			<div class="cupon_box">
				<div class="cupon_text">쿠폰</div>
				<div class="cupon_num">
					<input type="text" placeholder="&nbsp;&nbsp;쿠폰번호 입력" />
				</div>
			</div>
			<div class="pay_ok_btn">
				<p>주문완료</p>
			</div>
	</div>
