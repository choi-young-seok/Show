package kr.co.show.sign.service;

import kr.co.show.sign.domain.MemberVO;

public interface JoinService{
	public void create(MemberVO vo) throws Exception;
	public String login(String email) throws Exception;
}
