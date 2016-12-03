<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_header.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/admin/admin_footer.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){

$('.member1').click(function() {
	$.ajax({
		url : '/show/member',
		success : function(data) {
			$('.body').empty();
			$('.body').append(data);
		}
	});
});

$('.shop').click(function() {
	alert("Ddd");
	$.ajax({
		url : '/show/shop',
		success : function(data) {
			$('.body').empty();
			$('.body').append(data);
		}
	});
});

$('.qna').click(function() {
	$.ajax({
		url : '/show/qna',
		success : function(data) {
			$('.body').empty();
			$('.body').append(data);
		}
	});
});

$('.gong').click(function() {
	var notice_ch = '공지';
	$.ajax({
		url : '/show/event',
		data : {"notice_ch":notice_ch},
		success : function(data) {
			$('.body').empty();
			$('.body').append(data);
		}
	});
});





});

</script>
<title>회원리스트출력</title>
</head>

<body>
	<header> <%@ include file="../admin/header.jsp"%>
	</header>
	<div class="body">
	</div>

	<div class="admin_member_refly" style="display:none; position: fixed; top: 0; left: 0; width: 1600px; height: 1200px; background-color: rgba(0,0,0,0.7); z-index: 1001; margin-left : 0px">

	</div>

</body>`
<footer> <%@ include file="../admin/footer.jsp"%>
</footer>
</html>