package kr.co.show.sign.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.sign.domain.MemberVO;
import kr.co.show.sign.persistence.JoinDAO;

@Service
public class JoinServiceImpl implements JoinService{

	@Inject
	JoinDAO dao;
	
	@Override
	public void create(MemberVO vo) throws Exception {
		dao.create(vo);
	}
	
	@Override
	public MemberVO login(String email) throws Exception {
		return dao.login(email);
	}

	@Override
	public String findId(Map map) throws Exception {
		return dao.findId(map);
	}

	@Override
	public MemberVO modify(String email) throws Exception {
		return dao.modify(email);
	}

	@Override
	public void change(MemberVO vo) throws Exception {
		dao.change(vo);
	}

	@Override
	public void changePassword(MemberVO vo) throws Exception {
		dao.changePassword(vo);
	}

	@Override
	public void delete(String member_email) throws Exception {
		dao.delete(member_email);
	}

	@Override
	public String drawConfirm(String member_email) throws Exception {
		return dao.drawConfirm(member_email);
	}

	@Override
	public int cancel(Map map) throws Exception {
		return dao.cancel(map);
	}

	@Override
	public int updateCancel(int no) throws Exception {
		return dao.updateCancel(no);
	}
}
