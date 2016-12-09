<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/shop_admin/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/shop_admin/shop_application.css" rel="stylesheet" type="text/css" />

<!-- BootStrap -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link href="resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    
<!-- Font Awesome Icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- x-handlebars -->


<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<script>
	$(document).ready(function() {
		$(".qna").click(function() {
			$(".qna").css({"background" : "#ffa500"});
			$(".gong").css({"background" : "#696969"});
			$(".member").css({"background" : "#696969"});
			$(".shop").css({"background" : "#696969"});
		});
		
		$(".gong").click(function() {
			$(".gong").css({"background" : "#ffa500"});
			$(".qna").css({"background" : "#696969"});
			$(".member").css({"background" : "#696969"});
			$(".shop").css({"background" : "#696969"});
		});
		
		$(".member").click(function() {
			$(".member").css({"background" : "#ffa500"});
			$(".gong").css({"background" : "#696969"});
			$(".qna").css({"background" : "#696969"});
			$(".shop").css({"background" : "#696969"});
		});
		
		$(".shop").click(function() {
			$(".shop").css({"background" : "#ffa500"});
			$(".gong").css({"background" : "#696969"});
			$(".member").css({"background" : "#696969"});
			$(".qna").css({"background" : "#696969"});
		});

		$('.application_btn').click(function() {
			var group_phone = $("#phone").val();
			var group_name = $("#groupName").val();
			var group_address = $("#groupAddr").val();
			var group_category = $("#groupCategory").val();
			var group_start_hour = $("select[name=start_hour]").val();
			var group_start_minute = $("select[name=start_minute]").val();
			var group_start = $("select[name=start_hour]").val() + $("select[name=start_minute]").val();
			var group_end_hour = $("select[name=end_hour]").val();
			var group_end_minute = $("select[name=end_minute").val();
			var group_end = $("select[name=end_hour]").val() + $("select[name=end_minute").val();
			var group_files = $("#groupFiles").val();
			var image_split = group_files.split("\\");
			var id = $("#id").val();
			
			$.ajax({
				url : '/show/applicationInsert',
				type:'post',
				data:{"group_phone":group_phone,"group_name":group_name,"group_address":group_address,"group_category":group_category,
						"group_start":group_start,"group_end":group_end,"group_files":image_split[2],"member_no":id},
				success : function(data) {
					if(data == 'OK'){
						alert("신청이 완료되었습니다.");
						application();
					}//if
				}//success
				,error: function(xhr,status){
					var group_phone1 = /^\d+$/;
					if(group_phone == ''){
						alert('전화번호를 입력하세요');
					}else if(group_phone1.test(group_phone) == false){
						alert('숫자만 입력하세요.');
						
					}else if(group_phone.length < 10 || group_phone.length > 13){
						alert('전화번호를 다시 확인해주세요.');
					}else if(group_name == ''){
						alert('상호명을 입력하세요');
					}else if(group_address == ''){
						alert('주소를 입력하세요.');
					}else if(group_category == ''){
						alert('업종을 입력하세요.');
					}else if(group_start_hour == '시' || group_start_minute == '분'){
						alert('시작시간을 선택하세요.');
					}else if(group_end_hour == '시' || group_end_minute == '분'){
						alert('종료시간을 선택하세요.');
					}else if(group_files == ''){
						alert('로고를 선택해주세요.');
					}
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
<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>
<TITLE>업체 신청</TITLE>
</HEAD>
<BODY>
	<div id="wrap">
		<%-- <header>
			<%@include file="../shop_admin/header.jsp"%>
		</header> --%>
		<form id='registerForm' role="form" method="post">
		<input type="hidden" value="${id }" id="id">
		<div class="shop_application">
			<div class="application">
				<p class="application_text">&nbsp;&nbsp;업체 신청서</p>
				<div class="application_phone">
					<p class="application_left phone left_size">연락처</p>
					<input type="text" class="application_left phone_input" id="phone" placeholder="&nbsp;&nbsp;-빼고 입력하세요" />
				</div>
				<div class="application_shop_name">
					<p class="application_left shop_name left_size">상호명</p>
					<input type="text" class="application_left shop_name_input" id="groupName"/>
				</div>
				<div class="application_addr">
					<p class="application_left addr left_size">업체주소</p>
					<input type="text" class="application_left addr_input" placeholder="&nbsp;&nbsp;동까지만 입력하세요" id="groupAddr"/>
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
				
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">매장로고(Drap & Drop)</label>
						<div class="fileDrop"></div>
					</div>
				</div>
				
				<div class="box-footer">
					<div>
						<hr>
					</div>
			
					<ul class="mailbox-attachments clearfix uploadedList">
					</ul>
			
					<button type="submit" class="btn btn-primary">신청하기</button>
				</div>
				</div>
				</div>
				</form>
				
				<!-- <div class="application_shop_image">
					<p class="application_left shop_image left_size">매장로고</p>
					<input type="file" class="application_left shop_image_input" id="groupFiles"/>
				</div> -->
<!-- 				<div class="application_btn">신청하기</div> -->
			</div>
		<%-- <footer>
			<%@include file="../shop_admin/footer.jsp"%>
		</footer> --%>
</BODY>
</HTML>

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn">
		<i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>    

<script>

var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '/upload2/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});


$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});



</script>
