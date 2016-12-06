<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/qna.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/bootstrap.css" rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function() {
		//페이징 단추
		$("#overall").show();
		$("#error").hide();
		$("#memberInfo").hide();
		$("#review").hide();
		$("#jehu").hide();
		$("#storeInfo").hide();
		$("#event").hide();
		$("#etc").hide();
		
		$(".qna_all").click(function() {
		
			$(".qna_all").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").show();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide(); 
			//페이징 단추
			$("#overall").show();
			$("#error").hide();
			$("#memberInfo").hide();
			$("#review").hide();
			$("#jehu").hide();
			$("#storeInfo").hide();
			$("#event").hide();
			$("#etc").hide();
			
		});
		$(".qna_join").click(function() {
			$(".qna_join").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").show();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
			//페이징 단추
			$("#overall").hide();
			$("#error").show();
			$("#memberInfo").hide();
			$("#review").hide();
			$("#jehu").hide();
			$("#storeInfo").hide();
			$("#event").hide();
			$("#etc").hide();

		});
		$(".qna_pay").click(function() {
			$(".qna_pay").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").show();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
			//페이징 단추
			$("#overall").hide();
			$("#error").hide();
			$("#memberInfo").show();
			$("#review").hide();
			$("#jehu").hide();
			$("#storeInfo").hide();
			$("#event").hide();
			$("#etc").hide();

		});
		$(".qna_rivew").click(function() {
			$(".qna_rivew").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").show();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
			//페이징 단추
			$("#overall").hide();
			$("#error").hide();
			$("#memberInfo").hide();
			$("#review").show();
			$("#jehu").hide();
			$("#storeInfo").hide();
			$("#event").hide();
			$("#etc").hide();
		});
		$(".qna_use").click(function() {
			$(".qna_use").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").show();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
			//페이징 단추
			$("#overall").hide();
			$("#error").hide();
			$("#memberInfo").hide();
			$("#review").hide();
			$("#jehu").show();
			$("#storeInfo").hide();
			$("#event").hide();
			$("#etc").hide();
		});
		$(".qna_ad").click(function() {
			$(".qna_ad").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").show();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").hide();
			//페이징 단추
			$("#overall").hide();
			$("#error").hide();
			$("#memberInfo").hide();
			$("#review").hide();
			$("#jehu").hide();
			$("#storeInfo").show();
			$("#event").hide();
			$("#etc").hide();
		});
		$(".qna_discontent").click(function() {
			$(".qna_discontent").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_other").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").show();
			$(".qna_other_view").hide();
			//페이징 단추
			$("#overall").hide();
			$("#error").hide();
			$("#memberInfo").hide();
			$("#review").hide();
			$("#jehu").hide();
			$("#storeInfo").hide();
			$("#event").show();
			$("#etc").hide();
		});
		$(".qna_other").click(function() {
			$(".qna_other").css({
				"background" : "#696969",
				"color" : "#fff"
			});
			$(".qna_all").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_join").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_pay").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_rivew").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_use").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_ad").css({
				"background" : "#fff",
				"color" : "#000"
			});
			$(".qna_discontent").css({
				"background" : "#fff",
				"color" : "#000"
			});

			$(".qna_all_view").hide();
			$(".qna_join_view").hide();
			$(".qna_pay_view").hide();
			$(".qna_rivew_view").hide();
			$(".qna_use_view").hide();
			$(".qna_ad_view").hide();
			$(".qna_discontent_view").hide();
			$(".qna_other_view").show();
			//페이징 단추
			$("#overall").hide();
			$("#error").hide();
			$("#memberInfo").hide();
			$("#review").hide();
			$("#jehu").hide();
			$("#storeInfo").hide();
			$("#event").hide();
			$("#etc").show();
		});
		/*게시글*/
		//$(".all_box_box").hide();
		$(".all_box_text").click(function() {
			$(this).next().slideToggle(); //글 한건의 내용 조회 가능 
		});
		function check(){
			var qna_no = $(this).attr('id');
			$.ajax({
				url:'/show/qna',
				data:{"qna_no":qna_no},
				success:function(data){
					$('.body').empty();
					$('.body').append(data);
					
				}
			})
		}
		//삭제 버튼 눌렀을 때
		$('.btn_box').click(function(){
			var no = $(this).attr('id');
			
			$.ajax({
				url:'/show/deQna',
				type:'post',
				data:{"qna_no":no},
				success:function(data){
					if(data == 'deQnaOK'){
						alert("문의 내역이 삭제되었습니다.");
						$('.admin_member_refly').empty();
						$('.admin_member_refly').fadeOut(500);
						check();
					}
				}
			});
		});
		
	});
