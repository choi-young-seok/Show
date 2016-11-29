package kr.co.show.community.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.community.domain.QnaVO;
@Repository
public class QnaDAOImpl implements QnaDAO {
	@Inject
	private SqlSession sqlSession;
	@Override
	public void create(QnaVO vo) throws Exception {
		sqlSession.insert("qna.create",vo);

	}


}
