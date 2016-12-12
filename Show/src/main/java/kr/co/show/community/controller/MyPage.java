package kr.co.show.community.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.community.domain.MyPageVO;
import kr.co.show.community.service.MyService;

@Controller
public class MyPage {
	@Inject
	private MyService service;
	
	@RequestMapping("/myPage")
	public String myPage(Model model, HttpSession session)throws Exception{
	
		int member_no= (int) session.getAttribute("id");
	

		List<MyPageVO> group = service.listGroup(member_no);
		List<MyPageVO> menu = service.listMenu(member_no);
		List<MyPageVO> order = service.listOrder(member_no);

		int total = 0;
		
		for (int i = 0; i < group.size(); i++) {
			for (int j = 0; j < order.size(); j++) {
				order.get(j).setGroup_name(group.get(i).getGroup_name());
				order.get(j).setGroup_phone(group.get(i).getGroup_phone());
					for (int k = 0; k < menu.size(); k++) {
						if(menu.get(k).getOrder_no() == order.get(j).getOrder_no()){
							total = total + (menu.get(k).getMenu_price() * menu.get(k).getMenu_count());
						}
						//System.out.println(total);
					}
				order.get(j).setMenu_price(total);
				total = 0;
			}
		} //그룹 이름을 다 받는 작업
		
		model.addAttribute("list", order);
		//System.out.println("list.toString (Controller for MyPage) : "+order.toString());
		
		model.addAttribute("list2", menu);
		//System.out.println("list2.toString (Contorller for MyPage) : " +menu.toString());
		
		
		
		
		//T만 갖고오기
		List<MyPageVO> t_group = service.refundGroup(member_no);
		List<MyPageVO> t_menu = service.refundMenu(member_no);
		List<MyPageVO> t_order = service.refundOrder(member_no);

		int t_total = 0;
		
		for (int i = 0; i < t_group.size(); i++) {
			for (int j = 0; j < t_order.size(); j++) {
				t_order.get(j).setGroup_name(t_group.get(i).getGroup_name());
				t_order.get(j).setGroup_phone(t_group.get(i).getGroup_phone());
					for (int k = 0; k < t_menu.size(); k++) {
						if(t_menu.get(k).getOrder_no() == t_order.get(j).getOrder_no()){
							t_total = t_total + (t_menu.get(k).getMenu_price() * t_menu.get(k).getMenu_count());
						}
						//System.out.println(total);
					}
				t_order.get(j).setMenu_price(t_total);
				t_total = 0;
			}
		} //그룹 이름을 다 받는 작업
		
		model.addAttribute("list3", t_order);
		model.addAttribute("list4", t_menu);
		return "user/community/myPage";
	}

}
