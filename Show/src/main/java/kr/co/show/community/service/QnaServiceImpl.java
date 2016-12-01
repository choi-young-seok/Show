package kr.co.show.community.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


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
	public List<QnaVO> list(String qna_ch) throws Exception {
		return dao.list(qna_ch);
	}
	@Override
	public int listCount() throws Exception {
		return dao.QnaTotalCount();
	}
	

}
