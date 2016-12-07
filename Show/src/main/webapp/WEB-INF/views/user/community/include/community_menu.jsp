<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href=../resources/css/style.css rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/menu_bar.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>
<script>

		//hover 영역
		$(".service").click(function(){ //서비스 소개
			var service = "intro";
			$(location).attr('href',service);
		});
		$(".event").click(function(){ //공지사항 게시판
			var event = "list";
			$(location).attr('href',event);
		});
		$(".qna").click(function(){ // 자주 묻는 질문
			var qna = "qnalist";
			$(location).attr('href',qna);
		});
		$(".call").click(function(){ // 문의글 작성 폼
			var call = "create";
			$(location).attr('href',call);
		});

</script>
<TITLE> ON SHOW 이벤트 </TITLE>

	<div id="wrap">
		<div class="community_bar">
			<div class="menu_bar">
				<div class="service">서비스소개</div>
				<div class="menu_bottom1"></div>
			</div>
			<div class="menu_bar">
				<div class="event">공지사항/이벤트</div>
				<div class="menu_bottom2"></div>
			</div>
			<div class="menu_bar">
				<div class="qna">자주묻는질문</div>
				<div class="menu_bottom3"></div>
			</div>
			<div class="menu_bar">
				<div class="call">문의하기</div>
				<div class="menu_bottom4"></div>
			</div>
		</div>
	</div>

