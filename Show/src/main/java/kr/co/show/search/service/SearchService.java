package kr.co.show.search.service;

import java.util.List;

import kr.co.show.group.domain.GroupVO;

public interface SearchService {
	
	public List<GroupVO> searchList();
	public List<GroupVO> searchDetailList();
	
}
