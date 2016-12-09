package kr.co.show.community.persistence;

import java.util.List;

import kr.co.show.community.domain.MyPageVO;

public interface MyPageDAO {
	
	public List<MyPageVO> listGroup(int member_no) throws Exception;
	public List<MyPageVO> listOrder(int member_no) throws Exception;
	public List<MyPageVO> listMenu(int member_no) throws Exception;
}
