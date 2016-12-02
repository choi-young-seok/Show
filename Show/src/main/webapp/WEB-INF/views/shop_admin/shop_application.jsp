<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/shop_admin/shop_application.css"
	rel="stylesheet" type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function() {
		$(".qna").click(function() {
			$(".qna").css({
				"background" : "#ffa500"
			});
			$(".gong").css({
				"background" : "#696969"
			});
			$(".member").css({
				"background" : "#696969"
			});
			$(".shop").css({
				"background" : "#696969"
			});
		});
		$(".gong").click(function() {
			$(".gong").css({
				"background" : "#ffa500"
			});
			$(".qna").css({
				"background" : "#696969"
			});
			$(".member").css({
				"background" : "#696969"
			});
			$(".shop").css({
				"background" : "#696969"
			});
		});
		$(".member").click(function() {
			$(".member").css({
				"background" : "#ffa500"
			});
			$(".gong").css({
				"background" : "#696969"
			});
			$(".qna").css({
				"background" : "#696969"
			});
			$(".shop").css({
				"background" : "#696969"
			});
		});
		$(".shop").click(function() {
			$(".shop").css({
				"background" : "#ffa500"
			});
			$(".gong").css({
				"background" : "#696969"
			});
			$(".member").css({
				"background" : "#696969"
			});
			$(".qna").css({
				"background" : "#696969"
			});
		});

		
		
		$('.application_btn').click(function() {	
			var group_phone = $("#phone").val();
			var group_name = $("#groupName").val();
			var group_address = $("#groupAddr").val();
			var group_category = $("#groupCategory").val();
			var group_start = $("select[name=start_hour]").val() + $("select[name=start_minute]").val();
			var group_end = $("select[name=end_hour]").val() + $("select[name=end_minute").val();
			var group_files = $("#groupFiles").val();
			var image_split = group_files.split("\\");
			var id = $("#id").val();
			$.ajax({
				url : '/show/applicationInsert',
				type:'post',
				//headers:{"Content-Type":"application/json"},
				data:{"group_phone":group_phone,"group_name":group_name,"group_address":group_address,"group_category":group_category,
						"group_start":group_start,"group_end":group_end,"group_files":image_split[2],"member_no":id},
				success : function(data) {
					if(data == 'OK'){
						alert("신청이 완료되었습니다.");
						application();
					}//if
				}//success
				,error: function(xhr,status){
					alert(status+":"+xhr.statusText);
				}
			});//ajax
		});//click
		
		function application(){
			$.ajax({    		  
				url:'/show/application',
				success: function(data){
					$('.adminMain').html(data);
						$(".qna").css({"background":"#ffa500"});
						$(".gong").css({"background":"#696969"});
						$(".member").css({"background":"#696969"});
						$(".shop").css({"background":"#696969"});
				}
			});
		}
	});
</script>
<TITLE>업소 신청</TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<input type="hidden" value="${id }" id="id">
		<div class="shop_application">
			<div class="application">
				<p class="application_text">&nbsp;&nbsp;업소 신청서</p>
				<div class="application_name">
					<p class="application_left name left_size">신청자명</p>
					<input type="text" class="application_left name_input" />
				</div>
				<div class="application_phone">
					<p class="application_left phone left_size">연락처</p>
					<input type="text" class="application_left phone_input" id="phone"
						placeholder="&nbsp;&nbsp;-빼고 입력하세요" />
				</div>
				<div class="application_shop_name">
					<p class="application_left shop_name left_size">상호명</p>
					<input type="text" class="application_left shop_name_input" id="groupName"/>
				</div>
				<div class="application_addr">
					<p class="application_left addr left_size">업체주소</p>
					<input type="text" class="application_left addr_input"
						placeholder="&nbsp;&nbsp;동까지만 입력하세요" id="groupAddr"/>
				</div>
				<div class="application_school">
					<p class="application_left addr left_size">업체업종</p>
					<input type="text" class="application_left school_input" id="groupCategory"/>
				</div>
				<div class="application_start_time">
					<p class="application_left addr left_size">시작시간</p>
					<select name="start_hour" id="startHour">
						<option>시</option>
						<%
							for (int i = 0; i < 25; i++) {
								if (i < 10)
									out.println("<option value=0" + i + ">0" + i + "</option>");
							else
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						%>
					</select>
					<select name="start_minute" id="startMinute">
						<option>분</option>
						<%
							for (int i = 0; i < 61; i++) {
								if (i < 10)
									out.println("<option value=0" + i + ">0" + i + "</option>");
							else
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						%>
					</select>
				</div>
				<div class="application_end_time">
					<p class="application_left addr left_size">종료시간</p>
					<select name="end_hour" id="endHour">
						<option>시</option>
						<%
							for (int i = 0; i < 25; i++) {
								if (i < 10)
									out.println("<option value=0" + i + ">0" + i + "</option>");
							else
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						%>
					</select>
					<select name="end_minute" id="endMinute">
						<option>분</option>
						<%
							for (int i = 0; i < 61; i++) {
								if (i < 10)
									out.println("<option value=0" + i + ">0" + i + "</option>");
							else
								out.println("<option value=" + i + ">" + i + "</option>");
							}
						%>
					</select>
				</div>
				<form id='form' action="upload" method="post" enctype="multipart/form-data" target="zeroFrame">
				<div class="application_shop_image">
					<p class="application_left shop_image left_size">매장로고</p>
					<input type="file" class="application_left shop_image_input" id="groupFiles"/>
				</div>
				</form>
				<div class="application_btn">신청하기</div>
			</div>
		</div>
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
	</div>
</BODY>
</HTML>
