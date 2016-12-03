<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/shop.css" rel="stylesheet"
	type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<TITLE>매장관리</TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header> <!--include--> </header>
		<div class="shop_top">
			<div class="select_shop">
				<p class="top_left top_text">지역</p>
				<select class="top_left">
					<option>지역</option>
					<option>지역db값</option>
				</select>
				<p class="top_left top_text">업종</p>
				<select class="top_left">
					<option>업종</option>
					<option>업종db값</option>
				</select>
				<p class="top_left top_text">업종검색</p>
				<input type="text" class="top_left" />
				<div class="top_left search_btn">검색</div>
				<div class="top_left yes_btn">승인매장</div>
				<div class="top_left no_btn">비승인매장</div>
				<div class="top_left all_btn">전체매장</div>
				<div class="top_left out_btn">탈퇴신청매장</div>
			</div>
		</div>
		<div class="shop">
			<div class="shop_text">
				<ul>
					<li>지역</li>
					<li>매장명</li>
					<li>매장주명</li>
					<li>매장주소</li>
					<li>매장번호</li>
					<li>승인현황</li>
					<li>수정</li>
					<li>상세보기
					<li>
				</ul>
			</div>
			<%
				request.setCharacterEncoding("UTF-8");
			%>
			<c:forEach items="${list2 }" var="group">
				<div class="shop_show">
					<ul>

						<li>서울특별시</li>
						<li>${group.group_name }</li>
						<li>${group.member_name}</li>
						<li>${group.group_address }</li>
						<li>${group.group_no }</li>

						<li>
						<c:choose>
						<c:when test="${group.group_ch eq 'T' }">
						<select>
							<option selected="selected">승인</option>
							<option>비승인</option>
						</select>
						</c:when>
						<c:otherwise>
						<select>
							<option>승인</option>
							<option selected="selected">비승인</option>
						</select>
						</c:otherwise>
						</c:choose>
						</li>
						<li>수정</li>
						<li>상세보기</li>
					</ul>
				</div>
			</c:forEach>
		</div>
	</div>
</BODY>
</HTML>