</script>
<TITLE>ON SHOW 게시판</TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<div class="main">
			
			<div class="qna_list">
			
				<div class="qna_menu">
					<ul>
						<li class="qna_all menu_list">전체보기</li>
						<li class="qna_join menu_list">오류문의</li>
						<li class="qna_pay menu_list">회원정보문의</li>
						<li class="qna_rivew menu_list">리뷰문의</li>
						<li class="qna_use menu_list">제휴문의</li>
						<li class="qna_ad menu_list">업소정보문의</li>
						<li class="qna_discontent menu_list">이벤트</li>
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
				<d:forEach items="${lista }" var="qnaVO"> 
					<div class="all_box_text">
						<ul>
							<li>${qnaVO.qna_category }</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
					
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
						
					</div>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="overall">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div>  
				</div>
			
				<!--전체보기-->

				<!--오류문의-->
				<div class="qna_join_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '오류문의'}">
					<div class="all_box_text">
						<ul>
							<li>오류문의</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="error">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
				<!--회원가입-->

				<!--회원정보문의-->
				<div class="qna_pay_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '회원정보문의'}">
					<div class="all_box_text ">
						<ul>
							<li>회원정보문의</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="memberInfo">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
				<!--바로결제-->

				<!--리뷰문의-->
				<div class="qna_rivew_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '리뷰문의'}">
					<div class="all_box_text">
						<ul>
							<li>리뷰문의</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="review">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
				<!--리뷰관리-->

				<!--제휴문의-->
				<div class="qna_use_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '제휴문의'}">
					<div class="all_box_text">
						<ul>
							<li>제휴문의</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="jehu">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
				<!--이용문의-->

				<!--업소정보문의-->
				<div class="qna_ad_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '업소정보문의'}">
					<div class="all_box_text">
						<ul>
							<li>업소정보문의</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name}</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="storeInfo">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
				<!--광고문의-->

				<!--이벤트-->
				<div class="qna_discontent_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '이벤트'}">
					<div class="all_box_text">
						<ul>
							<li>이벤트</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
							<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="event">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
				<!--불편문의-->

				<!--기타-->
				<div class="qna_other_view qna_position all_box">
				<d:forEach items="${lista}" var="qnaVO"  >
				<d:if test="${qnaVO.qna_category eq '기타'}">
					<div class="all_box_text">
						<ul>
							<li>기타</li>
							<li>${qnaVO.qna_title }</li>
						</ul>
					</div>
					<div class="all_box_box" style="display:none">
						<div class="name">
							<ul>
								<li>문의자명</li>
								<li>${name }</li>
							</ul>
						</div>
						<div class="email">
							<ul>
								<li>이메일</li>
								<li><a href="mailto:${email }">${email }</a></li>
							</ul>
						</div>
						<div class="text">
							<ul>
								<li>문의내용</li>
								<li>${qnaVO.qna_text }</li>
							</ul>
						</div>
						<div class="btn_box" id="${qnaVO.qna_no }">
							<ul>
								<li>글삭제</li>
							</ul>
						</div>
					</div>
					</d:if>
					</d:forEach>
					<div class="text-center">
						<ul class="pagination" id="etc">

							<d:if test="${pageMaker.prev}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</d:if>

							<d:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<d:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</d:forEach>

							<d:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="test${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</d:if>

						</ul>
					</div> 
				</div>
			</div>
	</div>
		</div>
	
	<script>

	 $(".pagination li a").on("click", function(event){
		
		event.preventDefault(); //a태그의 href속성 ===> 화면이동 무력화
		
		var targetPage = $(this).attr("href");
		
		 $.ajax({
			url : '/show/'+targetPage,
			success : function(data) {
				//$('.body').empty();
				$('.body').html(data);
			}
		}); 
	}); 
	
</script>
</BODY>
</HTML>
