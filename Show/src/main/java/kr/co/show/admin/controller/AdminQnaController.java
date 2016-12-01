package kr.co.show.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.PageMaker;
import kr.co.show.community.service.QnaService;

@Controller
@RequestMapping
public class AdminQnaController {
	@Inject
	private QnaService service;
	
	@RequestMapping("/qna")
	public String listQna(Model model,String qna_ch)throws Exception{
		qna_ch="처리중";
		model.addAttribute("lista",service.list(qna_ch));
		
		return "admin/qna";
	}
	
	/*@RequestMapping("/qnaview")
	public String selectFaq(){ //관리자 문의사항 글 조회
		return "user/community/qna_board/view";
	}*/
		
}
