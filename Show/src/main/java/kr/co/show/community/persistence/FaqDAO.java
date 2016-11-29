package kr.co.show.community.persistence;

import java.util.List;


import kr.co.show.community.domain.Criteria;

import kr.co.show.community.domain.FaqVO;

public interface FaqDAO {

	//전체조회
	public List<FaqVO> list()throws Exception;
	
	
}
