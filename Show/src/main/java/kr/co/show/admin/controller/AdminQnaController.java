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
	public String listQna(Model model,String qna_ch,Criteria cri)throws Exception{ //������ - ���ǰԽ��� �� ��� ��ȸ
		qna_ch="ó����";
		
		model.addAttribute("lista",service.list(qna_ch,cri));
				
		PageMaker maker = new PageMaker();
 	  
		maker.setCri(cri);//������������ ������ ���Ǽ��� ����
 	  
 	   	//maker.setTotalCount(service.listCount());//��ü ���ڵ���� ����
 	   	maker.setTotalTabCount(service.listTabCount());//�� ���ڵ���� ����
 	
 	  
 	   	model.addAttribute("pageMaker", maker);
		
 	   	return "admin/qna";
	}
	 	
/*	 @RequestMapping("/listCri")
	    public void listAll(Criteria cri, Model model)throws Exception{
		 	
	    	model.addAttribute("lista",service.listCriteria(cri));
	    }
	    */
	
}
