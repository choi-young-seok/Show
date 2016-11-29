package kr.co.show.group.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.persistence.GroupDAO;

@Service
public class GroupServiceImpl implements GroupService{
	
	@Inject
	private GroupDAO dao;

	@Transactional
	@Override
	public void insert(GroupVO group, int no) throws Exception {
		dao.insert(group);
		dao.update(no);
	}

	@Override
	public List<GroupVO> listAll(int member_no) throws Exception {
		return dao.listAll(member_no);
	}
}
