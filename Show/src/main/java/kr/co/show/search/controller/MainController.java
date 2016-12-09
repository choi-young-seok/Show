package kr.co.show.search.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.service.MainService;

@RestController
public class MainController {
	
	@Inject
	private MainService service;
	
	@RequestMapping(value = "/mainList", method = RequestMethod.GET)
	public List<GroupVO> mainList(){
		
			List<GroupVO> mainList = service.mainList();
			System.out.println(mainList.toString());
		return mainList;
	}
	
}
