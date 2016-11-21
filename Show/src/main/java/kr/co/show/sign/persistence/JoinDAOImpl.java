package kr.co.show.sign.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.sign.domain.MemberVO;


@Repository
public class JoinDAOImpl implements JoinDAO{

	@Inject
	SqlSession sqlSession;
	@Override
	public void create(MemberVO vo) throws Exception {
		sqlSession.insert("sign.create", vo);
	}
	@Override
	public String login(String email) throws Exception {
		return sqlSession.selectOne("sign.login", email);
	}
}
