<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/write.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->

<!DOCTYPE meta PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
$(".write_btn").on("click",function(){
	function check(){
		$.ajax({            
            url:'/show/user/create',
            success: function(data){
               $('.write_box').html(data); 
            }
         });
	}
	var name = $('.name_box').val();
	var email = $('.email_box').val();
	var category = $('.qna_type_box').val();
	var title = $('.title_box').val();
	var text = $('.contents_box').val();
	
	  $.ajax({            
          url:'/show/checkData',
          data:{"qna_name":name,"qna_email":email,"qna_category":category,
        	  "qna_title":title,"qna_text":text},
          
          success: function(data){
        	  if (data == 'OK'){
        		  alert("문의글이 등록되었습니다.답변은 메일로 받아 보실 수 있습니다.");
        		  check();
        	  }
          }
       });
	});
	

});
</script>
<TITLE> ON SHOW 문의하기 </TITLE>

	<div id="wrap">
	
<form role="form" method="post">
		<div class="write_box">
	
			<div>문의자 명</div>
			<input class="name_box" name="qna_name" type="text" value="${name }" /> 
	
			<div>이메일</div>
			<input  class="email_box"   name="qna_email" type="text" value="${email }" />
		
			<div class="qna_type">
				<div class="qna_type_text">상담분류</div>
				<select class="qna_type_box" name="qna_category">
					<option>상담분류</option>
					<option>오류문의</option>
					<option>회원정보문의</option>
					<option>리뷰문의</option>
					<option>제휴문의</option>
					<option>업소정보문의</option>
					<option>이벤트</option>
					<option>기타</option>
				</select>
			</div>
			<div class="title">
				<div class="title_text">제목</div>
				<input class="title_box" type="text" name="qna_title"/>
			</div>
			<div class="contents">
				<div class="contents_text">문의내용</div>
				<textarea class="contents_box" name="qna_text"/></textarea>
			</div>
			
			
			<button class="write_btn" type="button">문의하기</button>
		</div>
</form>
		
	</div>

    