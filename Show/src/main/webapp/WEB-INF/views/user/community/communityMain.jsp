<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		
		$(".service").hover(function(){
			$(".menu_bottom1").css({"background":"#000"});
			$(".menu_bottom2").css({"background":"#fff"});
			$(".menu_bottom3").css({"background":"#fff"});
			$(".menu_bottom4").css({"background":"#fff"});
			$(".service").css({"background":"#696969","color":"#fff"});
			$(".event").css({"background":"#ededed","color":"#000"});
			$(".qna").css({"background":"#ededed","color":"#000"});
			$(".call").css({"background":"#ededed","color":"#000"});
		});
		
		$(".event").hover(function(){
			$(".menu_bottom1").css({"background":"#fff"});
			$(".menu_bottom2").css({"background":"#000"});
			$(".menu_bottom3").css({"background":"#fff"});
			$(".menu_bottom4").css({"background":"#fff"});
			$(".event").css({"background":"#696969","color":"#fff"});
			$(".service").css({"background":"#ededed","color":"#000"});
			$(".qna").css({"background":"#ededed","color":"#000"});
			$(".call").css({"background":"#ededed","color":"#000"});
		});
		
		$(".qna").hover(function(){
			$(".menu_bottom1").css({"background":"#fff"});
			$(".menu_bottom2").css({"background":"#fff"});
			$(".menu_bottom3").css({"background":"#000"});
			$(".menu_bottom4").css({"background":"#fff"});
			$(".qna").css({"background":"#696969","color":"#fff"});
			$(".event").css({"background":"#ededed","color":"#000"});
			$(".service").css({"background":"#ededed","color":"#000"});
			$(".call").css({"background":"#ededed","color":"#000"});
		});
		
		$(".call").hover(function(){
			$(".menu_bottom1").css({"background":"#fff"});
			$(".menu_bottom2").css({"background":"#fff"});
			$(".menu_bottom3").css({"background":"#fff"});
			$(".menu_bottom4").css({"background":"#000"});
			$(".call").css({"background":"#696969","color":"#fff"});
			$(".event").css({"background":"#ededed","color":"#000"});
			$(".qna").css({"background":"#ededed","color":"#000"});
			$(".service").css({"background":"#ededed","color":"#000"});
		});
		
		//hover 영역
		  $('.service').click(function(){//서비스 소개
         $.ajax({            
            url:'intro',
            success: function(data){
               $('.CommunityMain').html(data); 
            }
         });
      });
		
		  $('.event').click(function(){//공지사항 게시판
         $.ajax({            
            url:'list',
            success: function(data){
               $('.CommunityMain').html(data); 
            }
         });
      });
		  
		  $('.qna').click(function(){//자주 묻는 질문 게시판
         $.ajax({            
            url:'qnalist',
            success: function(data){
               $('.CommunityMain').html(data); 
            }
         });
      });
		  
		  $('.call').click(function(){//문의 글 쓰기 폼
         $.ajax({            
            url:'create',
            success: function(data){
               $('.CommunityMain').html(data); 
            }
         });
         });
		  
	   });
   
</script>
<TITLE> ON SHOW 이벤트 </TITLE>

</head>
<body>
   <div id="wrap">
      <header>
         <%@include file="../community/include/header.jsp"%>
      </header>
      	 <%@include file="../community/include/community_menu.jsp"%>
      <div class="CommunityMain"></div>
         <%@include file="../community/include/footer.jsp"%>
   </div>
</body>
</html>