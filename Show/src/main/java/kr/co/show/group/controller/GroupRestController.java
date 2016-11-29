package kr.co.show.group.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.service.GroupService;

@RestController
public class GroupRestController {
	
	@Inject
	private GroupService service;
	
	@RequestMapping("/applicationInsert")
	public String applicationPost(GroupVO group, int no, HttpSession session) throws Exception{
		service.insert(group, no);

		String result = "OK";
		return result;
	}

}
