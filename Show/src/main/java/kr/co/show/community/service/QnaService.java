package kr.co.show.community.service;


import java.util.List;

import kr.co.show.community.domain.Criteria;

import kr.co.show.community.domain.QnaVO;

public interface QnaService {
	public void create(QnaVO vo)throws Exception;
	//����Ʈ ��ȸ
	public List<QnaVO> list(String qan_ch)throws Exception;
	
	
	public int listCount() throws Exception;

}
