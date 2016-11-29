package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;

public interface NoticeDAO {
	//����Ʈ ��ü ��ȸ
	public List<NoticeVO> listAll()throws Exception;
	//Ư�� ������ ��ȸ1
	public List<NoticeVO> listPage(int page)throws Exception;
	//Ư�� ������ ��ȸ2
	public List<NoticeVO> listCriteria(Criteria cri)throws Exception;
	//��ü ���ڵ� �� ��ȸ
	public int NoticeTotalCount() throws Exception;
}
