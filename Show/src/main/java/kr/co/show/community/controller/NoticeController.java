package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class NoticeController {
	
	
	@RequestMapping("/list")
	public String listNoticeUser() {//������ ���� ȭ���� �������� ���
		
		return "user/community/event_board";
	}
	
	@RequestMapping("/noticeList")
	public String listNotice() {//�����ڰ� ���� ȭ���� �������� ���
		
		return "admin/event";
	}
}
