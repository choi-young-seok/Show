package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.QnaVO;

public interface QnaDAO {
	
	public void create(QnaVO vo)throws Exception; 
	//��ü��ȸ
	public List<QnaVO> list(String qan_ch, Criteria cri)throws Exception;
	//��ü ���ڵ� �� ��ȸ
	public void deleteQna(int qna_no);
	
	//Ư����������ȸ1
	public List<QnaVO> listPage(int page)throws Exception;
	//��ü���ڵ�� ��ȸ
	public int qnaTotalCount()throws Exception;
	public List<QnaVO> listCriteria(Criteria cri);
	
	   
}
