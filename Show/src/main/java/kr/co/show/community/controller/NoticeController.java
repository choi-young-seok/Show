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
	
	//공지사항 글쓰기 폼
	@RequestMapping("/createNotice")
	public String create()throws Exception {
		return "admin/event_write";
	}

	
	//관리자 페이지 공지사항 목록
	@RequestMapping("/event")
	public String listNotice(String notice_ch,Model model)throws Exception {
		model.addAttribute("listNotice", service.listNotice(notice_ch));
		notice_ch = "이벤트";
		model.addAttribute("listevent",service.listNotice(notice_ch));
		return "admin/event";
	}
	//community 게시판 공지사항 목록
	@RequestMapping("/user/list")
	public String list(Model model) throws Exception {
		
		//model.addAttribute("listNotice2", service.listNotice());

		return "user/community/event_board";
	}
	//community 게시판 공지사항 글 한건 조회 
	@RequestMapping("/user/eventview") 
	public String eventview(int notice_no,Model model)throws Exception{
	
		model.addAttribute(service.selectNotice(notice_no));
		
		return "user/community/event_view/view";
	}
	
	//admin 게시판 공지사항 글 한건 조회
	@RequestMapping("/adminEventView") 
	public String adminEventView(int notice_no,Model model)throws Exception{
		model.addAttribute(service.selectNotice(notice_no));
		model.addAttribute("notice_no",notice_no);
		return "admin/event_refly";
	}

	
	
 

	/*@RequestMapping("/listCri")// 요청:listCri  뷰: listCri.jsp
    public void listAll(Criteria cri, Model model)throws Exception{
    	model.addAttribute("list",service.listCriteria(cri));
    }*/
    
}
