package kr.co.show.admin.persistence;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;
 
public interface AdminDAO {
	
	public List<MemberVO> memberList() throws Exception; //ȸ���������
	public MemberVO detail(int member_no) throws Exception;
	public List<GroupVO> groupList() throws Exception; //��ü�������
	public GroupVO detail2(int group_no) throws Exception;
	public void update(GroupVO vo) throws Exception; //�㰡 ��û����
	public List<GroupVO> categoryList() throws Exception; //�������
	public List<GroupVO> selectC(String group_category) throws Exception;
	public List<GroupVO> chList(String group_ch) throws Exception; //���ξ�ü���
	public List<GroupVO> nchList(String group_ch) throws Exception; //����ξ�ü���
	public List<GroupVO> dchList(String group_delete_ch) throws Exception; //Ż���û��ü
	public List<GroupVO> searchList(String group_name) throws Exception; //�˻���ȸ
	
}
