<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<!-- <link href="resources/css/admin/admin_header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_footer.css" rel="stylesheet" type="text/css" />
 -->
 <link href="resources/css/admin/event.css" rel="stylesheet" type="text/css" />

		
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>

	$(document).ready(function(){
		$(".event_form").hide();
		$(".event_menu > ul > li:nth-child(1)").click(function(){
			$(".event_menu > ul > li:nth-child(1)").css({"background":"#ffa500"});
			$(".event_menu > ul > li:nth-child(2)").css({"background":"#696969"});
			$(".gong_form").show();
			$(".event_form").hide();
		});
		$(".event_menu > ul > li:nth-child(2)").click(function(){
			$(".event_menu > ul > li:nth-child(1)").css({"background":"#696969"});
			$(".event_menu > ul > li:nth-child(2)").css({"background":"#ffa500"});
			$(".event_form").show();
			$(".gong_form").hide();
		});
		
		/* 글쓰기 버튼 눌렀을 떄 */
		$(".write_btn").click(function(){
			var popUrl = "createNotice";	//팝업창에 출력될 페이지 URL
			var popOption = "width=800, height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
				window.open(popUrl,"",popOption);
			});
		
		//공지사항 타이틀을 누르면
		$(".viewNo").click(function(){
			var no = $(this).prev().text();
	
			$.ajax({
				url:'/show/adminEventView',
				data:{"notice_no":no},
				success: function(result){
					$('.admin_member_refly').append(result);
					$('.admin_member_refly').fadeIn(0);
				
					
				}
			});
		});
		
	});
</script>
<TITLE> 공지사항관리 </TITLE>

	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="main">
			<div class="event_menu">
				<ul>
					<li>공지사항관리</li>
					<li>이벤트관리</li>
				</ul>
			</div>
			<div class="gong_form">
				<div class="gong_main">
					<ul>
						<li>순번</li>
						<li>제목</li>
						<li>날짜</li>
					</ul>
				</div>
				<c:forEach items="${listNotice}" var="noticeVO">
				<c:if test="${noticeVO.notice_ch eq '공지' }">
				<div class="gong_text">
					<div id="notice_no">${noticeVO.notice_no }</div>
					<div class="viewNo">${noticeVO.notice_title }</div>
					<div>${noticeVO.notice_regdate }</div>
				</div>
				</c:if>
				</c:forEach>
			</div>

			<div class="event_form">
				<div class="event_main">
					<ul>
						<li>순번</li>
						<li>제목</li>
						<li>날짜</li>
					</ul>
				</div>
				<c:forEach items="${listNotice}" var="noticeVO">
				<c:if test="${noticeVO.notice_ch eq '이벤트' }">
				 <div class="event_text">
					 <input type="hidden" value="${noticeVO.notice_ch }" /> 
					<div id="notice_no">${noticeVO.notice_no } </div>
					<div class="viewEv">${noticeVO.notice_title } </div>
					<div>${noticeVO.notice_regdate }</div>
				</div> 
				</c:if>
				</c:forEach>
			</div>
			
			<button class="write_btn">글쓰기</button>


		</div>
	
	</div>

