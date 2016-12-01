package kr.co.show.group.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.service.GroupService;

@RestController
public class GroupRestController {
	
	@Inject
	private GroupService service;
	
	@RequestMapping("/applicationInsert")
	public String applicationPost(GroupVO group, int member_no, HttpSession session) throws Exception{
		service.insert(group, member_no);

		String result = "OK";
		return result;
	}
	
	@RequestMapping(value="/menuDelete", method=RequestMethod.DELETE)
	public String menuDelete(int menu_no) throws Exception{
		service.menuDelete(menu_no);
		
		String result = "OK";
		return result;
	}
	
	@RequestMapping("/menuAdd")
	public String menuAdd(MenuManageVO menu) throws Exception{
		service.menuAdd(menu);
		
		String result = "OK";
		return result;
	}
	
	@RequestMapping(value="/menuUpdate", method=RequestMethod.PUT)
	public void menuUpdatePost(MenuManageVO menu) throws Exception{
		
	}

}
