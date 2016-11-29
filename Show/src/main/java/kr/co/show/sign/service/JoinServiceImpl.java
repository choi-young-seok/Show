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
	public void changePassword(MemberVO vo) throws Exception {
		dao.changePassword(vo);
	}

	@Override
	public String findId(Map map) throws Exception {
		return dao.findId(map);
	}
}
