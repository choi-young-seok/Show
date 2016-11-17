<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_application.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<TITLE> 업소 신청 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<%@include file="../shop_admin/header.jsp"%>
		</header>
		<div class="shop_application">
			<div class="application">
				<p class="application_text">&nbsp;&nbsp;업소 신청서</p>
				<div class="application_name">
					<p class="application_left name left_size">신청자명</p>
					<input type="text" class="application_left name_input"/>
				</div>
				<div class="application_phone">
					<p class="application_left phone left_size">연락처</p>
					<input type="text" class="application_left phone_input" placeholder="&nbsp;&nbsp;-빼고 입력하세요"/>
				</div>
				<div class="application_shop_name">
					<p class="application_left shop_name left_size">매장명</p>
					<input type="text" class="application_left shop_name_input" />
				</div>
				<div class="application_addr">
					<p class="application_left addr left_size">매장주소</p>
					<input type="text" class="application_left addr_input" placeholder="&nbsp;&nbsp;동까지만 입력하세요"/>
				</div>
				<div class="application_school">
					<p class="application_left addr left_size">인근대학</p>
					<input type="text" class="application_left school_input" />
				</div>
				<div class="application_btn">신청하기</div>
			</div>
		</div>
		
		<footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer>
	</div>
</BODY>
</HTML>
