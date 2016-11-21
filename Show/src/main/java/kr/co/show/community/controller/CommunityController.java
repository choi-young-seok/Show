package kr.co.show.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Controller
@RequestMapping("/community")
public class CommunityController {
	
	@RequestMapping("/create")
	public String create(){
		
		return "user/community/write";
	}
	
	@RequestMapping("/list")
	public String list(){
		
		return "user/community/event_board";
	}
	
	@RequestMapping("/qnalist")
	public String qnalist(){
		
		return "user/community/qna_board";
	}
	
	@RequestMapping("/eventview")
	public String eventview(){
		
		return "user/community/event_view/view";
	}
	
	@RequestMapping("/qnaview")
	public String qnaview(){
		
		return "user/community/qna_board/view";
	}
	
	@RequestMapping("/intro")
	public String intro(){
		
		return "user/community/introduce";
	}
	
}
