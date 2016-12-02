<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/event_refly.css" rel="stylesheet" type="text/css" />
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script type="text/javascript">

</script>
<TITLE> 공지사항 작성 </TITLE>


	<div class="write_box">
		<div class="choice">
			<p class="choice_left choice_text">분류</p>
			<select  class="choice_left select_op" >
			<c:choose>
			 <c:when test="${noticeVO.notice_ch eq '공지' }">
			 	<option>분류선택</option>
				<option selected="selected">공지사항</option>
				<option>이벤트</option>
			</select>
			 </c:when>
			 <c:otherwise>
			 <option>분류선택</option>
				<option>공지사항</option>
				<option selected="selected">이벤트</option>
			 </c:otherwise>
				</c:choose>
		</div>
		<div class="event_text">
			<p class="choice_left choice_text">제목</p>
			<input type="text" class="choice_left text_op" value="${noticeVO.notice_title }"/>
		</div>
		<div class="event_call">
			<p class="choice_left choice_text">내용</p>
			<textarea class="choice_left call_op" >${noticeVO.notice_text }</textarea>
		</div>
		
		<div class="event_btn">
			<p class="refly_btn">글수정</p>
			<p class="delete_btn">글삭제</p>
			<p class="close_btn">닫기</p>
		</div>
	</div>

    