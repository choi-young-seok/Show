package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.co.show.community.domain.QnaVO;
import kr.co.show.community.service.QnaService;

@Controller
@RequestMapping("/community")
public class QnaController {
	@Inject
	private QnaService service;
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createGet(){
		return "user/community/write";
	}
	@RequestMapping(value="/create",method=RequestMethod.POST)//DB 입력 요청
	public String createPost(QnaVO vo,RedirectAttributes attr)throws Exception{
	
		service.create(vo);
		attr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:community/write";
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
