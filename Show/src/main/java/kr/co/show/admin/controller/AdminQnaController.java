package kr.co.show.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminQnaController {
	/*@Inject
	private ����*/
	
	@RequestMapping("/main2")
	public String adminMain(){ //���, Ǫ�� ����ִ� ��
		
		return "admin/adminMain2";
	}
	
	@RequestMapping("/qnaList")
	public String qnalist(){
		return "admin/qna";
	}
	
	@RequestMapping("/qnaview")
	public String selectFaq(){ //������ ���ǻ��� �� ��ȸ
		return "user/community/qna_board/view";
	}
		
}
