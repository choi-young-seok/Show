package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.PageMaker;
import kr.co.show.community.service.FaqService;

@Controller
@RequestMapping("/user")
public class FaqController {
		@Inject
		private FaqService service;
		
		
	
		@RequestMapping("/faqList")
		public String listFaq(Model model)throws Exception{
		
			
			model.addAttribute("list",service.list());
			
			return "user/community/qna_board";
		}
		
		
		
}
