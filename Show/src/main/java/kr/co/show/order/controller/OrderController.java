package kr.co.show.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
	@RequestMapping("/order")
	public String buy_order(){
		return "user/buy_order";
	}
}
