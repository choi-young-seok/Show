<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="css/event_list.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../js/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".event_view").click(function(){
			var view = "event_view/view.html"
			$(location).attr('href',view);
		});
		$(".list_board").after("<div></div>");
	});
</script>
<TITLE> ON SHOW 이벤트  </TITLE>

	<div id="wrap">
		<header>
			<!--include-->
		</header>
		<div class="event_list">
			<div><!--menu_bar 인클루드--></div>
			<div class="list_name">
				<ul>
					<li>번호</li>
					<li>제목</li>
					<li>작성자</li>
					<li>날짜</li>
					<li>조회</li>
				</ul>
			</div>
			<!--db값에 있는거 for문-->
			<div class="list_board">
				<ul>
					<li>디비값</li>
					<li class="event_view">디비값</li>
					<li>디비값</li>
					<li>디비값</li>
					<li>디비값</li>
				</ul>
			</div>
			<div class="number_btn">
				<ul>
					<li class="back_btn">&laquo;</li>
					<li class="number">1</li>
					<li class="next_btn">&raquo;</li>
				</ul>
			</div>
		</div>
		<footer>
			<!--include-->
		</footer>
	</div>

