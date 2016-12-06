<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/menu_wirte2.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){
	$('.close_btn').click(function(){
		$('.menu_pop').fadeOut(0);
		$('.menu_pop').empty();
	});
	
	 $('.menu_keep_btn').click(function(){
		var menu_no = $("#menu_no1").val();
		var member_no = $("#id").val();
		var group_no = $("#group_no").val();
		var sidemenu_category = $("#cate").val();
		var sidemenu_name = $("#menu_name").val();
		var sidemenu_pay = $("#menu_price").val();
		$.ajax({
			url:'/show/sideAdd',
			data:{"menu_no":menu_no,"member_no":member_no,"group_no":group_no,
					"sidemenu_category":sidemenu_category,"sidemenu_name":sidemenu_name,"sidemenu_pay":sidemenu_pay},
			success: function(data){
				if(data == 'OK')
					alert('사이드메뉴가 추가되었습니다.');
				$('.menu_pop').fadeOut(0);
				$('.menu_pop').empty();
				list();
			}
		});
	});
	
	function list(){
		var group_no1 = $("#group_no").val();
		$.ajax({
			url:'/show/detailView',
			data:{"group_no":group_no1},
			success: function(data){
				$('.shop_view_box').empty(); 
				$('.shop_view_box').append(data);
			}
		});
	}
});

</script>
<input type="hidden" id="id" value="${id }">
<input type="hidden" id="menu_no1" value="${menu_no}">
<input type="hidden" id="group_no" value="${group_no }">
	<div class="menu_write_box" style="margin-top:150px;">
      <p class="big_text">&nbsp;&nbsp;사이드추가</p>
      <div class="menu_boonryu">
         <p class="left_cl text-size">메뉴분류</p>
         <div class="left_cl box-size">
            <div class="left_cl box-size" style="margin-top:5px">
            <input id="cate" type="text" value="${menu_category }" disabled/>
         </div>
         </div>
      </div>
      <div class="menu_name">
         <p class="left_cl text-size">사이드메뉴명</p>
         <div class="left_cl box-size">
            <input id="menu_name" type="text"/>
         </div>
      </div>
      <div class="menu_pay">
         <p class="left_cl text-size">가격</p>
         <div class="left_cl box-size">
            <input id="menu_price" type="text"/>
         </div>
      </div>
      <div class="menu_write_btn_a">
         <div class="menu_keep_btn">사이드추가</div>
         <div class="close_btn">닫기</div>
      </div>
   </div>
