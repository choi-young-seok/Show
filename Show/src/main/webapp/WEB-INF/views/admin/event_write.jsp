<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/event_write.css" rel="stylesheet" type="text/css" />
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$('.write_btn').on("click",function(){
			
	var ch = $('#ch').val();
	var title = $('.title_box').val();
	var text = $('.text_box').val();
	
	//alert(text+ch+title+regdate);
	$.ajax({
		url: '/show/checkDataDa',
		data:{"notice_ch":ch,"notice_title":title,"notice_text":text},
		success: function(data){
			if (data === 'OKI'){
				alert("공지사항이 등록되었습니다.");
				check1();
				$('.admin_member_refly').empty();
				$('.admin_member_refly').fadeOut(500);
			}
		}
	});
	
		});
		
		//닫기 버튼 투르면 
		$(".close_btn").click(function(){
			$('.admin_member_refly').empty();
			$('.admin_member_refly').fadeOut(500);
		});
		
		function check1(){
			alert("dddd");
			$.ajax({
				url: '/show/event',
				success: function(data){
					$('.body').empty();
					$('.body').append(data);
					
				}
			});
		} 
		
	});
</script>
<TITLE> 공지사항 작성 </TITLE>
</HEAD>
<BODY>
	<div class="write_box">
		<div class="choice">
			<p class="choice_left choice_text" >분류</p>
			<select id="ch" class="choice_left select_op" name="notice_ch">
				<option>분류선택</option>
				<option value="공지">공지사항</option>
				<option value="이벤트">이벤트</option>
			</select>
		</div>
		<div class="event_text">
			<p class="choice_left choice_text">제목</p>
			<input type="text" class="title_box" name="notice_title"/>
		</div>
		<div class="event_call">
			<p class="choice_left choice_text">내용</p>
			<textarea class="text_box" name="notice_text" style="margin: 0px;width: 592px;height: 294px;"></textarea>
			<input type="hidden" name="notice_regdate" class='regdate_box'>
		</div>
		<div class="event_btn">
			<button class="write_btn">글등록</button>
			<button class="close_btn">닫기</button>
		</div>
	</div>
	
	
		
</BODY>
</HTML>
