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
		 var menu_no3 = $("#menu_no1").val();
			list(menu_no3);
	});
	
	 $('.menu_keep_btn').click(function(){
		var menu_no = $("#menu_no1").val();
		var sidemenu_no = $("#sidemenu_no").val();
		var sidemenu_category = $("#cate").val();
		var sidemenu_name = $("#menu_name").val();
		var sidemenu_pay = $("#menu_price").val();
		$.ajax({
			url:'/show/sideUpdate',
			headers: {"Content-Type": "application/json", "X-HTTP-Method-Override": "PUT"},
			type:"PUT",
			data:JSON.stringify({"menu_no":menu_no,"sidemenu_no":sidemenu_no,
					"sidemenu_category":sidemenu_category,"sidemenu_name":sidemenu_name,"sidemenu_pay":sidemenu_pay}),
			success: function(result){
				if(result == 'OK'){
					alert('사이드메뉴가 수정되었습니다.');
					list(menu_no);
				}else if(result == 'NO'){
					alert('사이드메뉴가 수정되지 않았습니다.');
				}
			}
		});
	});
	
	 function list(menu_no2){
		$.ajax({
			url:'/show/side_list',
			data:{"menu_no":menu_no2},
			success: function(result){
				$('.menu_pop').empty();
				$('.menu_pop').append(result);
			}
		});
	}
}); 

</script>
<input type="hidden" id="id" value="${id }">
<input type="hidden" id="menu_no1" value="${sidemenu_one.menu_no}">
<input type="hidden" id="group_no" value="${sidemenu_one.group_no }">
<input type="hidden" id="sidemenu_no" value="${sidemenu_one.sidemenu_no }">
	<div class="menu_write_box" style="margin-top:150px;">
      <p class="big_text">&nbsp;&nbsp;사이드수정</p>
      <div class="menu_boonryu">
         <p class="left_cl text-size">메뉴분류</p>
         <div class="left_cl box-size">
            <div class="left_cl box-size" style="margin-top:5px">
            <input id="cate" type="text" value="${sidemenu_one.sidemenu_category }" disabled/>
         </div>
         </div>
      </div>
      <div class="menu_name">
         <p class="left_cl text-size">사이드메뉴명</p>
         <div class="left_cl box-size">
            <input id="menu_name" type="text" value="${sidemenu_one.sidemenu_name }"/>
         </div>
      </div>
      <div class="menu_pay">
         <p class="left_cl text-size">가격</p>
         <div class="left_cl box-size">
            <input id="menu_price" type="text" value="${sidemenu_one.sidemenu_pay }"/>
         </div>
      </div>
      <div class="menu_write_btn_a">
         <div class="menu_keep_btn">사이드수정</div>
         <div class="close_btn">닫기</div>
      </div>
   </div>
