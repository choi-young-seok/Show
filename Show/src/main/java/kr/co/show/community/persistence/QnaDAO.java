package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;

import kr.co.show.community.domain.QnaVO;

public interface QnaDAO {
	
	public void create(QnaVO vo)throws Exception; 
	//��ü��ȸ
	public List<QnaVO> list(String qan_ch)throws Exception;
	//��ü ���ڵ� �� ��ȸ
	public void deleteQna(int qna_no);
	//������
	public List<QnaVO> listCriteria(Criteria cri)throws Exception;
	public int QnaTotalCount() throws Exception;
}
