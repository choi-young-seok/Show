<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					$('.adminMain').empty();
					$('.adminMain').append(data);					
				}
			});
		});

		$('.gong').click(function(){
			var id = $("#id").val();
			$.ajax({
				url:'/show/management',
				data:{"member_no":id},
				success: function(data){
					$('.adminMain').empty();
					$('.adminMain').append(data);
				}
			});
		});

		$('.member').click(function(){
			$.ajax({
				url:'/show/stats',
				success: function(data){
					$('.adminMain').empty();
					$('.adminMain').append(data);
				}
			});
		});

		$('.shop').click(function(){		
			$.ajax({
				url:'/show/order_check',
				type: "POST",
				data: {
					"member_no" : <%=session.getAttribute("id") %>
				},
				success: function(data){
					$('.adminMain').empty();
					$('.adminMain').append(data);
				}
			});
		}); 
		
		function application(){
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
		}
	});
</script>
<title>사장님 페이지</title>
</head>
<body>
	<div id="wrap">
	<input type="hidden" value="${id }" id="id">
		<header>
			<%@include file="../shop_admin/header.jsp"%>
		</header>
		<div class="adminMain"></div>
		<div class="menu_pop" style="display:none; position: fixed; top: 0; left: 0; width: 1640px; height: 1200px; background-color: rgba(0,0,0,0.7); z-index: 1001; margin-left : 0px">
		</div>
		<footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer>
	</div>
</body>
</html>