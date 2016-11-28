package kr.co.show.community.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class NoticeController {
	
	
	@RequestMapping("/list")
	public String listNoticeUser() {//유저가 보는 화면의 공지사항 목록
		
		return "user/community/event_board";
	}
	
	@RequestMapping("/noticeList")
	public String listNotice() {//관리자가 보는 화면의 공지사항 목록
		
		return "admin/event";
	}
}
