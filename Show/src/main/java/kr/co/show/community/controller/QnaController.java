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
	
	@RequestMapping("/community") //��� Ǫ�� �ִ� ��
	public String CommunityMain(){
		
		return "user/community/communityMain";
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createQnaGet(){//���Ǳ� �ۼ� ��
		return "user/community/write";
	}
	@RequestMapping(value="/create",method=RequestMethod.POST)//DB �Է� ��û
	public String createQnaPost(QnaVO vo)throws Exception{
	
		service.create(vo);
		
		return "redirect:community/write";
	}
	
	
	@RequestMapping("/list")
	public String list(Model model) throws Exception {//�������� ���
		
		return "user/community/event_board";
	}
	
	@RequestMapping("/intro")
	public String intro(){//���� �Ұ�
		
		return "user/community/introduce";
	}
	
	
	
	@RequestMapping("/eventview") //�������� �� �Ѱ� ��ȸ 
	public String eventview(){
		
		return "user/community/event_view/view";
	}
	
	
}
