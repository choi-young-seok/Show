package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import kr.co.show.community.domain.QnaVO;
import kr.co.show.community.service.QnaService;

@Controller
@RequestMapping("/user")
public class QnaController {
	@Inject
	private QnaService service;
	
	@RequestMapping("/community") //헤더 푸터 있는 것
	public String CommunityMain(){
		
		return "user/community/communityMain";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createQnaGet(){//문의글 작성 폼
		return "user/community/write";
	}
	@RequestMapping(value="/create",method=RequestMethod.POST)//DB 입력 요청
	public String createQnaPost(QnaVO vo)throws Exception{
	
		service.create(vo);
		
		return "redirect:community/write";
	}
	
	
	
	
	@RequestMapping("/intro")
	public String intro(){//서비스 소개
		
		return "user/community/introduce";
	}
	
	
	
	
	
}
