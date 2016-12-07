package kr.co.show.admin.service;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;

public interface AdminService {
	public List<MemberVO> memberList() throws Exception;
	public MemberVO detail(int member_no) throws Exception;
	public void delete(int member_no) throws Exception;
	public List<GroupVO> groupList() throws Exception;
	public GroupVO detail2(int group_no) throws Exception;
}
