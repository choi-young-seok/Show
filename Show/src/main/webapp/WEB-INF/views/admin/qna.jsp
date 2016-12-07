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
	
		/*게시글*/
		//$(".all_box_box").hide();
		$(".all_box_text").click(function() {
			$(this).next().slideToggle(); //글 한건의 내용 조회 가능 
		});
	
		//삭제 버튼 눌렀을 때
		$('.btn_box').click(function(){
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
			var no = $(this).attr('id');
			
			$.ajax({
				url:'/show/deQna',
				type:'post',
				data:{"qna_no":no},
				success:function(data){
					if(data == 'deQnaOK'){
						ok = confirm("문의 내역을 삭제하시겠습니까?");
						if(ok==1){
							alert("삭제되었습니다.");
						$('.admin_member_refly').empty();
						$('.admin_member_refly').fadeOut(500);
						check();
						}else {
							alert("삭제가 취소되었습니다.");
						}
							
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
								<li>${qnaVO.qna_name }</li>
							</ul>
						</div>
						<div class="phone">
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
