<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".qna").click(function(){
			$(".qna").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".gong").click(function(){
			$(".gong").css({"background":"#ffa500"});
			$(".qna").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".member").click(function(){
			$(".member").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
			$(".shop").css({"background":"#696969"});
		});
		$(".shop").click(function(){
			$(".shop").css({"background":"#ffa500"});
			$(".gong").css({"background":"#696969"});
			$(".member").css({"background":"#696969"});
			$(".qna").css({"background":"#696969"});
		});
		
		$('.qna').click(function(){
			$.ajax({    		  
				url:'/show/application',
				success: function(data){
					$('.adminMain').html(data); 
				}
			});
		});

		$('.gong').click(function(){
			$.ajax({    		  
				url:'/show/management',
				success: function(data){
					$('.adminMain').html(data); 
				}
			});
		});

		$('.member').click(function(){
			$.ajax({    		  
				url:'/show/orderCheck',
				success: function(data){
					$('.adminMain').html(data); 
				}
			});
		});

		$('.shop').click(function(){
			$.ajax({
				url:'/show/stats',
				success: function(data){
					$('.adminMain').html(data);
				}
			});
		}); 
	});
</script>
<title>사장님 페이지</title>
</head>
<body>
	<div id="wrap">
		<header>
			<%@include file="../shop_admin/header.jsp"%>
		</header>
		<div class="adminMain"></div>
		<footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer>
	</div>
</body>
</html>