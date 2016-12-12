package kr.co.show.order.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.order.domain.OrderVO;
import kr.co.show.order.service.OrderService;

@RestController
public class OrderRestController {
	
	@Inject
	private OrderService service;
	
	@RequestMapping("/sidecount")
	public String side_menu_count(int menu_no)throws Exception{
		int cou = service.sidecount(menu_no);
		String result;
		if(cou ==0){
			result ="NO";
		}else{
			result="OK";
		}
		return result;
	}
	
	@RequestMapping("/orderinsert")
	public String orderinsert(OrderMenuVO vo)throws Exception{
		int ins = service.orderinsert(vo);
		String result;
		if(ins == 1){
			result="OK";
		}else{
			result="NO";
		}
		return result;
	}
	
	@RequestMapping("/menuinsert")
	public String menu_insert(OrderMenuVO vo)throws Exception{
		int ch = service.menuinsert(vo);
		String result;
		if(ch ==1){
			result="OK";
		}else{
			result="NO";
		}
		return result;
	}
	@RequestMapping("/sideinsert")
	public String side_insert(OrderMenuVO vo)throws Exception{
		int ch = service.sideinsert(vo);
		String result;
		if(ch ==1){
			result="OK";
		}else{
			result="NO";
		}
		return result;
		
	}
}
