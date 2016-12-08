package kr.co.show.group.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.NoVO;
import kr.co.show.group.domain.OrderVO;
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
	
	@RequestMapping("/side_write")
	public String menuSide(String menu_category, int menu_no, Model model){
		model.addAttribute("menu_category", menu_category);
		model.addAttribute("menu_no", menu_no);
		return "shop_admin/side_write";
	}
	
	@RequestMapping("/side_list")
	public String sideList(int menu_no, Model model) throws Exception{
		model.addAttribute("menu_no1", menu_no);
		model.addAttribute("menu_list", service.sideList(menu_no));
		return "shop_admin/side_list";
	}
	
	@RequestMapping(value="/side_update", method=RequestMethod.GET)
	public String sideUpdateGet(MenuManageVO menu, Model model) throws Exception{
		model.addAttribute("sidemenu_one",service.sideUpdateGet(menu));
		return "shop_admin/side_refly";
	}
	
	@RequestMapping("/review_list")
	public String reviewList(int group_no, Model model) throws Exception{
		model.addAttribute("group_no", group_no);
		model.addAttribute("reviewList1",service.reviewList(group_no));
		return "shop_admin/review_list";
	}
	
	@RequestMapping("/stats_selectName")
	public String stats_selectName(int member_no, Model model) throws Exception{
		List<GroupVO> name_list = service.stats_selectName(member_no);
		model.addAttribute("name_list", name_list);
		return "shop_admin/shop_stats";
	}
	
	@RequestMapping("/order_check")
	public String orderCheck(Model model, int member_no) throws Exception{
		List<NoVO> name_list = service.groupName(member_no);
		model.addAttribute("name_list", name_list);
		return "shop_admin/shop_order_check";
	}
	
}
