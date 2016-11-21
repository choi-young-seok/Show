<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<HTML LANG="KO">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<HEAD>
<!--css 링크 영역-->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/header_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/search.css" rel="stylesheet" type="text/css" />
<link href="resources/css/search_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section.css" rel="stylesheet" type="text/css" />
<link href="resources/css/section_media.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer_media.css" rel="stylesheet" type="text/css" />
<!-- <link href="buy/css/buy_search_test.css" rel="stylesheet" type="text/css" /> -->
<!--css 링크 영역-->

<!--스크립트 영역-->
<!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function(){
		$(".detaile_search_view").hide();
		$(".detaile_search_btn").click(function(){
			$(".detaile_search_view").fadeToggle();
		});
		//alert 창 if문으로 검색값 넣어줘
		$(".search_btn").click(function(){
			alert("대학교 이름을 입력해 주세요");
		});
	});
</script>
<!--스크립트 영역-->
<TITLE> ON SHOW </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<header>
			<div class="main_logo">
				<a href="/show">
					<img src="resources/image/logo.png"/>
				</a>
			</div>
			<nav>
				<ul class="nav_menu">
					<li><a href="community/introduce.html">서비스안내</a></li>
					<li><a href="community/qna_board.html">고객센터</a></li>
					<% if(session.getAttribute("email")==null){ %>
					<li><a href="sign/login">로그인</a></li>
					<% } else { %>
					<li><a href="sign/logout">로그아웃</a></li>
					<% } %>
					<li><a href="sign/up">회원가입</a></li>
				</ul>
			</nav>
		</header>
		<div class="mian_center">
			<div class="center_text">
				<p>"테이크아웃</p>
				<p>예약</p>
				<p>하고</p>
				<p>시간</p>
				<p>벌자"</p>
			</div>
		<!--search 영역-->
			<div class="search">
				<input class="search_text" type="text" name="search_text"/>
				<span class="search_btn" name="search_btn">검색</span>
				<span class="detaile_search_btn" name="detaile_search_btn">상세검색</span>
			</div>
			<!--상세검색-->
			<div class="detaile_search_view">
				<p class="detaile map_text">지역&nbsp;&nbsp;</p>
				<select name="map" class="map detaile choice">
					<option>선택</option>
					<option>서울</option><!--for문으로 지역 db값-->			
				</select>
				<p class="detaile university_text">대학교&nbsp;&nbsp;</p>
				<select name="university" class="university detaile choice">
					<option>선택</option>
					<option>호서대</option><!--for문으로 학교 db값-->
				</select>
				<span class="detaile detaile_btn">검색</span>
			</div>
			<!--상세검색-->
		<!--search 영역-->
		</div>
		<section>
			<div class="info_img">
				<div class="info_text">
					<p>ON SHOW 사용법</p>
				</div>
				<article>
					<div class="chapter_1 img_box">
						<img src="resources/image/school_search.png"/>
						<p>학교 검색 하기</p>
					</div>
					<div class="chapter_2 img_box">
						<img src="resources/image/buy_order.png"/>
						<p>메뉴 선택 및 예약</p>
					</div>
					<div class="chapter_3 img_box">
						<img src="resources/image/give.png"/>
						<p>바로 받기</p>
					</div>
				</article>
				<aside>
					<div class="event_board main_board">
						<span>&nbsp;&nbsp;공지사항</span>
						<!--밑에 list 테크 디비로 불러와줘-->
						<ul>
							<li>text text text</li>
						</ul>
					</div>
					<div class="onshow_info main_board">
						<span>&nbsp;&nbsp;ON SHOW 소개</span>
						<div class="onshow_info_img"></div>
						<div class="onshow_info_text">
							<ul>
								<li>text text text</li>
							</ul>
						</div>
					</div>
				</aside>
			</div>
		</section>
		<footer>
			<div class="footer_text1">
				<p><a href="">법적고지</a></p>
				<p><a href="">개인정보취급방식</a></p>
				<p><a href="">이용약관</a></p>
				<p><a href="">이메일 무단수집거부</a></p>
			</div>
			<div class="thanks_to">
				<p>Thank`s to -</p>
				<div class="thanks_text">
					<p>Programing : Sin yoo dong , Lee gil hak</p>
					<p>Web Disign : Jo chung hee</p>
				</div>
			</div>
		</footer>
		<div class="copyright">
				<p>Copyright ⓒ 2016 BRKOREA Company. All Rights Reserved.</p>
		</div>

	</div>
</BODY>
</HTML>