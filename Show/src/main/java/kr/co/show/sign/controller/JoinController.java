package kr.co.show.sign.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.show.sign.domain.MemberVO;
import kr.co.show.sign.service.JoinService;

@Controller
@RequestMapping("/sign")
public class JoinController {
	@Inject
	JoinService service;
	
	@RequestMapping("/up")
	public String buyer_view(){
		return "common/join";
	}
	@RequestMapping("/login")
	public String login(){
		return "user/login";
	}
	@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.setAttribute("email", null);
		session.setAttribute("id", null);
		session.setAttribute("position", null);
		
		return "redirect:/";
	}
	
	@RequestMapping("/find")
	public String findIdPass(){
		return "common/findIdPass";
	}
	@RequestMapping("/modi")
	public String modify(HttpSession session) throws Exception{
		String emailSample = (String) session.getAttribute("email");
		MemberVO dto = service.modify(emailSample);
		String birthSample = dto.getMember_birth();
		String phoneSample = dto.getMember_phone();
		
		String email[] = emailSample.split("@");
		String birth[] = birthSample.split("-");
		String phone[] = phoneSample.split("-");
		
		birth[2] = birth[2].substring(0, 2);
		
		session.setAttribute("modi_email1", email[0]);
		session.setAttribute("modi_email2", email[1]);
		session.setAttribute("modi_name", dto.getMember_name());
		session.setAttribute("modi_nickName", dto.getMember_nickName());
		session.setAttribute("modi_phone1", phone[0]);
		session.setAttribute("modi_phone2", phone[1]);
		session.setAttribute("modi_phone3", phone[2]);
		session.setAttribute("modi_birth1", birth[0]);
		session.setAttribute("modi_birth2", birth[1]);
		session.setAttribute("modi_birth3", birth[2]);
		
		return "common/modify";
	}
	@RequestMapping("/login_popup")
	public String login_popup(){
		return "common/login_popup";
	}
	
}