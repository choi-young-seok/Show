package kr.co.show.group.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping("/detailView")//@RequestMapping("/reviewList"), @RequestMapping("/menuList"), @RequestMapping("/selelctOne")
	public String detailView(int group_no, Model model) throws Exception{
		model.addAttribute("detailView", service.detailView(group_no));
		model.addAttribute("menuList", service.menuList(group_no));
		model.addAttribute("reviewList", service.reviewList(group_no));
		return "shop_admin/shop_view";
	}
	
	@RequestMapping("/menu_write")
	public String menuWrite(int group_no, Model model){
		model.addAttribute("group_no",group_no);
		return "shop_admin/menu_write";
	}

	@RequestMapping(value="/menu_update", method=RequestMethod.GET)
	public String menuUpdateGet(int menu_no, Model model) throws Exception{
		model.addAttribute("menu_no1", menu_no);
		model.addAttribute("menu_no", service.menuUpdateGet(menu_no));
		return "shop_admin/menu_refly";
	}
	
	@RequestMapping("/menu_side")
	public String menuSide(String menu_category, Model model){
		model.addAttribute("menu_category", menu_category);
		return "shop_admin/menu_side";
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
