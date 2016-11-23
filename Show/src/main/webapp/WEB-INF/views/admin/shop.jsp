<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/shop.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<TITLE> 매장관리 </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="shop_top">
			<div class="select_shop">
				<p class="top_left top_text">지역</p>
				<select class="top_left">
					<option>지역</option>
					<option>지역db값</option>
				</select>
				<p class="top_left top_text">학교</p>
				<select class="top_left">
					<option>학교</option>
					<option>학교db값</option>
				</select>
				<p class="top_left top_text">학교검색</p>
				<input type="text" class="top_left"/>
				<div class="top_left search_btn">검색</div>
				<div class="top_left yes_btn">승인매장</div>
				<div class="top_left no_btn">비승인매장</div>
				<div class="top_left all_btn">전체매장</div>
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
					<li>첨부파일</li>
					<li>승인현황</li>
					<li>수정</li>
					<li>삭제</li>
				</ul>
			</div>
			<div class="shop_show">
				<ul>
					<li>지역db</li>
					<li>매장명db</li>
					<li>매장주명db</li>
					<li>매장주소db</li>
					<li>매장번호db</li>
					<li>
						<input type="file"/>
					</li>
					<li>
						<select>
							<option>승인</option>
							<option>비승인</option>
						</select>
					</li>
					<li>수정</li>
					<li>삭제</li>
				</ul>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>
</BODY>
</HTML>
