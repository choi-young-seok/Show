package kr.co.show.admin.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.show.admin.service.AdminService;
import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;

@Controller
public class AdminController {  
	
	@Inject
	private AdminService service;
	
	@RequestMapping("/member")
	public String admin_member(Model model) throws Exception{
		List<MemberVO> list = service.memberList();
		model.addAttribute("list",list);
		
		return "/admin/member";
	
	}
	
	@RequestMapping("/admin_member_refly") 
	public String admin_member_refly(int member_no, Model model) throws Exception{
		//select하고
		//뿌려주고,
		model.addAttribute("detail", service.detail(member_no));
		System.out.println(service.detail(member_no).getMember_email());
		model.addAttribute("cnt",service.memberList().size());
		return "/admin/admin_member_refly";
	}
	@RequestMapping("/admin_group_refly")
	public String admin_group_refly(int group_no, Model model)throws Exception{
		model.addAttribute("detail2", service.detail2(group_no));
		model.addAttribute("cnt",service.memberList().size());
		return "/admin/admin_group_refly";
	}
	 

	
	@RequestMapping("/shop")
	public String admin_shop(Model model) throws Exception{

		List<GroupVO> list2 = service.groupList();
		List<GroupVO> list3 = service.categoryList();
		model.addAttribute("list3",list3);
		model.addAttribute("list2",list2);
		return"/admin/shop";
	}

	
	@RequestMapping("/test")
	public String test(){
		return "/admin/test";
	}
	
	

	
	
	
}
