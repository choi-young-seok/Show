package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.QnaVO;

public interface QnaDAO {
	
	public void create(QnaVO vo)throws Exception; 
	//전체조회
	public List<QnaVO> list(String qan_ch, Criteria cri)throws Exception;
	//전체 레코드 수 조회
	public void deleteQna(int qna_no);
	//특정페이지조회1
	public List<QnaVO> listPage(int page)throws Exception;
	//전체레코드수 조회
	public int qnaTotalCount()throws Exception;
	//탭 마다 목록 수 
	public int TabTotalCount()throws Exception;
	
	public List<QnaVO> listCriteria(Criteria cri);
	
	   
}
