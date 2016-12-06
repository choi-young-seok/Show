package kr.co.show.community.service;

import java.util.List;

import kr.co.show.community.domain.NoticeVO;

public interface NoticeService {
	
		public List<NoticeVO> listNotice(String notice_ch) throws Exception; //Community��  Notice �Խ���
		
		public int listCount() throws Exception;
		//�� �Ѱ� ��ȸ
		public NoticeVO selectNotice(int notice_no)throws Exception;
		//���ۼ�
		public void create(NoticeVO vo)throws Exception;
		//�ۼ���
		public void updateNotice(NoticeVO vo)throws Exception;
		//�ۻ���
		public void deleteNotice(int notice_no)throws Exception;
		//Ŀ�´�Ƽ �Խ��� �������� ��� ��ȸ
		public List<NoticeVO> userListNotice()throws Exception;

		
}
