<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<!--스크립트 영역-->
<!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$.ajax({
		url : 'mainList',
		type: 'get',
		success : function(result){
			var list = "";
			var i = 0;

			$(result).each(function(){
				i++;
				list+=		"<a href='#detail'>"
							+"<div class='chapter_"+i+" img_box'>"
							+"<img src='resources/img/thumbnail"+this.group_files+"'/>"
							+"<p>"+this.group_name+"</p>"
							+"<button class='order_btn' onclick='order("+this.group_no+")'>주문하기</button>"
							+"</div>"
							+"</a>";
						if(i==3){
							i=0;
						}
			});//each
			$('#resultView').html(list);
		}//success
	});

 	$(document).ready(function(){
		$(".detaile_search_view").hide();
		$(".detaile_search_btn").click(function(){
			$(".detaile_search_view").fadeToggle();
		});
		$('#searchDetailBtn').click(function(){
			if($('#group_area').val()=='선택'){
				alert("지역을 선택해주세요");

				return;
			}
			if($('#group_categroy').val()=='선택'){
				alert("업종을 선택해주세요");
				return;
			}
		})
			/* $.ajax({
				url:,
				type:,
				data:,
				$.ajax({
					url : 'searchGroup',
					type : 'post',
					data : {"searchKeyword" : searchKeyword},
					success : function(result){
						var list = "";
						var i = 0;
						$(result).each(function(){
							i++;
							list+=		"<a href='#detail'>"
										+"<div class='chapter_"+i+" img_box'>"
										+"<img src='resources/image/school_search.png'/>"
										+"<p>"+this.group_name+"</p>"
										+"<button class='order_btn' onclick='order("+this.group_no+")'>주문하기</button>"
										+"</div>"
										+"</a>";
									if(i==3){
										i=0;
									}
						});//each
						$('#resultView').html(list);
					}//success 
			});//ajax*/
	}); 
	
	$(document).ready(function(){
		$(".myPage").click(function(){
			var no = <%=session.getAttribute("id")%>;
			$.ajax({
				url:'/show/myPage',
				data:{"member_no":no}
			});
		});
	});
	
	function order(group_no){
		var name = '${name}';
		alert(name);
		if(name==""){
			alert("로그인이 필요한 서비스입니다.");
			//location.href("/show/sign/login");
			return;
		}
		
		 $.ajax({
			url : 'order',
			type: 'get',
			data: {"group_no":group_no},
			success : function(result){
				$('.search').hide();
				$('.info_img').empty();
				$('.info_img').append(result);
			}//success
		});
	};
	
	$(function(){
		$('#searchBtn').click(function(){
			var searchKeyword = $('#searchKeyword').val();
			alert(searchKeyword);
			if(searchKeyword==""){
				alert("상호명을 입력하세요");
				return;
			}
			
			$.ajax({
				url : 'searchGroup',
				type : 'post',
				data : {"searchKeyword" : searchKeyword},
				success : function(result){
					var list = "";
					var i = 0;

					$(result).each(function(){
						i++;
						list+=		"<a href='#detail' >"
									+"<div class='chapter_"+i+" img_box'>"
									+"<img src='resources/img/thumbnail"+this.group_files+"' width='800' height='600' onclick='order("+this.group_no+")'/>"
									+"<p>"+this.group_name+"</p>"
									+"<button type='button' class='btn btn-success' onclick='order("+this.group_no+")'>주문하기</button>"
									+"</div>"
									+"</a>";
								if(i==3){
									i=0;
								}
					});//each
					$('#resultView').html(list);
				}//success
			});//ajax
		});
	});//ready
	
</script>
<!--스크립트 영역-->
<TITLE> ON SHOW </TITLE>
</HEAD>
<BODY>
	<div id="wrap">
	<%-- <input type="hidden" class="member_no" value="${id }"> --%>
		<header>
			<div class="main_logo">
				<a href="/show">
					<img src="resources/image/logo.png"/>
				</a>
			</div>
			<nav>
				<ul class="nav_menu">
					<li><a href="user/community">서비스안내</a></li>
					<li><a href="user/community">고객센터</a></li>
					<% if(session.getAttribute("id") == null && session.getAttribute("email") == null && session.getAttribute("position") == null) {%>
					<li><a href="sign/login">로그인</a></li>
					<li><a href="sign/up">회원가입</a></li>					
					<% } else { %>
					<li><a href="sign/logout">로그아웃</a></li>
					<li><a href="sign/modi">개인정보수정</a></li>
					<li><a href="myPage">마이 페이지</a></li>
					<%  } %>
					<% if(session.getAttribute("id")!=null){ %>
						<% if(session.getAttribute("position").equals("10")) { %>
					<!-- 	<li><a href="application">업체추가</a></li> -->
					 	<li><a href="adminMain">업체추가</a></li>
						<% } else if(session.getAttribute("position").equals("20")) { %>
						<li><a href="adminMain">업체 관리페이지</a></li>
					<% } %><% } %>
					${name }
					<c:if test="${name}">
					<li><a href="adminMain">${name }</a></li>
					</c:if>
					<li><a href="adminMain">${test }</a></li>
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
				<input class="search_text" type="text" name="search_text" id="searchKeyword"/>
				<span id="searchBtn" class="search_btn" name="search_btn">검색</span>
				<span id="detaile_search_btn" class="detaile_search_btn" name="detaile_search_btn">상세검색</span>
			</div>
			<!--상세검색-->
			<div class="detaile_search_view">
				<p class="detaile map_text">지역&nbsp;&nbsp;</p>
				<select id="group_area" name="group_area" class="map detaile choice">
					<option>선택</option>
					<option>가산디지털단지</option><!--for문으로 지역 db값-->			
				</select>
				<p class="detaile university_text">업종&nbsp;&nbsp;</p>
				<select id="group_categroy" name="group_categroy" class="university detaile choice">
					<option>선택</option>
					<option>음식점</option><!--for문으로 학교 db값-->
					<option>카페</option><!--for문으로 학교 db값-->
					<option>고기집</option><!--for문으로 학교 db값-->
					<option>주점</option><!--for문으로 학교 db값-->
				</select>
				<span id="searchDetailBtn" class="detaile detaile_btn">검색</span>
			</div>
			<!--상세검색-->
		<!--search 영역-->
		</div>
		<section>
			<div class="info_img">
				<div class="info_text">
					<p>ON SHOW 사용법</p>
				</div>
				
				<article id="resultView"></article>
				
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