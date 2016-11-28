package kr.co.show.sign.controller;

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

	@RequestMapping("/login_AX")
	public @ResponseBody String login_AX(String email, String password, HttpSession session) throws Exception{
		System.out.println("�α��� ���� ������?");
		MemberVO vo = service.login(email);
		String position = vo.getMember_position();
		String pass = vo.getMember_pass();
		int id = vo.getMember_no();
		if(password.equals(pass)){
			System.out.println("�α��� ����");
			session.setAttribute("email", email);
			session.setAttribute("id", id);
			session.setAttribute("position", position);
			
		} else{
			System.out.println("�α��� ����");
			return null;
		}
		
		return "OK";
	}
}
