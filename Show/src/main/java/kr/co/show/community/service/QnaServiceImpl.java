package kr.co.show.community.service;

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

}
