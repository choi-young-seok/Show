package kr.co.show.sign.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sign")
public class JoinController {
		
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
	
}