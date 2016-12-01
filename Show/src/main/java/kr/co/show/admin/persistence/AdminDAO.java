package kr.co.show.admin.persistence;

import java.util.List;

import kr.co.show.sign.domain.MemberVO;

public interface AdminDAO {
	
	public List<MemberVO> memberList() throws Exception;
	public MemberVO detail(int member_no) throws Exception;
	public void delete(int member_no) throws Exception;
}
