package kr.co.show.community.persistence;

import java.util.List;
import java.util.Map;

import kr.co.show.community.domain.MyPageVO;

public interface MyPageDAO {
	
	public List<MyPageVO> listGroup(int member_no) throws Exception;
	public List<MyPageVO> listOrder(int member_no) throws Exception;
	public List<MyPageVO> listMenu(int member_no) throws Exception;
	public void refunOrder (Map map)throws Exception;
	public List<MyPageVO> refunT(int member_no) throws Exception;
	public List<MyPageVO> refundGroup(int member_no) throws Exception;
	public List<MyPageVO> refundOrder(int member_no) throws Exception;
	public List<MyPageVO> refundMenu(int member_no) throws Exception;
}
