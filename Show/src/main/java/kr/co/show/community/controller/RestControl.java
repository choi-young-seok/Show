package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.community.domain.NoticeVO;
import kr.co.show.community.domain.QnaVO;
import kr.co.show.community.service.NoticeService;
import kr.co.show.community.service.QnaService;

@RestController
@Controller

public class RestControl {
	
	@Inject
	private QnaService service;
	@Inject
	private NoticeService noService;
	
	@RequestMapping("/checkData")
	public String checkData(QnaVO vo) throws Exception{
		service.create(vo);
		return "OK";
	}
	
	@RequestMapping("/checkDataDa")
	public String createNotice(NoticeVO vo)throws Exception{
		
		noService.create(vo);
		return "OKI";
	}
	
}
