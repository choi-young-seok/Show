<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/admin/shop.css" rel="stylesheet"
	type="text/css" />
<!--JQUERY 영역-->
<script src="resources/js/common/jquery-3.0.0.js"></script>
<TITLE>매장관리</TITLE>
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
		var detail = function(group_no){//li) {
			//var group_no =$(this).attr("id");
			alert(group_no);
			$.ajax({
				url : '/show/admin_group_refly',
				data : {
					"group_no" : group_no
				},
				success : function(result) {
					$('.admin_member_refly').append(result);
					$('.admin_member_refly').fadeIn(0);
				}
			});
		};//);
	$(document).ready(function() {
		
		//상세조회
		//$('.detail2').click(function() {

		//승인현황 수정
		$('.update').click(function() {
			var group_no = $(this).attr("id");
			var sel = document.getElementById("select" + group_no);
			var group_ch = sel.options[sel.selectedIndex].value;

			$.ajax({
				url : '/show/admin_group_update', //URL요청
				type : 'post', //method요청방식
				headers : {
					"Content-Type" : "application/json" //서버에게 데이터 JSON으로 넘기겠음!!
				},
				dataType : 'text', //생략가능(클라이언트 <--- 서버)
				data : JSON.stringify({ //클라이언트 ---> 서버
					//JSON.stringify()함수 : JSON변환 함수
					group_ch : group_ch,
					group_no : group_no
				}),
				success : function(result) { //요청 성공시 콜백함수
					if (result === 'SUCCESS') //=== : 자료형 먼저 검사, 자료형 같을 때 내용비교, 다르면 false ex) if(1==='1') --> false
						//== : 형변화 후 내용 같을 때 검사
						alert("문의 내역이 수정되었습니다.");
				}
			});
		});


	//업종
		$('#category').change(function() {
			var category = $(this).val();
			alert(category);
			$.ajax({
				url : '/show/selectC',
				data : {
					"group_category" : category
				},
				success : function(result) {
					var a = document.getElementById("menulist");
					$('.shop_show').empty();
					result.forEach(function(group, i) {
						if (group.group_ch == 'T') {
							a.innerHTML = a.innerHTML + '<div class="shop_show">' +
								'<ul>' +
								'<li>서울특별시</li>' +
								'<li>' + group.group_name + '</li>' +
								'<li>' + group.member_name + '</li>' +
								'<li>' + group.group_address + '</li>' +
								'<li id="group_no">' + group.group_no + '</li>'
								+ '<li>' +
								'<select id="select' + group.group_no + '">' +
								'<option value="T" selected="selected">승인</option>' +
								'<option value="F">비승인</option>' +
								'</select></li>' +
								'<li class="update" id="' + group.group_no + '">수정</li>' +
								'<li class="detail2" onclick="detail('+group.group_no +')"  id="' + group.group_no + '">상세보기</li>' +
								'</ul></div>';

						} else {
							a.innerHTML = a.innerHTML + '<div class="shop_show">' +
								'<ul>' +
								'<li>서울특별시</li>' +
								'<li>' + group.group_name + '</li>' +
								'<li>' + group.member_name + '</li>' +
								'<li>' + group.group_address + '</li>' +
								'<li id="group_no">' + group.group_no + '</li>'
								+ '<li>' +
								'<select id="select' + group.group_no + '">' +
								'<option value="T">승인</option>' +
								'<option value="F" selected="selected">비승인</option>' +
								'</select></li>' +
								'<li class="update" id="' + group.group_no + '">수정</li>' +
								'<li class="detail2" onclick="detail('+group.group_no +')" id="' + group.group_no + '">상세보기</li>' +
								'</ul></div>';
						}


					});
				}
			});
		});

		//승인
		$('#chList').click(function() {
			
			$.ajax({
				url : '/show/chList',
				data : {
					"group_ch" : 'T'
				},
				success : function(result) {
					var a = document.getElementById("menulist");
					$('.shop_show').empty();
					result.forEach(function(group, i) {
						a.innerHTML = a.innerHTML + '<div class="shop_show">' +
						'<ul>' +
						'<li>서울특별시</li>' +
						'<li>' + group.group_name + '</li>' +
						'<li>' + group.member_name + '</li>' +
						'<li>' + group.group_address + '</li>' +
						'<li id="group_no">' + group.group_no + '</li>'
						+ '<li>' +
						'<select id="select' + group.group_no + '">' +
						'<option value="T" selected="selected">승인</option>' +
						'<option value="F" >비승인</option>' +
						'</select></li>' +
						'<li class="update" id="' + group.group_no + '">수정</li>' +
						'<li class="detail2" onclick="detail('+group.group_no +')" id="' + group.group_no + '">상세보기</li>' +
						'</ul></div>';
					});
				}
			});
		});
	
		//비승인
		$('#nchList').click(function() {
			
			$.ajax({
				url : '/show/nchList',
				data : {
					"group_ch" : 'F'
				},
				success : function(result) {
					var a = document.getElementById("menulist");
					$('.shop_show').empty();
					result.forEach(function(group, i) {
						a.innerHTML = a.innerHTML + '<div class="shop_show">' +
						'<ul>' +
						'<li>서울특별시</li>' +
						'<li>' + group.group_name + '</li>' +
						'<li>' + group.member_name + '</li>' +
						'<li>' + group.group_address + '</li>' +
						'<li id="group_no">' + group.group_no + '</li>'
						+ '<li>' +
						'<select id="select' + group.group_no + '">' +
						'<option value="T">승인</option>' +
						'<option value="F" selected="selected">비승인</option>' +
						'</select></li>' +
						'<li class="update" id="' + group.group_no + '">수정</li>' +
						'<li class="detail2" onclick="detail('+group.group_no +')" id="' + group.group_no + '">상세보기</li>' +
						'</ul></div>';
					});
				}
			});
		});
		
			//전체조회
			$(document).on('click','#allList',function() {
				$.ajax({
					url : '/show/shop',
					success : function(data) {
						$('.wrap').empty();
						$('.wrap').append(data);
						
					}
				});
				
			});
			
		

		
      //탈퇴신청		
     $('#dchList').click(function() {
			
			$.ajax({
				url : '/show/dchList',
				data : {
					"group_delete_ch" : 'T'
				},
				success : function(result) {
					var a = document.getElementById("menulist");
					$('.shop_show').empty();
					result.forEach(function(group, i) {
						a.innerHTML = a.innerHTML + '<div class="shop_show">' +
						'<ul>' +
						'<li>서울특별시</li>' +
						'<li>' + group.group_name + '</li>' +
						'<li>' + group.member_name + '</li>' +
						'<li>' + group.group_address + '</li>' +
						'<li id="group_no">' + group.group_no + '</li>'
						+ '<li>' +
						'<select id="select' + group.group_no + '">' +
						'<option value="T" selected="selected">승인</option>' +
						'<option value="F" >비승인</option>' +
						'</select></li>' +
						'<li class="update" id="' + group.group_no + '">수정</li>' +
						'<li class="detail2" onclick="detail('+group.group_no +')" id="' + group.group_no + '">상세보기</li>' +
						'</ul></div>';
					});
				}
			});
		});
      
      
 	$('#search_btn').click(function() {
		var text = $('#search_text').val();
		alert(text);
		$.ajax({
			url : '/show/searchList',
			data : {
				"group_name" : text
			},
			success : function(result) {
				var a = document.getElementById("menulist");
				$('.shop_show').empty();
				if(result.length == 0){
					alert("결과값이 없습니다.")
				}else{
				result.forEach(function(group, i) {
					if (group.group_name == text) {
						a.innerHTML = a.innerHTML + '<div class="shop_show">' +
							'<ul>' +
							'<li>서울특별시</li>' +
							'<li>' + group.group_name + '</li>' +
							'<li>' + group.member_name + '</li>' +
							'<li>' + group.group_address + '</li>' +
							'<li id="group_no">' + group.group_no + '</li>'
							+ '<li>' +
							'<select id="select' + group.group_no + '">' +
							'<option value="T" selected="selected">승인</option>' +
							'<option value="F">비승인</option>' +
							'</select></li>' +
							'<li class="update" id="' + group.group_no + '">수정</li>' +
							'<li class="detail2" onclick="detail('+group.group_no +')" id="' + group.group_no + '">상세보기</li>' +
							'</ul></div>';

					} else {
						a.innerHTML = a.innerHTML + '<div class="shop_show">' +
							'<ul>' +
							'<li>서울특별시</li>' +
							'<li>' + group.group_name + '</li>' +
							'<li>' + group.member_name + '</li>' +
							'<li>' + group.group_address + '</li>' +
							'<li id="group_no">' + group.group_no + '</li>'
							+ '<li>' +
							'<select id="select' + group.group_no + '">' +
							'<option value="T">승인</option>' +
							'<option value="F" selected="selected">비승인</option>' +
							'</select></li>' +
							'<li class="update" id="' + group.group_no + '">수정</li>' +
							'<li class="detail2" onclick="detail('+group.group_no +')" id="' + group.group_no + '">상세보기</li>' +
							'</ul></div>';
					}
					});
					}

				
			}
		});
	});
      
      
	});
