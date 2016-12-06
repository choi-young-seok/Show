package kr.co.show.community.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.QnaVO;
import kr.co.show.community.persistence.QnaDAO;

@Service("QnaService")
public class QnaServiceImpl implements QnaService {
	@Inject
	private QnaDAO dao;
	
	@Override
	public void create(QnaVO vo) throws Exception {
		dao.create(vo);

	}
	@Override
	public List<QnaVO> list(String qna_ch, Criteria cri) throws Exception {
		return dao.list(qna_ch, cri);
	}
	
	@Override
	public void deleteQna(int qna_no) {
		 dao.deleteQna(qna_no);
		
	}
	@Override
	public List<QnaVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	@Override
	public int listCount() throws Exception {
		return dao.qnaTotalCount();
	}
	@Override
	public int listTabCount() throws Exception {
		return dao.TabTotalCount();
	}

}
