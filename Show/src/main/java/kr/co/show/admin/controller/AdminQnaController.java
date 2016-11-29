package kr.co.show.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminQnaController {
	/*@Inject
	private 서비스*/
	
	@RequestMapping("/main2")
	public String adminMain(){ //헤더, 푸터 들어있는 곳
		
		return "admin/adminMain2";
	}
	
	@RequestMapping("/qnaList")
	public String qnalist(){
		return "admin/qna";
	}
	
	@RequestMapping("/qnaview")
	public String selectFaq(){ //관리자 문의사항 글 조회
		return "user/community/qna_board/view";
	}
		
}
