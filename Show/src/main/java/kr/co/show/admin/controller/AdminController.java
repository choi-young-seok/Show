package kr.co.show.admin.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.admin.service.AdminService;
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
		return "/admin/admin_member_refly";
	}
	
	@RequestMapping("/shop")
	public String admin_shop(){
		return"/admin/shop";
	}
	@RequestMapping("/test")
	public String test(){
		return "/admin/test";
	}
	
	@RequestMapping("/qna")
	public String qna(){
		return "/admin/qna";
	}
	@RequestMapping("/event")
	public String event(){
		return "/admin/event";
	}
	
}
