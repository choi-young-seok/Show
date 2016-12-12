package kr.co.show.order.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

}
