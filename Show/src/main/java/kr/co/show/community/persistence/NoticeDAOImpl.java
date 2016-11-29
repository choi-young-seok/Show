package kr.co.show.community.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<NoticeVO> listAll() throws Exception {
		RowBounds bound = new RowBounds(0,10);
		return sqlSession.selectList("notice.listAll",null,bound);
	}

	@Override
	public List<NoticeVO> listPage(int page) throws Exception {
		return sqlSession.selectList("notice.listPage");
	}

	@Override
	public List<NoticeVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList("notice.listAll", null,
				new RowBounds(cri.getPageStart(),cri.getPerPageNum()));
	}

	@Override
	public int NoticeTotalCount() throws Exception {
		return sqlSession.selectOne("notice.noticeTotalCount");
	}

}
