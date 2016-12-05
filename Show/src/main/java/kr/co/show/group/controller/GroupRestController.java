package kr.co.show.group.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.service.GroupService;

@RestController
public class GroupRestController {
	
	@Inject
	private GroupService service;
	
	@RequestMapping(value="/applicationInsert", method=RequestMethod.POST)
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
	public String menuUpdatePost(@RequestBody MenuManageVO menu) throws Exception{
		boolean ch = service.menuUpdatePost(menu);
		String result;
			if(ch==true) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping("/enterpriseRemoveApplication")
	public String enterpriseRemoveApplication(int group_no) throws Exception{
		boolean ch = service.enterpriseRemoveApplication(group_no);
		String result;
			if(ch==true) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping("/sideAdd")
	public String sideAdd(MenuManageVO menu) throws Exception{
		service.sideAdd(menu);
		
		String result = "OK";
		return result;
	}
	
	@RequestMapping(value="/sideUpdate", method=RequestMethod.PUT)
	public String sideUpdatePost(@RequestBody MenuManageVO menu) throws Exception{
		boolean ch = service.sideUpdatePost(menu);
		String result;
			if(ch==true) result="OK";
			else result="NO";
		return result;
	}
	
	@RequestMapping(value="/sideDelete", method=RequestMethod.DELETE)
	public String sideDelete(@RequestBody MenuManageVO menu) throws Exception{
		int ch = service.sideDelete(menu);
		String result;
			if(ch==1) result="OK";
			else result="NO";
		return result;
	}

	@RequestMapping(value="/reviewDelete", method=RequestMethod.DELETE)
	public String reviewDelete(int review_no) throws Exception{
		int ch = service.reviewDelete(review_no);
		String result;
			if(ch==1) result="OK";
			else result="NO";
		return result;
	}

}
