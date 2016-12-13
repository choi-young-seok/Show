package kr.co.show.search.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.domain.SearchDTO;
import kr.co.show.search.service.SearchService;

@RestController
public class SearchController {

	@Inject
	private SearchService service;
	
	@RequestMapping(value = "/searchGroup", method = RequestMethod.POST)
	public List<GroupVO> searchGroup(SearchDTO searchDTO){
		System.out.println(searchDTO);
		
		return service.searchList();
	}
}
