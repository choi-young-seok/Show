<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/user/menu_choice.css" rel="stylesheet" type="text/css" />
<script src="resources/js/common/jquery-3.0.0.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$('.side_pop_close').click(function(){
		$('#side_pop').empty();
		$('#side_pop').fadeOut(500);
	});
});
</script>
<div class="menu_box">
<div class="sidemenu" style=" position: relative; top: 60%; left: 65%">

		<div class="menu_name_side">

			<div class="side_pop_close">닫기</div>
		</div>

		<!-- <div class="menu_choice">
			<p class="text_black text_left">ex)양념통닭맛</p>
			<p class="text_red text_left">( 필수선택 )</p>
		</div> -->
		<div class="radio_choice">
			<ul>
			<c:forEach items="${sidelist}" var="side">
			<c:set var="sid" value="${side.sidemenu_pay }"></c:set>
			<c:set var="me" value="${sid - side.menu_price }"></c:set>
			<c:choose>
				<c:when test="${side.sidemenu_pay > side.menu_price }">
				<li>
				<label id="${side.sidemenu_no }">
					<input type="radio" class="mat_choice mat_left" name="choice1" value="${side.sidemenu_name }" id="${side.sidemenu_pay }원"/>
					<p class="mat_left mat_text" name="${side.sidemenu_name }">${side.sidemenu_name }(+<c:out value="${me }"/>)</p>
				</label>
				</li>
				</c:when>
				<c:otherwise>
				
				<li>
				<label id="${side.sidemenu_no }">
					<input type="radio" class="mat_choice mat_left" name="choice1" value="${side.sidemenu_name }" id="${side.sidemenu_pay }원"/>
					<p class="mat_left mat_text">${side.sidemenu_name }(<c:out value="${me }"/>)</p>
					</label>
				</li>
				
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<!-- <li>
					<input type="radio" class="mat_choice mat_left" name="choice1"/>
					<p class="mat_left mat_text">심하게 매운맛</p>
				</li>
				<li>
					<input type="radio" class="mat_choice mat_left" name="choice1"/>
					<p class="mat_left mat_text">순한 매운맛</p>
				</li>
				<li>
					<input type="radio" class="mat_choice mat_left" name="choice1"/>
					<p class="mat_left mat_text">존나 순한 매운맛</p>
				</li> -->
			</ul>
		</div>
		<div class="choice_btn">
			주문표에 추가
		</div>
		</div>
	</div>
