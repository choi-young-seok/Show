function Login() {

	// var frm = document.getElementById("Account_form");
	var email = $(".id_box").val();
	var password = $(".password_box").val();

	if (!email) {
		alert("이메일을 입력해주세요.");
		return;
	} else if (!password) {
		alert("비밀번호를 입력해주세요.");
		return;
	}

	Login_AX(email, password);

}
function Login_AX(email, password) {
	// var barth = year+"-"+month+"-"+day;

	$.ajax({
		url : '/show/sign/login_AX',
		type : 'POST',
		data : {
			"email" : email,
			"password" : password
		},

		success : function(result) {
			if (result == "OK") {
				alert('로그인되었습니다.');
				location.href='/show';
			} else if (result != "OK") {
				login_pop();
			}

		}
	});
	function login_pop(){
		$.ajax({
			url : '/show/sign/login_popup',
			type : 'POST',
			success : function(result) {
				$('.menu_pop').append(result);
				$('.menu_pop').fadeIn(0);
			}
		});
	}
}
