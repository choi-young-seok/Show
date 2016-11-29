package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.PageMaker;
import kr.co.show.community.service.NoticeService;


@Controller
@RequestMapping("/admin")
public class NoticeController {
	
	@Inject
	private NoticeService service;
	
	/*@RequestMapping("/main2")
	public String CommunityMain(){ //헤더, 푸터 들어있는 곳
		
		return "admin/adminMain2";
	}*/
	
	@RequestMapping("/noticeList")
	public String listNotice()throws Exception {//관리자가 보는 화면의 공지사항 목록
		
		return "admin/event";
	}
	
	/*@RequestMapping("/list")
	public void listNoticeUser(Model model) throws Exception {//유저가 보는 화면의 공지사항 목록
		model.addAttribute("list", service.listNotice());
		//return "user/community/event_board";
	}*/
	
	@RequestMapping("/listCri")// 요청:listCri  뷰: listCri.jsp
    public void listAll(Criteria cri, Model model)throws Exception{
    	model.addAttribute("list",service.listCriteria(cri));
    }
    
    @RequestMapping("/listPage")// 요청:listPage  뷰: listPage.jsp
    public void listPage(Criteria cri, Model model)throws Exception{    	
    	model.addAttribute("list",service.listCriteria(cri));
    	PageMaker maker = new PageMaker();
    	   maker.setCri(cri);//현재페이지와 보여질 행의수를 전달
    	   maker.setTotalCount(service.listCount());//전체 레코드수를 전달
    	   //maker.calcData();//startPage,endPage,prev,next 초기화
    	
    	model.addAttribute("pageMaker", maker);
    }
}
