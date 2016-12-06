package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public String checkData(QnaVO vo) throws Exception{ //���Ǳ� �ۼ�
		service.create(vo);
		return "OK";
	}
	
	@RequestMapping("/checkDataDa")
	public String createNotice(NoticeVO vo)throws Exception{ //�������� �ۼ�
		
		noService.create(vo);
		return "OKI";
	}
	@RequestMapping("/check")
	public String editeNotice(NoticeVO vo)throws Exception{//�������� ����
	
		noService.updateNotice(vo);
		return "upOKI";
	}
	@RequestMapping(value="/removeNotice", method=RequestMethod.POST)
	public String removeNotice( int notice_no)throws Exception{//�������� ����

		noService.deleteNotice(notice_no);
		return "deOKI";
	}
	@RequestMapping(value="/deQna" , method=RequestMethod.POST)
	public String removeQna(int qna_no) throws Exception{ //qna ����
		System.out.println("j"+qna_no);
		service.deleteQna(qna_no);
		return "deQnaOK";
	}
}
