package kr.co.show.community.service;

import java.util.List;

import kr.co.show.community.domain.NoticeVO;

public interface NoticeService {
	
		public List<NoticeVO> listNotice(String notice_ch) throws Exception; //Community의  Notice 게시판
		
		public int listCount() throws Exception;
		//글 한건 조회
		public NoticeVO selectNotice(int notice_no)throws Exception;
		//글작성
		public void create(NoticeVO vo)throws Exception;
		//글수정
		public void updateNotice(NoticeVO vo)throws Exception;
		//글삭제
		public void deleteNotice(int notice_no)throws Exception;
		//커뮤니티 게시판 공지사항 목록 조회
		public List<NoticeVO> userListNotice()throws Exception;

		
}
