package kr.co.show.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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



}