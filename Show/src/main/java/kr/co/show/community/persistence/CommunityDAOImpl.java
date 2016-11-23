package kr.co.show.community.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.domain.CommunityVO;


@Repository
public class CommunityDAOImpl implements CommunityDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void create(CommunityVO cvo) throws Exception {
		sqlSession.insert("community.create",cvo);

	}

}
