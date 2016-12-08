package kr.co.show.group.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuCheckVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.group.service.GroupService;

@RestController
public class GroupRestController {
	
	@Inject
	private GroupService service;
	
	@RequestMapping(value="/applicationInsert", method=RequestMethod.POST)
	public String applicationPost(GroupVO group, int member_no, HttpSession session) throws Exception{
		service.insert(group, member_no);

		String result = "OK";
		return result;
	}
	
	@RequestMapping(value="/menuDelete", method=RequestMethod.DELETE)
	public String menuDelete(int menu_no) throws Exception{
		service.menuDelete(menu_no);
		
		String result = "OK";
		return result;
	}
	
	@RequestMapping("/menuAdd")
	public String menuAdd(MenuManageVO menu) throws Exception{
		service.menuAdd(menu);
		
		String result = "OK";
		return result;
	}
	
	@RequestMapping(value="/menuUpdate", method=RequestMethod.PUT)
	public String menuUpdatePost(@RequestBody MenuManageVO menu) throws Exception{
		boolean ch = service.menuUpdatePost(menu);
		String result;
			if(ch==true) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping("/enterpriseRemoveApplication")
	public String enterpriseRemoveApplication(int group_no) throws Exception{
		boolean ch = service.enterpriseRemoveApplication(group_no);
		String result;
			if(ch==true) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping("/sideAdd")
	public String sideAdd(MenuManageVO menu) throws Exception{
		service.sideAdd(menu);
		
		String result = "OK";
		return result;
	}
	
	@RequestMapping(value="/sideUpdate", method=RequestMethod.PUT)
	public String sideUpdatePost(@RequestBody MenuManageVO menu) throws Exception{
		boolean ch = service.sideUpdatePost(menu);
		String result;
			if(ch==true) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping(value="/sideDelete", method=RequestMethod.DELETE)
	public String sideDelete(@RequestBody MenuManageVO menu) throws Exception{
		int ch = service.sideDelete(menu);
		String result;
			if(ch==1) result="OK";
			else result="NO";
		return result;
	}

	@RequestMapping(value="/reviewDelete", method=RequestMethod.DELETE)
	public String reviewDelete(int review_no) throws Exception{
		int ch = service.reviewDelete(review_no);
		String result;
			if(ch==1) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping("/stats_daySell")
	public List<OrderMenuVO> stats_daySell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("�Ϸ�");
		List<OrderMenuVO> sell_list = service.stats_daySell(order);
		model.addAttribute("sell_list",sell_list);
		System.out.println(sell_list.size());
		return sell_list;
	}
	
	@RequestMapping("/stats_dayMenuSell")
	public List<OrderMenuVO> stats_dayMenuSell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("�Ϸ�");
		List<OrderMenuVO> sell_list1 = service.stats_dayMenuSell(order);
		model.addAttribute("sell_list1",sell_list1);
		return sell_list1;
	}
	
	@RequestMapping("/stats_monthSell")
	public List<OrderMenuVO> stats_monthSell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("�Ϸ�");
		List<OrderMenuVO> sell_list2 = service.stats_monthSell(order);
		model.addAttribute("sell_list2",sell_list2);
		return sell_list2;
	}
	
	@RequestMapping("/stats_monthMenuSell")
	public List<OrderMenuVO> stats_monthMenuSell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("�Ϸ�");
		List<OrderMenuVO> sell_list3 = service.stats_monthMenuSell(order);
		model.addAttribute("sell_list3",sell_list3);
		return sell_list3;
	}
	
	@RequestMapping("/new_order")
	public List<OrderMenuVO> new_order(int group_no, int member_no) throws Exception{
		Map map = new HashMap();
		List<Integer> order_no = new ArrayList<Integer>();
		map.put("group_no", group_no);
		map.put("member_no", member_no);
		
		List<OrderMenuVO> new_list = service.orderList(map); //���⼭ �ֹ���ȣ�� ������ ��
		List<OrderMenuVO> omvo = new ArrayList<OrderMenuVO>();
		
		for (int i = 0; i < new_list.size(); i++) {
			OrderMenuVO vo = new_list.get(i);
			int no = vo.getOrder_no();
			map.put("order_no", no); //�ֹ���ȣ�� ������ db�� �ִ� �� ����
			
			
			OrderMenuVO om = new OrderMenuVO();
			
			om.setMcvo(service.menuCheck(map));
			om.setOrder_name(vo.getOrder_name());
			om.setOrder_no(vo.getOrder_no());
			om.setOrder_phone(vo.getOrder_phone());
			om.setOwner_ch(vo.getOwner_ch());
			
			
			omvo.add(i, om);

		} //�ֹ���ȣ �� ������ ��.
		
		return omvo;
	}
	
	@RequestMapping("/menu_name")
	public List<MenuCheckVO> menu_name(Map map, int member_no, int group_no, int order_no) throws Exception{
		List<MenuCheckVO> name = new ArrayList<MenuCheckVO>();
		
		System.out.println("member_no : "+member_no);
		System.out.println("group_no : "+group_no);
		System.out.println("order_no : "+order_no);
		
		map.put("member_no", member_no);
		map.put("group_no", group_no);
		map.put("order_no", order_no);
		
		name = service.menuCheck(map);
		
		return name;
	}

}
