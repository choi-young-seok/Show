package kr.co.show.search.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.persistence.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService{

	private SearchDAO dao;
	
	@Override
	public List<GroupVO> searchList() {
		return null;
	}

	@Override
	public List<GroupVO> searchDetailList() {
		// TODO Auto-generated method stub
		return null;
	}

}
