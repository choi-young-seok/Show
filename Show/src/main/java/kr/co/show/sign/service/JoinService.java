package kr.co.show.sign.service;

import kr.co.show.sign.domain.MemberVO;

public interface JoinService{
	public void create(MemberVO vo) throws Exception;
	public void create_sell(MemberVO vo) throws Exception;
	public MemberVO login(String email) throws Exception;
}
