package kr.co.show.community.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.QnaVO;
@Repository
public class QnaDAOImpl implements QnaDAO {
	@Inject
	private SqlSession sqlSession;
	@Override
	public void create(QnaVO vo) throws Exception {
		sqlSession.insert("qna.create",vo);

	}
	@Override
	public List<QnaVO> list(String qan_ch,Criteria cri) throws Exception {
		return sqlSession.selectList("qna.list",qan_ch,
		new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
		
	}
	
	@Override
	public void deleteQna(int qna_no) {
		 sqlSession.delete("qna.delete11",qna_no);
	}
	
	@Override
	public List<QnaVO> listPage(int page) throws Exception {
		return sqlSession.selectList("qna.listPage");
	}
	@Override
	public int qnaTotalCount() throws Exception {
		return sqlSession.selectOne("qna.qnaTotalCount");
	}
	@Override
	public List<QnaVO> listCriteria(Criteria cri) {
		return sqlSession.selectList("qna.list",null,
				new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}
	
	
	
	

}
