package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;

import kr.co.show.community.domain.QnaVO;

public interface QnaDAO {
	
	public void create(QnaVO vo)throws Exception; 
	//전체조회
	public List<QnaVO> list(String qan_ch)throws Exception;
	//전체 레코드 수 조회
	public int QnaTotalCount() throws Exception;
}
