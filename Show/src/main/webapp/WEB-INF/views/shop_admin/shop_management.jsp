<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_management.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
	$('.gong').click(function(){
		var id = $("#id").val();
		$.ajax({
			url:'/show/management',
			data:{"member_no":1},
			success: function(data){
				$('.adminMain').html(data); 
			}
		});
	});
</script>
<TITLE> 내업소 관리 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
	<input type="hidden" value="${id }" id="id">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<div class="management">
			<div class="shop_management_text">
				<ul>
					<li>선택</li>
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
				<div class="management_show choice">
					<input type="checkbox" name="shop"/>
				</div>
				<div class="management_show image">
					<img src=""/>
				</div>
				<div class="management_show shop_name">
					<p>${i.group_name }</p>
				</div>
				<div class="management_show shop_addr">
					<p>${i.group_address }</p>
				</div>
				<div class="management_show shop_num">
					<p>${i.group_no }</p>
				</div>
				<div class="management_show shop_yes">
					<p>${i.group_ch }</p>
				</div>
				<div class="management_show shop_show">
					<input type="button" value="상세보기" class=""/>
				</div>
			</div>
			</c:forEach>
			<div class="management_btn">
				<div class="shop_addition_btn">
					<p>매장추가</p>
				</div>
				<div class="shop_delete_btn">
					<p>선택삭제</p>
				</div>
			</div>
		</div>
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>
</BODY>
</HTML>
