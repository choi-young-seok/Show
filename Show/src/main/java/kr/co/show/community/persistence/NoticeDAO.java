package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.NoticeVO;

public interface NoticeDAO {
	//리스트 전체 조회
	public List<NoticeVO> listAll(String notice_ch)throws Exception;
	//전체 레코드 수 조회
	public int NoticeTotalCount() throws Exception;
	//글 한건 조회
	public NoticeVO selectNotice(int notice_no)throws Exception;
	//글 작성
	public void create(NoticeVO vo)throws Exception;
	//글 수정
	public void updateNotice(NoticeVO vo)throws Exception;
	//글 삭제
	public void deleteNotice(int notice_no)throws Exception;
	//커뮤니티 공지사항 리스트
	public List<NoticeVO> list()throws Exception; 
}