package kr.co.show.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.service.GroupService;

@Controller
public class GroupController {
	
	private GroupService service;
	
	@RequestMapping("/index")
	public String form(){
		return "shop_admin/index";
	}
	
	@RequestMapping("/adminMain")
	public String adminMain(){
		return "shop_admin/shop_admin";
	}
	
	@RequestMapping(value="/application", method=RequestMethod.GET)
	public String applicationGet(){
		return "shop_admin/shop_application";
	}
	
	@RequestMapping(value="/application", method=RequestMethod.POST)
	public String applicationPost(GroupVO group) throws Exception{
		service.regist(group);
		
		return "OK";
	}
	
	@RequestMapping("/management")
	public String management(){
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
	
}
