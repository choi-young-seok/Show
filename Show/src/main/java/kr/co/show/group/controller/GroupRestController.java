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
import org.springframework.web.bind.annotation.ResponseBody;
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
		order.setOwner_ch("완료");
		List<OrderMenuVO> sell_list = service.stats_daySell(order);
		model.addAttribute("sell_list",sell_list);
		System.out.println(sell_list.size());
		return sell_list;
	}
	
	@RequestMapping("/stats_dayMenuSell")
	public List<OrderMenuVO> stats_dayMenuSell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("완료");
		List<OrderMenuVO> sell_list1 = service.stats_dayMenuSell(order);
		model.addAttribute("sell_list1",sell_list1);
		return sell_list1;
	}
	
	@RequestMapping("/stats_monthSell")
	public List<OrderMenuVO> stats_monthSell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("완료");
		List<OrderMenuVO> sell_list2 = service.stats_monthSell(order);
		model.addAttribute("sell_list2",sell_list2);
		return sell_list2;
	}
	
	@RequestMapping("/stats_monthMenuSell")
	public List<OrderMenuVO> stats_monthMenuSell(OrderMenuVO order, Model model) throws Exception{
		order.setOwner_ch("완료");
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
		
		List<OrderMenuVO> new_list = service.orderList(map); //여기서 주문번호를 가지고 옴
		List<OrderMenuVO> omvo = new ArrayList<OrderMenuVO>();
		System.out.println(new_list.size());
		for (int i = 0; i < new_list.size(); i++) {
			OrderMenuVO vo = new_list.get(i);
			int no = vo.getOrder_no();
			map.put("order_no", no); //주문번호를 가져와 db에 넣는 게 목적
			
			
			OrderMenuVO om = new OrderMenuVO();
			
			om.setMcvo(service.menuCheck(map));
			om.setOrder_name(vo.getOrder_name());
			om.setOrder_no(vo.getOrder_no());
			om.setOrder_phone(vo.getOrder_phone());
			om.setOwner_ch(vo.getOwner_ch());
			om.setReservation_time(vo.getReservation_time());
			
			omvo.add(i, om);

		} //주문번호 다 가지고 옴.
		System.out.println("뉴 오더!!");
		return omvo;
	}
	
	@RequestMapping("/menu_name")
	public List<MenuCheckVO> menu_name(Map map, int member_no, int group_no, int order_no) throws Exception{
		List<MenuCheckVO> name = new ArrayList<MenuCheckVO>();
		int total = 0;
		
		map.put("member_no", member_no);
		map.put("group_no", group_no);
		map.put("order_no", order_no);
		
		name = service.menuCheck(map);
		
		for (int i = 0; i < name.size(); i++) {
			total = 0;
			for (int j = 0; j < name.size(); j++) {
				total = total + (name.get(j).getMenu_price() * name.get(j).getMenu_count());				
			}
			name.get(i).setTotal(total);
		}
		
		return name;
	}
	@RequestMapping(value="/checkUpdate", method=RequestMethod.PUT)
	public @ResponseBody String checkUpdate(@RequestBody OrderMenuVO vo) throws Exception{
		Map map = new HashMap();
		System.out.println(vo.getOwner_ch());
		System.out.println(vo.getOrder_no());
		map.put("owner_ch", vo.getOwner_ch());
		map.put("order_no", vo.getOrder_no());
		
		if(vo.getOwner_ch().equals("신청중")){
			service.checkUpdate(map);
			return "SUCCESS";
		}
		else if(vo.getOwner_ch().equals("대기")){
			service.checkUpdate(map);
			return "SUCCESS";
		}
		else if(vo.getOwner_ch().equals("완료")){
			service.checkUpdate(map);
			return "SUCCESS";
		}
		return "FAIL";
	}

}
