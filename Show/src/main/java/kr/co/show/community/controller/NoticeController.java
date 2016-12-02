package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;
import kr.co.show.community.domain.PageMaker;
import kr.co.show.community.service.NoticeService;

@Controller
public class NoticeController {

	@Inject
	private NoticeService service;
	
	//�������� �۾��� ��
	@RequestMapping("/createNotice")
	public String create()throws Exception {
		return "admin/event_write";
	}

	
	//������ ������ �������� ���
	@RequestMapping("/event")
	public String listNotice(Model model)throws Exception {
		
		model.addAttribute("listNotice", service.listNotice());
		
		return "admin/event";
	}
	//community �Խ��� �������� ���
	@RequestMapping("/user/list")
	public String list(Model model) throws Exception {
		
		model.addAttribute("listNotice2", service.listNotice());

		return "user/community/event_board";
	}
	//community �Խ��� �������� �� �Ѱ� ��ȸ 
	@RequestMapping("/user/eventview") 
	public String eventview(int notice_no,Model model)throws Exception{
	
		model.addAttribute(service.selectNotice(notice_no));
		
		return "user/community/event_view/view";
	}
	
	//admin �Խ��� �������� �� �Ѱ� ��ȸ
	@RequestMapping("/adminEventView") 
	public String adminEventView(int notice_no,Model model)throws Exception{
		model.addAttribute(service.selectNotice(notice_no));
		
		return "admin/event_refly";
	}
	
	
 

	/*@RequestMapping("/listCri")// ��û:listCri  ��: listCri.jsp
    public void listAll(Criteria cri, Model model)throws Exception{
    	model.addAttribute("list",service.listCriteria(cri));
    }*/
    
}
