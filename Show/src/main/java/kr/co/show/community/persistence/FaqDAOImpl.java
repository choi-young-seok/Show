package kr.co.show.community.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.FaqVO;


@Repository
public class FaqDAOImpl implements FaqDAO {

	@Inject
	private SqlSession sqlSession;
	
	

	@Override
	public List<FaqVO> list() throws Exception {
	
		return sqlSession.selectList("faq.list");
	}

	



	

}
