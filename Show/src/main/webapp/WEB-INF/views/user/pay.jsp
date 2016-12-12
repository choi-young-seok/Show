<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link href="css/header.css" rel="stylesheet" type="text/css" />

<link href="css/search.css" rel="stylesheet" type="text/css" />

<link href="css/section.css" rel="stylesheet" type="text/css" />

<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link href="buy/css/buy_order.css" rel="stylesheet" type="text/css" />

<link href="buy/css/pay.css" rel="stylesheet" type="text/css" />
<link href="buy/css/pop.css" rel="stylesheet" type="text/css" />

<!--css 링크 영역-->



<!--스크립트 영역-->

<!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>-->

<script src="js/jquery-3.0.0.js"></script>
<script src="js/area.js"></script>
<script src="ArrayList.js"></script>
<script src="js/jquery-3.0.0.js"></script>
<script src="buy/js/order.js"></script>

<script>

	/*$(document).ready(function(){

		$(".phone_num_btn").click(function(){

			alert("인증번호가 발송 되었습니다.");

		});

		$(".pay_ok_btn").click(function(){

			var payok = "../index.html";

			$(location).attr('href',payok);

		});

		전체동의

		$(".all_check_left").click(function(){



        var chk = $(this).is(":checked");//.attr('checked');



        if(chk) $(".check_all input").prop('checked', true);



        else  $(".check_all input").prop('checked', false);

		});

	});*/

</script>


<script>

	$(document).ready(function(){

		$(".detaile_search_view").hide();

		$(".detaile_search_btn").click(function(){

			$(".detaile_search_view").fadeToggle();

		});

	});
function Logout(){
location.href='Logout.php';
}

</script>
<script src="js/index.js"></script>

<!--스크립트 영역-->

<TITLE> ON SHOW </TITLE>

</HEAD>

<BODY>
<?php
$groupid = $_GET['id'];
echo"<div id=\"wrap\" name =\"{$groupid}\">";
?>

		<header>

			<div class="main_logo">

				<a href="../onshow/index.php">

					<img src="image/logo.png"/>

				</a>

			</div>

			<nav>

				<ul class="nav_menu">

					<li><a href="community_menu.php">서비스안내</a></li>

					<li><a href="community_menu.php">고객센터</a></li>
<?php
session_start();

if($_SESSION["user_nickName"] !=""){
echo"

					<li><a href=\"#\">{$_SESSION["user_nickName"]}</a></li>

					<li><a href=\"#\" onClick=Logout()>로그아웃</a></li>
";
}else {
echo"

					<li><a href=\"login/login.html\">로그인</a></li>

					<li><a href=\"join/join.html\">회원가입</a></li>
";
}
?>

				</ul>

			</nav>

		</header>

		<div class="mian_center">

			<div class="center_text">

				<p>"테이크아웃</p>

				<p>예약</p>

				<p>하고</p>

				<p>시간</p>

				<p>벌자"</p>

			</div>

		

		</div>

		<!--JQUERY 영역-->

<script>

