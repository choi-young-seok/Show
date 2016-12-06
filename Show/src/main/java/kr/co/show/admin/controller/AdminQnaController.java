package kr.co.show.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.PageMaker;
import kr.co.show.community.service.QnaService;

@Controller
@RequestMapping
public class AdminQnaController {
	@Inject
	private QnaService service;
	
	@RequestMapping("/qna")
	public String listQna(Model model,String qna_ch,Criteria cri)throws Exception{ //관리자 - 문의게시판 글 목록 조회
		qna_ch="처리중";
		/*model.addAttribute("lista",service.listCriteria(cri));*/
		model.addAttribute("lista",service.list(qna_ch,cri));
		PageMaker maker = new PageMaker();
 	   maker.setCri(cri);//현재페이지와 보여질 행의수를 전달
 	   maker.setTotalCount(service.listCount());//전체 레코드수를 전달
 	
 	   model.addAttribute("pageMaker", maker);
		
		return "admin/qna";
	}
	 	
	 @RequestMapping("/listCri")// 요청:listCri  뷰: listCri.jsp
	    public void listAll(Criteria cri, Model model)throws Exception{
	    	model.addAttribute("lista",service.listCriteria(cri));
	    }
	    
	
}
