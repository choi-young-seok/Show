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
	
		List<MyPageVO> box = new ArrayList<>();
		
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
		model.addAttribute("list2", menu);
		 
		   
		return "user/community/myPage";
	}
}
