package kr.co.show.search.service;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.domain.SearchDTO;

public interface SearchService {
	
	public List<GroupVO> searchList(SearchDTO searchDTO);
	public List<GroupVO> searchDetailList(SearchDTO searchDTO);
	
}
