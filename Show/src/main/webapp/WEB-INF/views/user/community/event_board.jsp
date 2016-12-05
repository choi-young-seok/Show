<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

 <link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/event_list.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js">
</script>
<script type="text/javascript">
 	 $(document).ready(function(){

	$(".dd").click(function(){// 글 한건 조회 팝업 창
		
		var notice_no = $(this).prev().text();

		var popUrl = "eventview?notice_no="+notice_no;	//팝업창에 출력될 페이지 URL
		var popOption = "width=1000, height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
			window.open(popUrl,"",popOption);
	
	});
	});
</script>
<TITLE> ON SHOW 이벤트  </TITLE>

	<div id="wrap">
	
		<div class="event_list">
			<div class="list_name">
				<ul>
					<li>번호</li>
					<li>제목</li>
					<li>날짜</li>
					<li>구분</li>
				</ul>
			</div>
			<c:forEach items="${listNotice2}" var="noticeVO">
			<div class="list_board">
				<ul>
					<li>${noticeVO.notice_no }</li>
					<li class="dd">${noticeVO.notice_title }</li>
					<li>${noticeVO.notice_regdate }</li>
					<li>${noticeVO.notice_ch}</li>
				</ul>
			</div>
			</c:forEach>
			<div class="number_btn">
				<ul>
					<li class="back_btn">&laquo;</li>
					<li class="number">1</li>
					<li class="next_btn">&raquo;</li>
				</ul>
			</div>
		</div>
	
	</div>

