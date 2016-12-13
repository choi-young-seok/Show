<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_management.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.detail_view').click(function(){
		var group_no = $(this).parent().prev().prev().children().first().text();
		$.ajax({
			url:'/show/detailView',
			data:{"group_no":group_no},
			success: function(data){
				$('.management').empty(); 
				$('.management').append(data);
			}
		});
	});
	$('.shop_addition_btn').click(function(){
		$.ajax({    		  
			url:'/show/application',
			success: function(data){
				$('.adminMain').html(data);
					$(".qna").css({"background":"#ffa500"});
					$(".gong").css({"background":"#696969"});
					$(".member").css({"background":"#696969"});
					$(".shop").css({"background":"#696969"});
			}
		});
	});
});	
</script>
<TITLE> 내업체 관리 </TITLE>

	<div id="wrap">
	<input type="hidden" value="${id }" id="id">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<div class="management">
			<div class="shop_management_text">
				<ul>
					<li>이미지</li>
					<li>매장명</li>
					<li>매장주소</li>
					<li>매장번호</li>
					<li>승인현황</li>
					<li>상세보기</li>
				</ul>
			</div>
			<c:forEach items="${listAll}" var="i">
			<div class="shop_management_show">
				<div class="management_show image" align="center">
					<a href="#detail"><img src="resources/img/thumbnail${i.group_files}"/></a>
				</div>
				<div class="management_show shop_name">
					<p>${i.group_name }</p>
				</div>
				<div class="management_show shop_addr">
					<p>${i.group_address }</p>
				</div>
				<div class="management_show shop_num">
					<p class="group_no">${i.group_no }</p>
				</div>
				<c:choose>
				<c:when test="${i.group_ch  eq 'T'}" >
				<div class="management_show shop_yes">
					<p>승인</p>
				</div>
				<div class="management_show shop_show">
					<input type="button" value="상세보기" class="detail_view"/>
				</div>
				</c:when>
				<c:otherwise>
				<div class="management_show shop_yes">
					<p>비승인</p>
					<div class="management_show shop_show">
					</div>
				</div>
				</c:otherwise>
				</c:choose>
				
			</div>
			</c:forEach>
			<div class="management_btn">
				<div class="shop_addition_btn">
					<p>매장추가</p>
				</div>
			</div>
		</div>
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>

