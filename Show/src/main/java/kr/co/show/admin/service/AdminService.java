package kr.co.show.admin.service;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;

public interface AdminService {
	public List<MemberVO> memberList() throws Exception;
	public MemberVO detail(int member_no) throws Exception;
 
	public List<GroupVO> groupList() throws Exception;
	public GroupVO detail2(int group_no) throws Exception;
	public void update(GroupVO vo) throws Exception;
	public List<GroupVO> categoryList() throws Exception;
	public List<GroupVO> selectC(String group_category) throws Exception;
	public List<GroupVO> chList(String group_ch) throws Exception;
	public List<GroupVO> nchList(String group_ch) throws Exception;
	public List<GroupVO> dchList(String group_delete_ch) throws Exception;
	public List<GroupVO> searchList(String group_name) throws Exception;
	public List<MemberVO> searchList2(String member_name) throws Exception;
	public int group_cou() throws Exception;
}
