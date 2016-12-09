package kr.co.show.community.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.community.domain.MyPageVO;
@Repository
public class MyPageDAOImpl implements MyPageDAO {
	@Inject
	private SqlSession sqlSession;


	@Override
	public List<MyPageVO> listGroup(int member_no) throws Exception {
		return sqlSession.selectList("myPage.listGroup", member_no);
	}

	@Override
	public List<MyPageVO> listOrder(int member_no) throws Exception {
		return sqlSession.selectList("myPage.listOrder",member_no);
	}

	@Override
	public List<MyPageVO> listMenu(int member_no) throws Exception {
		return sqlSession.selectList("myPage.listMenu",member_no);
	}
	
	
}
