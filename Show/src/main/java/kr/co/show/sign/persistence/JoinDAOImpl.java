package kr.co.show.sign.persistence;

import java.util.Map;

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
		System.out.println(vo.toString());
		sqlSession.insert("sign.create", vo);
	}
	@Override
	public MemberVO login(String email) throws Exception {
		return sqlSession.selectOne("sign.login", email);
	}
	
	@Override
	public String findId(Map map) throws Exception {
		return sqlSession.selectOne("sign.find", map);
	}
	@Override
	public MemberVO modify(String email) throws Exception {
		return sqlSession.selectOne("sign.modify", email);
	}
	@Override
	public void change(MemberVO vo) throws Exception {
		sqlSession.update("sign.changePhone", vo);
	}
	@Override
	public void changePassword(MemberVO vo) throws Exception {
		sqlSession.update("sign.changePass", vo);
	}
	@Override
	public void delete(String member_email) throws Exception {
		sqlSession.insert("sign.delete", sqlSession.selectOne("sign.deleteFind", member_email));
		sqlSession.update("sign.updateDelete", member_email);
	}
	@Override
	public String drawConfirm(String member_email) throws Exception {
		
		return sqlSession.selectOne("sign.drawConfirm", member_email);
	}
	@Override
	public int cancel(Map map) throws Exception {
		return sqlSession.selectOne("sign.cancel", map);
	}
	@Override
	public int updateCancel(int no) throws Exception {
		return sqlSession.update("sign.updateCancel", no);
	}
}
