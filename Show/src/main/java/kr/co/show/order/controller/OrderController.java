package kr.co.show.order.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.order.service.OrderService;

@Controller
public class OrderController {
	
	@Inject
	private OrderService service;
	
	@RequestMapping("/order")
	public String buy_order(int group_no, Model model)throws Exception{
		model.addAttribute("review",service.review(group_no));
		model.addAttribute("menu_list",service.menuList(group_no));
		model.addAttribute("category",service.categoryList(group_no));
		model.addAttribute("group_info",service.group_info(group_no));
		return "user/buy_order";
	}
	
	@RequestMapping("/side_menu")
	public String sidemenu(int menu_no,Model model)throws Exception{
		model.addAttribute("sidelist",service.side_list(menu_no));
		return "user/sidemenu_pop";
	}
	
}
