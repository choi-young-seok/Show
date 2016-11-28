package kr.co.show.group.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.persistence.GroupDAO;

@Service
public class GroupServiceImpl implements GroupService{
	
	@Inject
	private GroupDAO dao;

	@Override
	public void regist(GroupVO group) throws Exception {
//		dao.create(group);
		dao.insert(group);
	}
}
