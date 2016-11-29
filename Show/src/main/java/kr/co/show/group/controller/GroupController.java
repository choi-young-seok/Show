package kr.co.show.group.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.group.service.GroupService;

@Controller
public class GroupController {
	
	@Inject
	private GroupService service;
	
	@RequestMapping("/index")
	public String form(){
		return "shop_admin/index";
	}
	
	@RequestMapping("/adminMain")
	public String adminMain(){
		return "shop_admin/shop_admin";
	}
	
	@RequestMapping("/application")
	public String applicationGet(){
		return "shop_admin/shop_application";
	}
	
	@RequestMapping("/management")//@RequestMapping("/listAll")
	public String management(int member_no, Model model) throws Exception{
		model.addAttribute("listAll",service.listAll(member_no));
		return "shop_admin/shop_management";
	}
	
	
	@RequestMapping("/orderCheck")
	public String orderCheck(){
		return "shop_admin/shop_order_check";
	}
	
	@RequestMapping("/stats")
	public String stats(){
		return "shop_admin/shop_stats";
	}
	
	@RequestMapping("/view")
	public String view(){
		return "shop_admin/shop_view";
	}
	
}
