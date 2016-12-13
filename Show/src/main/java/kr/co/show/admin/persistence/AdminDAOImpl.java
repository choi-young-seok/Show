package kr.co.show.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.community.domain.QnaVO;
import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;
 
@Repository
public class AdminDAOImpl implements AdminDAO {
 
	@Inject
	private SqlSession sqlsession;
	
	@Override
	public List<MemberVO> memberList() throws Exception {
		List<MemberVO> list = sqlsession.selectList("member.list",null,new RowBounds(0,30));
		
		return list;
		
	}

	@Override
	public MemberVO detail(int member_no) throws Exception {
		return sqlsession.selectOne("member.detail", member_no);
	}



	@Override
	public List<GroupVO> groupList() throws Exception {
		List<GroupVO> list2 = sqlsession.selectList("group1.list2",null,new RowBounds(0,30));
		return list2;
	}

	@Override
	public GroupVO detail2(int group_no) throws Exception {
		return sqlsession.selectOne("group1.detail2", group_no);
	}

	@Override
	public void update(GroupVO vo) throws Exception {
		 sqlsession.update("group1.update", vo);
		
	}

	@Override
	public List<GroupVO> categoryList() throws Exception {
	
		List<GroupVO> list3 = sqlsession.selectList("group1.list3");
		return list3;
	}

	@Override
	public List<GroupVO> selectC(String group_category) throws Exception {
		
		List<GroupVO> list4 =  sqlsession.selectList("group1.selectC", group_category);
		return list4;
	}

	@Override
	public List<GroupVO> chList(String group_ch) throws Exception {
		List<GroupVO> list5 = sqlsession.selectList("group1.chList", group_ch);
		return list5;
	}

	@Override
	public List<GroupVO> nchList(String group_ch) throws Exception {
		List<GroupVO> list6 = sqlsession.selectList("group1.nchList", group_ch);
		return list6;
	}

	@Override
	public List<GroupVO> dchList(String group_delete_ch) throws Exception {
		List<GroupVO> list7 = sqlsession.selectList("group1.dchList", group_delete_ch);
		return list7;
	}

	@Override
	public List<GroupVO> searchList(String group_name) throws Exception {
		List<GroupVO> list8 = sqlsession.selectList("group1.searchList", group_name);
		return list8;
	}

	@Override
	public List<MemberVO> searchList2(String member_name) throws Exception {
		List<MemberVO> list9 = sqlsession.selectList("member.searchList2", member_name);
		return list9;
	}

	@Override
	public int group_count() throws Exception {
		return sqlsession.selectOne("group1.group_cou");
	}





}
