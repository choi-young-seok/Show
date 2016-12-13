package kr.co.show.search.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.domain.SearchDTO;
import kr.co.show.search.persistence.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService{

	@Inject
	private SearchDAO dao;
	
	@Override
	public List<GroupVO> searchList(SearchDTO searchDTO) {
		return dao.searchList(searchDTO);
	}

	@Override
	public List<GroupVO> searchDetailList(SearchDTO searchDTO) {
		// TODO Auto-generated method stub
		return dao.searchDetailList(searchDTO);
	}

}
