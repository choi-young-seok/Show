package kr.co.show.sign;

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
	@RequestMapping("/sell_up")
	public String seller_view(){
		return "shop_admin/shop_join";
	}
	@RequestMapping("/login")
	public String login(){
		return "user/login";
	}
	@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.setAttribute("email", null);
		
		return "redirect:/";
	}
	
		
		
	
}