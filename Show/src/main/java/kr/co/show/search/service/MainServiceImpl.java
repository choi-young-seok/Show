package kr.co.show.search.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.persistence.MainDAO;

@Service
public class MainServiceImpl implements MainService{

	@Inject
	private MainDAO dao;
	
	@Override
	public List<GroupVO> mainList() {
		
		return dao.mainList();
	}

}
