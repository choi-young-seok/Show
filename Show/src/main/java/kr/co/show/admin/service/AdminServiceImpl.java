package kr.co.show.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.admin.persistence.AdminDAO;
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



}
