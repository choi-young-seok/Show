package kr.co.show.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/member")
	public String admin_member(){
		return "/admin/member";  
	}
	
	@RequestMapping("/admin_member_refly")
	public String admin_member_refly(){
		return"/admin/admin_member_refly";
	}
	
	@RequestMapping("/shop")
	public String admin_shop(){
		return"/admin/shop";
	}
}
