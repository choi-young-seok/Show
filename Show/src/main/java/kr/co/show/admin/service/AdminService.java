package kr.co.show.admin.service;

import java.util.List;

import kr.co.show.sign.domain.MemberVO;

public interface AdminService {
	public List<MemberVO> memberList() throws Exception;
	public MemberVO detail(int member_no) throws Exception;
}
