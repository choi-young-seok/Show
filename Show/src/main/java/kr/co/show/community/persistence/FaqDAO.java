package kr.co.show.community.persistence;

import java.util.List;


import kr.co.show.community.domain.Criteria;

import kr.co.show.community.domain.FaqVO;

public interface FaqDAO {

	//��ü��ȸ
	public List<FaqVO> list()throws Exception;
	
	
}
