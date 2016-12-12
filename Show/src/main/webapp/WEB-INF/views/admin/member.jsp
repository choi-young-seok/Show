<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/admin_header.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/admin/admin_footer.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/admin/member.css" rel="stylesheet"
	type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<TITLE>회원관리</TITLE>
<style>
.btn_box {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 10;
}

.btn_box a {
	display: block;
	position: absolute;
	width: 35px;
	height: 35px;
	top: 50%;
}

.btn_box a.prev {
	left: 0px;
	top: 230px;
}

.btn_box a.next {
	right: 10px;
	top: 230px;
}

a {
	text-decoration: none;
	color: #333;
}
</style>
<script>

			
</script>

</HEAD>
<BODY>

	<div id="wrap">
		<div class="memberlist" id="memberlist">
			<input type="text" class="top_left" id="search_text" />
			<div class="top_left search_btn" id="search_btn">검색</div>
			<div class="member_top" id="member_top">
				<ul>
					<li>회원번호</li>
					<li>이메일</li>
					<li>이름</li>
					<li>포지션</li>
					<li>상세보기</li>
				</ul>
			</div>
			<%
				request.setCharacterEncoding("UTF-8");
			%>
			<c:forEach items="${list }" var="member">
				<div class="member_choice">

					<div>${member.member_no }</div>
					<div>${member.member_email }</div>
					<div>${member.member_name }</div>

					<c:if test="${member.member_position == '10'}">
						<div>사용자</div>
					</c:if>
					<c:if test="${member.member_position == '20'}">
						<div>사장님</div>
					</c:if>
					<c:if test="${member.member_position == '30'}">
						<div>관리자</div>
					</c:if>

					<div>
						<p class="detail">상세보기</p>
					</div>
				</div>
			</c:forEach>




		</div>
	</div>
</BODY>
<script type="text/javascript">
$(document).ready(function(){
	$('#search_btn').click(function(){
		var text = $('#search_text').val();
		alert("Dd");
		alert(text);
		$.ajax({
			url : '/show/searchList2',
			type : 'post',
			data : {
				"member_name" : text
			},
			success : function(result) {
				var a = document.getElementById("memberlist");
				$('.memberlist').empty();
				if(result.length == 0){
					alert("결과값이 없습니다.")
				}else{
				result.forEach(function(member, i) {
					
						a.innerHTML = a.innerHTML + 
						'<input type="text" class="top_left" id="search_text" />' +
							'<div class="top_left search_btn" id="search_btn">검색</div>' + 
							'<div class="member_top" id="member_top">' +
								'<ul>' +
									'<li>회원번호</li>' +
									'<li>이메일</li>' +
									'<li>이름</li>' +
									'<li>포지션</li>' +
									'<li>상세보기</li>' +
								'</ul>' +
							'</div>' +
						'<div class="member_choice">'+
							'<div>' + member.member_no + '</div>' +
							'<div>' + member.member_email + '</div>' +
							'<div>' + member.member_name + '</div>' +
							'<div class="posi"></div>' +
							'<div>   <p class="detail">상세보기</p> </div>'+
							'</div>';
						 if(member.member_position == '10'){
							$('.posi').text('사용자');
						}else if(member.member_position == '20'){
							$('.posi').text('사장님');
						}else if(member.member_position == '30'){
							$('.posi').text('관리자');
						} 
						
					});
					}

				
			}
		});
	});
	
	
	});
$(document).on('click','.detail',function(){
	var member_no = $(this).parent().parent().children(':first()').text();
	alert(member_no);
	$.ajax({
		url:'/show/admin_member_refly',
		data:{"member_no":member_no},
		success: function(result){
			$('.admin_member_refly').append(result);
			$('.admin_member_refly').fadeIn(0);
		}
	}); 
});
</script>
</HTML>
