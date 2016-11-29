<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/admin/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/admin/admin_header.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){
	$(".qna").click(function(){
		$(".qna").css({"background":"#ffa500"});
		$(".gong").css({"background":"#696969"});
		$(".member1").css({"background":"#696969"});
		$(".shop").css({"background":"#696969"});
	});
	$(".gong").click(function(){
		$(".gong").css({"background":"#ffa500"});
		$(".qna").css({"background":"#696969"});
		$(".member1").css({"background":"#696969"});
		$(".shop").css({"background":"#696969"});
	});
	$(".member1").click(function(){
		$(".member1").css({"background":"#ffa500"});
		$(".gong").css({"background":"#696969"});
		$(".qna").css({"background":"#696969"});
		$(".shop").css({"background":"#696969"});
	});
	$(".shop").click(function(){
		$(".shop").css({"background":"#ffa500"});
		$(".gong").css({"background":"#696969"});
		$(".member1").css({"background":"#696969"});
		$(".qna").css({"background":"#696969"});
	});
	
	 $('.qna').click(function(){
         $.ajax({            
            url:'qnaList',
            success: function(data){
               $('.adminMain').html(data); 
            }
         });
      });
	 $('.gong').click(function(){ //공지사항
         $.ajax({            
            url:'noticeList',
            success: function(data){
               $('.adminMain').html(data); 
            }
         });
      });
	 
});
</script>
<TITLE> 공지사항관리 </TITLE>
</HEAD>
<BODY>
	
		
    
        
      <header>
         <%@include file="header.jsp"%>
      </header>
      	
      <div class="adminMain"></div>
      
      <footer>
         <%@include file="footer.jsp"%>
      </footer>
 

</BODY>
</HTML>
