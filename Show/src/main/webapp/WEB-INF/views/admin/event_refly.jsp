<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/event_refly.css" rel="stylesheet" type="text/css" />
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	function check2(){
		var notice_ch = '공지';
		$.ajax({
			url: '/show/event',
			data: {"notice_ch":notice_ch},
			success: function(data){
				$('.body').empty();
				$('.body').append(data);
				
			}
		});
	} 

	$(".refly_btn").on("click",function(){
		var ch = $('#ch').val();
		var title = $('#title').val();
		var text = $('#text').val();
		var no = $('.notice_no').val();
		//alert(ch+title+text);
		$.ajax({
			url:'/show/check',
			data:{"notice_no":no,"notice_ch":ch,"notice_title":title,"notice_text":text},
		
			success:function(data){
			if(data == 'upOKI'){
				alert("글 내역이 수정되었습니다.");
				$('.admin_member_refly').empty();
				$('.admin_member_refly').fadeOut(500);
				check2();
			}
		}
		});
	});
	
	//삭제 버튼 누르면 
	$('.delete_btn').click(function(){

		var no = $('.notice_no').val();
	
		$.ajax({
			url:'/show/removeNotice',
			type: 'POST',
			data: {"notice_no":no},
			success:function(data){
				if(data == 'deOKI'){
					alert("공지글이 삭제되었습니다.");
					$('.admin_member_refly').empty();
					$('.admin_member_refly').fadeOut(500);
					check2();
				}
		
			}
		});
	
	
	});
	//닫기 버튼 투르면  
	$('.close_btn').click(function(){
		var notice_no = $("#notice_no").val();
		$.ajax({
			url:'/show/user/list',
			data:{"notice_no":notice_no},
			success: function(result){
				$('.admin_member_refly').fadeOut(0);
				$('.admin_member_refly').empty();
			}
		});
	});

});//첼 첨의 짝

</script>
<TITLE> 공지사항 작성 </TITLE>


	<div class="write_box">
	<input type="hidden" class="notice_no" value="${notice_no }">
		<div class="choice">
			<p class="choice_left choice_text">분류</p>
			<select  class="choice_left select_op" id="ch" name="ch" >
			<c:choose>
			 <c:when test="${noticeVO.notice_ch eq '공지' }">
			 	<option>분류선택</option>
				<option selected="selected" value="공지">공지사항</option>
				<option value="이벤트">이벤트</option>
			</select>
			 </c:when>
			 <c:otherwise>
			 <option>분류선택</option>
				<option value="공지">공지사항</option>
				<option selected="selected" value="이벤트">이벤트</option>
			 </c:otherwise>
				</c:choose>
		</div>
		<div class="event_text">
			<p class="choice_left choice_text">제목</p>
			<input type="text" class="choice_left text_op" 
			value="${noticeVO.notice_title }" id="title" name="title"/>
		</div>
		<div class="event_call">
			<p class="choice_left choice_text">내용</p>
			<textarea class="choice_left call_op" id="text" name="text">${noticeVO.notice_text }</textarea>
		</div>
		
		<div class="event_btn">
			<p class="refly_btn">글수정</p>
			<p class="delete_btn">글삭제</p>
			<p class="close_btn">닫기</p>
		</div>
	</div>

    