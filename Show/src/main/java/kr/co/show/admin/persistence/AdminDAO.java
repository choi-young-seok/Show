package kr.co.show.admin.persistence;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;

public interface AdminDAO {
	
	public List<MemberVO> memberList() throws Exception; //회원정보출력
	public MemberVO detail(int member_no) throws Exception;
	public List<GroupVO> groupList() throws Exception; //업체정보출력
	public GroupVO detail2(int group_no) throws Exception;
	public void update(GroupVO vo) throws Exception; //허가 신청수정
	public List<GroupVO> categoryList() throws Exception; //업종출력
	public List<GroupVO> selectC(String group_category) throws Exception;
	public List<GroupVO> chList(String group_ch) throws Exception; //승인업체출력
	public List<GroupVO> nchList(String group_ch) throws Exception; //비승인업체출력
	public List<GroupVO> dchList(String group_delete_ch) throws Exception; //탈퇴신청업체
	public List<GroupVO> searchList(String group_name) throws Exception; //검색조회
	
}
