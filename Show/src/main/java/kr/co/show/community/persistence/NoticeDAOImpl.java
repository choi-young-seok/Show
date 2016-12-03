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
	public List<NoticeVO> listAll(String notice_ch) throws Exception {
		RowBounds bound = new RowBounds(0,10);
		return sqlSession.selectList("notice.listAll",notice_ch,bound);
	}


	@Override
	public int NoticeTotalCount() throws Exception {
		return sqlSession.selectOne("notice.noticeTotalCount");
	}

	@Override
	public NoticeVO selectNotice(int notice_no) throws Exception {
		return sqlSession.selectOne("notice.select",notice_no);
	}

	@Override
	public void create(NoticeVO vo) throws Exception {
		sqlSession.insert("notice.create",vo);
	}


	@Override
	public void updateNotice(NoticeVO vo) throws Exception {
		sqlSession.update("notice.updateNo", vo);
		 
	}


	@Override
	public void deleteNotice(int notice_no) throws Exception {
		sqlSession.delete("notice.deleteNo",notice_no);
	}




}
