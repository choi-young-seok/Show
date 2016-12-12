package kr.co.show.community.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.community.domain.MyPageVO;
import kr.co.show.community.service.MyService;
import kr.co.show.group.domain.MenuCheckVO;
import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.group.service.GroupService;

@RestController
public class MyPageRestControll {
	@Inject
	private MyService service;
	@Inject 
	private GroupService gservice;
	
	
	@RequestMapping(value="orderState", method=RequestMethod.PUT)
	public void ordertState(@RequestBody MyPageVO vo, Map map) throws Exception{

		
		map.put("member_no", vo.getMember_no());
		map.put("order_no", vo.getOrder_no());
		
		service.refunOrder(map);

	}
	@RequestMapping("/wait_order")
	public List<OrderMenuVO> wait_order(int group_no, int member_no) throws Exception{
		Map map = new HashMap();
		List<Integer> order_no = new ArrayList<Integer>();
		map.put("group_no", group_no);
		map.put("member_no", member_no);
		
		List<OrderMenuVO> new_list = gservice.orderList(map); //여기서 주문번호를 가지고 옴
		List<OrderMenuVO> omvo = new ArrayList<OrderMenuVO>();
		System.out.println(new_list.size());
		for (int i = 0; i < new_list.size(); i++) {
			OrderMenuVO vo = new_list.get(i);
			int no = vo.getOrder_no();
			map.put("order_no", no); //주문번호를 가져와 db에 넣는 게 목적
			
			
			OrderMenuVO om = new OrderMenuVO();
			
			om.setMcvo(gservice.menuCheck(map));
			om.setOrder_name(vo.getOrder_name());
			om.setOrder_no(vo.getOrder_no());
			om.setOrder_phone(vo.getOrder_phone());
			om.setOwner_ch(vo.getOwner_ch());
			om.setReservation_time(vo.getReservation_time());
			
			omvo.add(i, om);

		} //주문번호 다 가지고 옴.
		System.out.println("웨이트 오더!!");
		return omvo;
	}
}
