package kr.co.show.community.service;

import java.util.List;

import kr.co.show.community.domain.Criteria;
import kr.co.show.community.domain.NoticeVO;

public interface NoticeService {
	
		public List<NoticeVO> listNotice() throws Exception;
		public List<NoticeVO> listCriteria(Criteria cri)throws Exception;
		public int listCount() throws Exception;
		
}
