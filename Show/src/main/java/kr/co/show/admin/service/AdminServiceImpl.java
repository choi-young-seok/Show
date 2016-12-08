package kr.co.show.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.admin.persistence.AdminDAO;
import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Inject
	private AdminDAO dao;
	
	@Override
	public List<MemberVO> memberList() throws Exception {
		
		return dao.memberList();
	}

	@Override
	public MemberVO detail(int member_no) throws Exception {
		
		return dao.detail(member_no);
	}

	@Override
	public void delete(int member_no) throws Exception {
		dao.delete(member_no);
		
	}

	@Override
	public List<GroupVO> groupList() throws Exception {
		return dao.groupList();
	}

	@Override
	public GroupVO detail2(int group_no) throws Exception {
		return dao.detail2(group_no);
	}

	@Override
	public void update(GroupVO vo) throws Exception {
		dao.update(vo);
		
	}



}
