<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<link href="css/view.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../../js/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".back_btn").click(function(){
			var backpage = "../../community/qna_board.html";
			$(location).attr("href",backpage);
		});
	});
</script>
<TITLE> ON SHOW 이벤트 페이지 </TITLE>

	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div><!--메뉴바 인클루드--></div>
		<div class="view_box">
			<div class="view_top">
				<ul>
					<li>제목</li>
					<li>제목들어가게 db값</li>
					<li>날짜</li>
					<li>날짜 들어가게 db값</li>
				</ul>
			<div>
			<div class="view_section">
				<div class="view_text">내용 db값 불러와라</div>
			</div>
			<div class="back_btn">
				<span>목록</span>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>

