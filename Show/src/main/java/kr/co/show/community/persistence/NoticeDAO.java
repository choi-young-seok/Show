package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;

public interface NoticeDAO {
	//����Ʈ ��ü ��ȸ
	public List<NoticeVO> listAll(String notice_ch)throws Exception;
	//��ü ���ڵ� �� ��ȸ
	public int NoticeTotalCount() throws Exception;
	//�� �Ѱ� ��ȸ
	public NoticeVO selectNotice(int notice_no)throws Exception;
	//�� �ۼ�
	public void create(NoticeVO vo)throws Exception;
	//�� ����
	public void updateNotice(NoticeVO vo)throws Exception;
	//�� ����
	public void deleteNotice(int notice_no)throws Exception;
}