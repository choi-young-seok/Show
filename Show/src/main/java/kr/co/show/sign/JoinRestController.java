package kr.co.show.sign;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.sign.domain.MemberVO;
import kr.co.show.sign.service.JoinService;

@RestController
@RequestMapping("/sign")
public class JoinRestController {
	
	@Inject
	private JoinService service;
	
	@RequestMapping("/sign_AX")
	public @ResponseBody String sign_AX(MemberVO vo, boolean allCheck, boolean emailCheck, boolean smsCheck) throws Exception{
		if(emailCheck){
			vo.setEmailCheck("T");
		}
		if(smsCheck)
			vo.setSmsCheck("T");
		if(allCheck)
			vo.setAllCheck("T");
		
		
		service.create(vo);
		
		return "OK";
	}
	@RequestMapping("/login_AX")
	public @ResponseBody String login_AX(String email, String password, HttpSession session) throws Exception{
		System.out.println("여긴 들어오니?");
		if(password.equals(service.login(email))){
			System.out.println("로그인 성공");
			session.setAttribute("email", email);
		} else{
			System.out.println("로그인 실패");
			return null;
		}
		
		return "OK";
	}
}
