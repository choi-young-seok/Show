<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/event_view/view.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".back_btn").click(function(){
			close();
		});
	});
</script>
<TITLE> ON SHOW 이벤트 페이지 </TITLE>

	<div id="wrap">
		<div class="view_box">
			<div class="view_top">
				<ul>
					<li>제목</li>
					<li>${noticeVO.notice_title }</li>
					<li>날짜</li>
					<li>${noticeVO.notice_regdate }</li>
				</ul>
			<div>
			<div class="view_section">
				<div class="view_text">${noticeVO.notice_text }</div>
			</div>
			<div class="back_btn">
				<span>목록</span>
			</div>
		</div>
	
	</div>

