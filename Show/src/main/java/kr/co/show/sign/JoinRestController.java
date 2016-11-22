package kr.co.show.sign;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
			vo.setMember_emailck("T");
		}
		if(smsCheck)
			vo.setMember_smsck("T");
		if(allCheck)
			vo.setMember_allcheck("T");
		
		
		service.create(vo);
		
		return "OK";
	}
	@RequestMapping("/sell_sign_AX")
	public @ResponseBody String sell_sign_AX(MemberVO vo, boolean allCheck) throws Exception{
		vo.setMember_nickName(null);
		if(allCheck)
			vo.setMember_allcheck("T");
		
		vo.setMember_position("20");
		
		System.out.println("여기는 와?");
		System.out.println(vo.toString());
		service.create_sell(vo);
		
		return "OK";
	}
	@RequestMapping("/login_AX")
	public @ResponseBody String login_AX(String email, String password, HttpSession session) throws Exception{
		System.out.println("로그인 여긴 들어오니?");
		MemberVO vo = service.login(email);
		String position = vo.getMember_position();
		String pass = vo.getMember_pass();
		int id = vo.getMember_no();
		if(password.equals(pass)){
			System.out.println("로그인 성공");
			session.setAttribute("email", email);
			session.setAttribute("id", id);
			session.setAttribute("position", position);
			
		} else{
			System.out.println("로그인 실패");
			return null;
		}
		
		return "OK";
	}
}
