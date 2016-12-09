package kr.co.show.community.service;

import java.util.List;
import java.util.Map;

import kr.co.show.community.domain.MyPageVO;

public interface MyService {
		
	public List<MyPageVO> listGroup(int member_no) throws Exception;
	public List<MyPageVO> listOrder(int member_no) throws Exception;
	public List<MyPageVO> listMenu(int member_no) throws Exception;
}