var itemList = new ArrayList();
var priceList = new ArrayList();
var countList = new ArrayList();
var paysum = 0;

	$(document).ready(function(){

		

		$(".choice2_menu").hide();

		$(".choice_2").click(function(){
			$(this).next().slideToggle(500);

			

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

		$(".menu_in_choice").click(function(){
			var price = $(this).attr('name');

			var menu = $(this).children().attr('name');
			var side_name = $(this).next().attr('class');

			if(side_name != 'menu_box'){
			//장바구니 추가.			
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
		
		
		
		}else if(side_name == 'menu_box'){
			$(this).next().fadeIn(500);
			
		}

		});
		/*$(document).on("click",".menu_delete",function(){
			var menu = $(this).prev().attr('name');
			$(this).parent().remove();
			var index = itemList.indexOf(menu);
			itemList.removeAt(index);
		});

		$(".order_btn").click(function(){

			var paygo = "pay.html";

			$(location).attr('href',paygo);

		});*/


//사이드 팝업





//주문하기 팝업

$(document).on("click","#order_btn",function(){
if(itemList.size()==0){
	alert("장바구니가 비어져있습니다.");
}else {
			$(".media_full").fadeIn(500);
var cou = 0;

paysum = Number(paysum);
paysum =0;
while(cou != itemList.size()){
	
	var pay = "<li class=\"menu_name\">"+itemList.get(cou)+"</li>"
			+"<li class=\"order_pay\">"+priceList.get(cou)+"x"+countList.get(cou)+"</li>";
			$(".ordermenu").append(pay);
paysum = paysum + Number(priceList.get(cou))*Number(countList.get(cou));
cou = cou+1;
}
	var pricesum = "<p>총</p>"+

						"<p>가격</p>"+

						"<p>"+paysum+"원</p>";
					$(".total_money").append(pricesum);
}
		});

//////////
$(document).on("click",".order_menu_delete",function(){
			var menu = $(this).prev().attr('name');
			$(this).parent().remove();
			var index = itemList.indexOf(menu);
			itemList.removeAt(index);
			priceList.removeAt(index);
			countList.removeAt(index);
		});
		

//사이드 메뉴 장바구니 추가
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
	$(document).on("click",".side_pop_close",function(){
			$(this).parent().parent().parent().fadeOut(500);
		});
});
//장바구니 갯수 조절

$(document).on("click","#right",function(){
	//var p_val = $('.count_text').text();
	var p_val = $(this).prev().text();
	console.log($(this).attr('class'));
	p_val++;
	$(this).prev().text(p_val);
	var index = itemList.indexOf($(this).parent().parent().parent().prev().prev().prev().attr('name'));
	countList.setByIndex(index,p_val);



});

$(document).on("click","#left",function(){
	//var p_val = $('.count_text').text();
	var p_val = $(this).next().text();
	console.log($(this).attr('class'));
	p_val--;
	if(p_val <0){
	p_val = 0;
	}
	$(this).next().text(p_val);
	var index = itemList.indexOf($(this).parent().parent().parent().prev().prev().prev().attr('name'));
	countList.setByIndex(index,p_val);

});

function order_pop_close(){
	$(".media_full").fadeOut(500);
	$(".ordermenu").empty();
	$(".total_money").empty();
	
}

</script>
<script type="text/javascript">
$(document).on("click",".pay_ok_btn",function(){

var form = $(this).parent();
	var phon_text = form.find('.phon_number').val();
	var request_text = form.find('.request_text').val();
	if(!phon_text){
		alert("휴대폰번호를 입력해주세요.");
		return;
	}else if(!request_text){
		alert("주문요청사항을 입력해주세요.");
		return;
	}
	else{

var list_a = new Array();
var item = new Object();

for(var i = 0; i < itemList.size();i++){
item.menu = itemList.get(i);
item.price = priceList.get(i);
var in_list = {menu : itemList.get(i), price :priceList.get(i), count : countList.get(i)};
list_a.push(in_list);
}



var totalInfo = new Object();
totalInfo.list = list_a;
var jsonInfo = JSON.stringify(totalInfo);


var phon = $(".phon_number").val();
var text = $(".request_text").val();
//var price1 = JSON.stringify(price1);
//var menu = JSON.stringify(menu1);
var pay = paysum;
var groupid = $('#wrap').attr('name');
//var groupid = $.getUrlVar('id');
			$.ajax({
                    url:'buy/buyprocess.php',	
                    type:'POST',
							datatype:'json',
                    data:{"phon" : phon, "text" : text, "paysum": pay, "list_a":jsonInfo,"groupid" : groupid},
                    success:function(data){
          				if(data == "OK"){
								alert("주문되었습니다.");
								location.href='index.php';
							}else if(data != "OK"){
								alert(data);
							}

                   			 }
                });
}

		
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
<?php
$groupid = $_GET['id'];

$sock = mysql_connect("localhost","on_account","onshow1234") or die("order-page error code : 1");	
mysql_select_db("on_groupdb",$sock) or die("order-page error code : 2");

$group_query = mysql_query("select GROUPNAME, UNIV,START,END,FILE from allgroup where GROUPID = '$groupid'",$sock) or die("order-page error code : 3");
$group_row = mysql_fetch_array($group_query);
echo"

					<p>매장이름 :</p>

					<p>{$group_row[0]}</p>

				</li>

				<li>

					<p>평점</p>

					<p>평점써라</p>

				</li>

			</ul>

			<div class=\"shop_info\">

				<div class=\"shop_img\">

					<img src=\"{$group_row[4]} \"  style=\"width: 200px; height :150px;\"/>

				</div>

				<div class=\"shop_text\">

					<ul>

						<li>영업시간 :{$group_row[2]}~{$group_row[3]}  </li>

						<li>위치 :{$group_row[1]}  </li>

					</ul>

				</div>

			</div>

		</div>";
?>

		<div class="menu">

			<div class="total_menu_review">
<?php
echo"
					<div class=\"total_menu\">메뉴</div>

				<div class=\"total_review\">리뷰</div>";
?>



			</div>

			<div class="menu_bar">

<?php

mysql_select_db("on_menudb",$sock) or die("order-page error code : 4");
$cate_query = mysql_query("select distinct CATE from all_menu where GROUPID={$groupid}",$sock) or die("order-page error code : 5");
while($cate_row = mysql_fetch_array($cate_query)){

$menu_query = mysql_query("select * from all_menu where CATE = '{$cate_row[0]}' and GROUPID = {$groupid}",$sock);

echo"<div class=\"choice_2\">{$cate_row[0]}</div>

				<div class=\"choice2_menu\">";
while($menu_row = mysql_fetch_array($menu_query)){
echo "

					<ul class=\"menu_in_choice\" name=\"{$menu_row[3]}\">

						<li name=\"{$menu_row[2]}\">{$menu_row[2]}</li>

						<li>가격{$menu_row[3]}원</li>

					</ul>

				";

if($menu_row[5]!=null){

echo"
<div class=\"menu_box\" style=\"display:none; position: fixed; top: 20%; left: 22%; width: 55%; height: 60%; background-color: rgba(0,0,0,0.7); z-index: 1001;\">
	<div style=\" position: relative; top: 20%;\">

		<div class=\"menu_name_side\">

			<p>{$menu_row[1]}</p>
			<div class=\"side_pop_close\">닫기</div>

		</div>

		

		<div class=\"radio_choice\">
			<ul style=\"background-color: rgba(250,250,250,10.0);\">";

$side_query = mysql_query("select * from all_side where SIDEID ='{$groupid}_{$menu_row[0]}_side'",$sock) or die("order-page error code : 6");

while($side_row = mysql_fetch_array($side_query)){

$sum = $side_row[3] - $menu_row[3];
if($sum > 0){
echo"

				<li>

					<input type=\"radio\" class=\"mat_choice mat_left\" name=\"choice1\" id=\"{$menu_row[2]}\" value=\"{$side_row[3]}\" checked=\"checked\"/>

					<p class=\"mat_left mat_text\" align=\"center\" name=\"{$side_row[2]}\">{$side_row[2]}(+$sum)</p>

				</li>";
}else if($sum <= 0){
echo"
				<li>

					<input type=\"radio\" class=\"mat_choice mat_left\" name=\"choice1\" id=\"{$menu_row[2]}\" value=\"{$side_row[3]}\"/>

					<p class=\"mat_left mat_text\" align=\"center\" name=\"{$side_row[2]}\">{$side_row[2]}($sum)</p>

				</li>";
}
}
echo"
		</ul>

		</div>

		<div class=\"choice_btn\" name=\"{$menu_row[2]}\">

			주문표에 추가

		</div>

	</div>
</div>

";

}

}
echo"</div>";
}
echo "</div>";
?>

				

			<div class="review">

				<!--review_box 부분 for문 돌리-->

<?php
mysql_select_db("on_reviewdb",$sock) or die("order-page error code : 3");
$review_query = mysql_query("select * from all_review where GROUPID ='{$groupid}'",$sock) or die("order-page error code : 7");

while($review_row = mysql_fetch_array($review_query)){
echo"

				<div class=\"review_box\">

					<div class=\"star_point\">

						<p>평점 :</p>

						<p>{$review_row[1]}점</p>

					</div>

					<div class=\"date_user\">

						<p>{$review_row[2]}</p>

						<p>{$review_row[3]}</p>

					</div>

					<div class=\"review_text\">{$review_row[4]}</div>

				</div>";
}
?>

			</div>

			<!--주문표 부분-->

			<div class="order_memo">

				<div class="memo_text">주문표</div>

				<div class="order_in">

					

				</div>

				<div class="order_btn" id="order_btn" href=\"#\">주문하기</div>

			</div>

		</div>

<div id="wrap" style="display:none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,0.7); z-index: 1001;" class="media_full">

		<div class="pay_userinfo" style="background-color: rgba(250,250,250,10.0); position: relative; top: 5%;">

			<div class="pay_text">

				<p>결제하기</p>
				<p onclick ='order_pop_close()'>닫기</p>

			</div>

			<div class="user_info">

				<p class="phone_num_text">휴대전화 번호</p>

				<div class="phone_box">

					<div class="phone_num">

						<input class="phon_number" type="text" maxlength="11" placeholder="&nbsp;&nbsp;번호입력" />

					</div>

					<div class="phone_num_btn">인증번호</div>

					<div class="phone_check">

						<input type="text" maxlength="4" placeholder="&nbsp;&nbsp;4자리 인증번호 입력"/>

					</div>

					<div class="check_btn">확인</div>

				</div>

			</div>

			<!--<div class="user_check_box">

				<div class="all_check">

					<input type="checkbox" class="all_check_left"/>

					<p class="all_check_left">전체 동의</p>

				</div>

				<div class="sms_check check_all">

					<input type="checkbox" class="sms_left"/>

					<p class="sms_left">SMS 수신 동의</p>

				</div>

				<div class="tos_check check_all">

					<input type="checkbox" class="tos_left"/>

					<p class="tos_left">이용약관 동의</p>

					<p class="tos_left">전문보기</p>

				</div>

				<div class="personal_check check_all">

					<input type="checkbox" class="personal_left"/>

					<p class="personal_left">수집하는 개인정보 항목 / 이용목적<br/>개인정보 보유기간에 동의</p>

					<p class="personal_left">전문보기</p>

				</div>

			</div>-->

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

</BODY>

		<footer>

			<div class="footer_text1">

				<p><a href="">법적고지</a></p>

				<p><a href="">개인정보취급방식</a></p>

				<p><a href="">이용약관</a></p>

				<p><a href="">이메일 무단수집거부</a></p>

			</div>

			<div class="thanks_to">

				<p>Thank`s to -</p>

				<div class="thanks_text">

					<p>Programing : Sin yoo dong , Lee gil hak</p>

					<p>Web Disign : Jo chung hee</p>

				</div>

			</div>

		</footer>

		<div class="copyright">

				<p>Copyright ⓒ 2016 BRKOREA Company. All Rights Reserved.</p>

		</div>

	</div>







</BODY>

</HTML>


