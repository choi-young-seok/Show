package kr.co.show.community.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import kr.co.show.community.domain.MyPageVO;
import kr.co.show.community.persistence.MyPageDAO;
@Service
public class MyPageServiceImpl implements MyService {
	
	@Inject
	private MyPageDAO dao;

	@Override
	public List<MyPageVO> listGroup(int member_no) throws Exception {
		return dao.listGroup(member_no);
	}
	@Override
	public List<MyPageVO> listOrder(int member_no) throws Exception {
		return dao.listOrder( member_no);
	}
	@Override
	public List<MyPageVO> listMenu(int member_no) throws Exception {
		return dao.listMenu( member_no);
	}
	@Override
	public void refunOrder(Map map) throws Exception {
		 dao.refunOrder(map);
		
	}
	@Override
	public List<MyPageVO> refunT(int member_no) throws Exception {
		return dao.refunT(member_no);
	}
	@Override
	public List<MyPageVO> refundOrder(int member_no) throws Exception {
		return dao.refundOrder(member_no);
	}
	@Override
	public List<MyPageVO> refundMenu(int member_no) throws Exception {
		return dao.refundMenu(member_no);
	}
	@Override
	public List<MyPageVO> refundGroup(int member_no) throws Exception {
		return dao.refundGroup(member_no);
	}


}
