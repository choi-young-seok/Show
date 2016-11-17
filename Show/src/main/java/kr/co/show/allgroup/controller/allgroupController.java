package kr.co.show.allgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class allgroupController {
	
	@RequestMapping("/index")
	public String form(){
		return "shop_admin/index";
	}
	
	@RequestMapping("/application")
	public String application(){
		return "shop_admin/shop_application";
	}
	
	@RequestMapping("/management")
	public String management(){
		return "shop_admin/shop_management";
	}
	
	@RequestMapping("/orderCheck")
	public String orderCheck(){
		return "shop_admin/shop_order_check";
	}
	
	
}