</script>

</HEAD>
<BODY>
	<div id="wrap" class="wrap">
		<div class="shop_top">
			<div class="select_shop">
				<p class="top_left top_text">업종</p>
				<select class="top_left" id="category">
					<option>업종</option>
					<c:forEach items="${list3 }" var="group1">
						<option>${group1.group_category }</option>
					</c:forEach>
				</select>
				<p class="top_left top_text">업종검색</p>
				<input type="text" class="top_left" id="search_text"/>
				<div class="top_left search_btn" id="search_btn">검색</div>
				<div class="top_left yes_btn" id="chList">승인매장</div>
				<div class="top_left no_btn" id="nchList">비승인매장</div>
				<div class="top_left all_btn" id="allList">전체매장</div>
				<div class="top_left out_btn" id="dchList">탈퇴신청매장</div>
			</div>
		</div>
		<div class="shop" id="shop">
			<div class="shop_text">
				<ul>
					<li>지역</li>
					<li>매장명</li>
					<li>매장주명</li>
					<li>매장주소</li>
					<li>매장번호</li>
					<li>승인현황</li>
					<li>수정</li>
					<li>상세보기</li>
				</ul>
			</div>
			<div id="menulist"></div>
			<%
				request.setCharacterEncoding("UTF-8");
			%>
			<c:forEach items="${list2 }" var="group">
				<div class="shop_show">
					<ul>

						<li>서울특별시</li>
						<li>${group.group_name }</li>
						<li>${group.member_name}</li>
						<li>${group.group_address }</li>
						<li id="group_no">${group.group_no }</li>

						<li><c:choose>
								<c:when test="${group.group_ch eq 'T' }">
									<select id="select${group.group_no}">
										<option value="T" selected="selected">승인</option>
										<option value="F">비승인</option>
									</select>
								</c:when>
								<c:otherwise>
									<select id="select${group.group_no }">
										<option value="T">승인</option>
										<option value="F" selected="selected">비승인</option>
									</select>
								</c:otherwise>
							</c:choose></li>
						<li class="update" id="${group.group_no }">수정</li>
						<li class="detail2" onclick="detail(${group.group_no })" id="${group.group_no }">상세보기</li>
					</ul>
				</div>

			</c:forEach>
		</div>
	</div>
</BODY>
</HTML>
