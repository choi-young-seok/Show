package kr.co.show.community.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.community.domain.NoticeVO;
import kr.co.show.community.persistence.NoticeDAO;

@Service
public class NoticeSeriveImpl implements NoticeService {

	@Inject
	private NoticeDAO dao;

	@Override
	public List<NoticeVO> listNotice(String notice_ch) throws Exception {
		return dao.listAll(notice_ch);
	}

	
	@Override
	public int listCount() throws Exception {
		return dao.NoticeTotalCount();
	}



	@Override
	public NoticeVO selectNotice(int notice_no) throws Exception {
		return dao.selectNotice(notice_no);
	
	}

	@Override
	public void create(NoticeVO vo) throws Exception {
		dao.create(vo);
	}




	@Override
	public void updateNotice(NoticeVO vo) throws Exception {
		dao.updateNotice(vo);
		
	}


	@Override
	public void deleteNotice(int notice_no) throws Exception {
		dao.deleteNotice(notice_no);
		
	}


	@Override
	public List<NoticeVO> userListNotice() throws Exception {//커뮤니티 - 공지사항 목록 조회
		return dao.list();
	}
}
