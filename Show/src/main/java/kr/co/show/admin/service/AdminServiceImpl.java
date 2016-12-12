package kr.co.show.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public List<GroupVO> categoryList() throws Exception {
		
		return dao.categoryList();
	}

	@Override
	public List<GroupVO> selectC(String group_category) throws Exception {
		
		return dao.selectC(group_category);
	}

	@Override
	public List<GroupVO> chList(String group_ch) throws Exception {
		
		return dao.chList(group_ch);
	}

	@Override
	public List<GroupVO> nchList(String group_ch) throws Exception {
	
		return dao.nchList(group_ch);

	}

	@Override
	public List<GroupVO> dchList(String group_delete_ch) throws Exception {
		
		return dao.dchList(group_delete_ch);
	}

	@Override
	public List<GroupVO> searchList(String group_name) throws Exception {
		
		return dao.searchList(group_name);
	}
	






}
