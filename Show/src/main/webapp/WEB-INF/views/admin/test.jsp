
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_footer.css" rel="stylesheet" type="text/css" />
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
	$.ajax({
		url : '/show/event',
		success : function(data) {
			$('.body').empty();
			$('.body').append(data);
		}
	});
});

$('.read').click(function() {
	$.ajax({
		url : '/show/admin_member_refly',
		success : function(data) {
			$('.body').empty();
			$('.body').append(data);
		}
	});
});







});

</script>
<title>Insert title here</title>
</head>
	
<body>
		<header>
			<%@ include file="../admin/header.jsp" %>
		</header>
	<div class="body">
	
	</div>
	
		
</body>
<footer>
	<%@ include file="../admin/footer.jsp" %>	
	</footer>
</html>