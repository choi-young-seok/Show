package kr.co.show.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Controller
@RequestMapping("/community")
public class CommunityController {
	
	@RequestMapping("/hello")
	public String sayHello(){
		
		
		return "user/community/write";
	}
	
	
}
