<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/write.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>



<TITLE> ON SHOW 문의하기 </TITLE>

	<div id="wrap">
	<header>
		<%@ include file="../community/include/header.jsp" %>
	</header>
		<%@ include file="include/community_menu.jsp" %>
		<div class="write_box">
			<div class="name">
				<div class="name_text">이름</div>
				<input class="name_box" type="text"/>
			</div>
			<div class="phone">
				<div class="phone_text">휴대폰</div>
				<input class="phone_box" type="text" placeholder="&nbsp;&nbsp;-를 빼고 입력해주세요."/>
			</div>
			<div class="qna_type">
				<div class="qna_type_text">상담분류</div>
				<select class="qna_type_box">
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
				<input class="title_box" type="text"/>
			</div>
			<div class="contents">
				<div class="contents_text">문의내용</div>
				<textarea class="contents_box"/></textarea>
			</div>
			
			<div class="check">
				<div class="check_text">이용동의</div>
				<label class="check_label">
					<input type="checkbox"/>
					개인정보 수집및 이용에 동의 합니다.
				</label>	
			</div>
			<div class="write_btn	">문의하기</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>

    