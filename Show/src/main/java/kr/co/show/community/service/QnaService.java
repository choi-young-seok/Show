package kr.co.show.community.service;


import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.QnaVO;

public interface QnaService {
	
	public void create(QnaVO vo)throws Exception;
	//리스트 조회
	public List<QnaVO> list(String qan_ch, Criteria cri)throws Exception;
	//글삭제
	public void deleteQna(int qna_no);
	//페이지
	public List<QnaVO> listCriteria(Criteria cri)throws Exception; 
	public int listCount()throws Exception;
	
}
