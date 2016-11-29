package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.PageMaker;
import kr.co.show.community.service.NoticeService;


@Controller
@RequestMapping("/community")
public class NoticeController {
	
	@Inject
	private NoticeService service;
	
	@RequestMapping("/noticeList")
	public String listNotice()throws Exception {//�����ڰ� ���� ȭ���� �������� ���
		
		return "admin/event";
	}
	
	@RequestMapping("/list")
	public void listNoticeUser(Model model) throws Exception {//������ ���� ȭ���� �������� ���
		model.addAttribute("list", service.listNotice());
		//return "user/community/event_board";
	}
	
	@RequestMapping("/listCri")// ��û:listCri  ��: listCri.jsp
    public void listAll(Criteria cri, Model model)throws Exception{
    	model.addAttribute("list",service.listCriteria(cri));
    }
    
    @RequestMapping("/listPage")// ��û:listPage  ��: listPage.jsp
    public void listPage(Criteria cri, Model model)throws Exception{    	
    	model.addAttribute("list",service.listCriteria(cri));
    	PageMaker maker = new PageMaker();
    	   maker.setCri(cri);//������������ ������ ���Ǽ��� ����
    	   maker.setTotalCount(service.listCount());//��ü ���ڵ���� ����
    	   //maker.calcData();//startPage,endPage,prev,next �ʱ�ȭ
    	
    	model.addAttribute("pageMaker", maker);
    }
}
