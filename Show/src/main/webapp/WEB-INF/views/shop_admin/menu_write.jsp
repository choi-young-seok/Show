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
		var group_no = $("#group_no").val();
		$.ajax({
			url:'/show/menu_write',
			data:{"group_no":group_no},
			success: function(result){
				$('.menu_pop').fadeOut(0);
				$('.menu_pop').empty();
			}
		});
	});
	
	$('.menu_keep_btn').click(function(){
		var id = $("#id").val();
		var menu_category = $("#cate").val();
		var menu_name = $("#menu_name").val();
		var menu_price = $("#menu_price").val();
		var group_no = $("#group_no").val();
		alert("g"+group_no);
		
		alert("m"+id);
		$.ajax({
			url:'/show/menuAdd',
			data:{"member_no":id,"group_no":group_no},
			success: function(data){
				$('.menu_pop').html(data);
			}
		});
	});
});


</script>
<input type="hidden" id="id" value="${id }">
<input type="hidden" id="group_no" value="${group_no }">
	<div class="menu_write_box" style="margin-top:150px;">
      <p class="big_text">&nbsp;&nbsp;메뉴추가</p>
      <div class="menu_boonryu">
         <p class="left_cl text-size">메뉴분류</p>
         <div class="left_cl box-size">
            <div class="left_cl box-size" style="margin-top:5px">
            <input id="cate" type="text"/>
         </div>
         </div>
      </div>
      <div class="menu_name">
         <p class="left_cl text-size">메뉴명</p>
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
         <div class="menu_keep_btn">메뉴추가</div>
         <div class="close_btn">닫기</div>
      </div>
   </div>
