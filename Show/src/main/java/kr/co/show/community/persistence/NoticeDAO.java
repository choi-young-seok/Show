package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;

public interface NoticeDAO {
	//리스트 전체 조회
	public List<NoticeVO> listAll()throws Exception;
	//특정 페이지 조회1
	public List<NoticeVO> listPage(int page)throws Exception;
	//특정 페이지 조회2
	public List<NoticeVO> listCriteria(Criteria cri)throws Exception;
	//전체 레코드 수 조회
	public int NoticeTotalCount() throws Exception;
}
