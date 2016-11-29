package kr.co.show.community.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;
import kr.co.show.community.persistence.NoticeDAO;

@Service
public class NoticeSeriveImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;

	@Override
	public List<NoticeVO> listNotice() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<NoticeVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	
	@Override
	public int listCount() throws Exception {
		return dao.NoticeTotalCount();
	}
}
