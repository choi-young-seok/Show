package kr.co.show.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.sign.domain.MemberVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	private SqlSession sqlsession;
	
	@Override
	public List<MemberVO> memberList() throws Exception {
		List<MemberVO> list = sqlsession.selectList("member.list",null,new RowBounds(0,10));
		
		return list;
		
	}

	@Override
	public MemberVO detail(int member_no) throws Exception {
		return sqlsession.selectOne("member.detail", member_no);
	}

	@Override
	public void delete(int member_no) throws Exception {
		sqlsession.delete("member.delete",member_no);
		
	}

	@Override
	public List<GroupVO> groupList() throws Exception {
		List<GroupVO> list2 = sqlsession.selectList("group1.list2",null,new RowBounds(0,10));
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



}
