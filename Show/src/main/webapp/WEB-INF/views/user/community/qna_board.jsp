<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/user/community/qna_list.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="../resources/js/common/jquery-3.0.0.js"></script>

<script>


	$(document).ready(function(){
		$(".qna_all_view").show();
		$(".qna_join_view").hide();
		$(".qna_pay_view").hide();
		$(".qna_rivew_view").hide();
		$(".qna_use_view").hide();
		$(".qna_ad_view").hide();
		$(".qna_discontent_view").hide();
		$(".qna_other_view").hide();

		$(".qna_all").click(function(){
			$(".qna_all").css({"background":"#696969","color":"#fff"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});

			$(".qna_all_view").show();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
		});
		$(".qna_join").click(function(){
			$(".qna_join").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});
			
			$(".qna_all_view").hide();
			$(".qna_join_view").show();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();

			
		});
		$(".qna_pay").click(function(){
			$(".qna_pay").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").show();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();


		});
		$(".qna_rivew").click(function(){
			$(".qna_rivew").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});
			
			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").show();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();

		});
		$(".qna_use").click(function(){
			$(".qna_use").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").show();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
		});
		$(".qna_ad").click(function(){
			$(".qna_ad").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").show();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
		});
		$(".qna_discontent").click(function(){
			$(".qna_discontent").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_other").css({"background":"#fff","color":"#000"});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").show();
			$(".qna_other_view").hide();
		});
		$(".qna_other").click(function(){
			$(".qna_other").css({"background":"#696969","color":"#fff"});
			$(".qna_all").css({"background":"#fff","color":"#000"});
			$(".qna_join").css({"background":"#fff","color":"#000"});
			$(".qna_pay").css({"background":"#fff","color":"#000"});
			$(".qna_rivew").css({"background":"#fff","color":"#000"});
			$(".qna_use").css({"background":"#fff","color":"#000"});
			$(".qna_ad").css({"background":"#fff","color":"#000"});
			$(".qna_discontent").css({"background":"#fff","color":"#000"});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").show();
		});
		/*게시글*/
		$(".all_box_box").hide();
		$(".all_box_text").click(function(){
			$(".all_box_box").slideToggle();
		});


	});
</script>
<TITLE> ON SHOW 게시판  </TITLE>

	<div id="wrap">
	
		<div class="qna_list">
			<div class="qna_menu">
				<ul>
					<li class="qna_all menu_list">전체보기</li>
					<li class="qna_join menu_list">회원가입</li>
					<li class="qna_pay menu_list">바로결제</li>
					<li class="qna_rivew menu_list">리뷰관리</li>
					<li class="qna_use menu_list">이용문의</li>
					<li class="qna_ad menu_list">광고문의</li>
					<li class="qna_discontent menu_list">불편문의</li>
					<li class="qna_other menu_list">기타</li>
				</ul>
			</div>
		</div>
		
		<div class="qna_view">
			<div class="qna_text">
				<ul>
					<li>문의부분</li>
					<li>제목</li>
				</ul>
			</div>
			<!--전체보기-->
			<div class="qna_all_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>문의부분 db</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--전체보기-->

			<!--회원가입-->
			<div class="qna_join_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>회원가입</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--회원가입-->

			<!--바로결제-->
			<div class="qna_pay_view qna_position all_box">
				<div class="all_box_text ">
					<ul>
						<li>바로결제</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--바로결제-->

			<!--리뷰관리-->
			<div class="qna_rivew_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>리뷰관리</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--리뷰관리-->

			<!--이용문의-->
			<div class="qna_use_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>이용문의</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--이용문의-->

			<!--광고문의-->
			<div class="qna_ad_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>광고문의</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--광고문의-->

			<!--불편문의-->
			<div class="qna_discontent_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>불편문의</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--불편문의-->

			<!--기타-->
			<div class="qna_other_view qna_position all_box">
				<div class="all_box_text">
					<ul>
						<li>기타</li>
						<li>제목db</li>
					</ul>
				</div>
				<div class="all_box_box">
					<p>여기에 들어갈 글 작성db</p>
				</div>
			</div>
			<!--기타-->
		</div>
		
		<footer>
			<!--include-->
		</footer>
	</div>

    