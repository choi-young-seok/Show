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

<script>
$('.detail').click(function(){
			var member_no = $(this).parent().parent().children().eq(1).text();
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

</HEAD>
<BODY>

	<div id="wrap">
		<div class="	">
			<div class="member_top">
				<ul>
					<li>선택</li>
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
					<div>
						<input type="checkbox" />
					</div>

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
						<p class="detail" >상세보기</p>
					</div>
				</div>
			</c:forEach>
			
			

			<div class="member_btn">
				<p>선택삭제</p>
			</div>
		</div>
	</div>
</BODY>
</HTML>
