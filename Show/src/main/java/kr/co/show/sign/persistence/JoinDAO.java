package kr.co.show.sign.persistence;

import java.util.Map;

import kr.co.show.sign.domain.MemberVO;

public interface JoinDAO {
	public void create(MemberVO vo) throws Exception;
	public MemberVO login(String email) throws Exception;
	public void change(MemberVO vo) throws Exception;
	public void changePassword(MemberVO vo) throws Exception;
	public String findId(Map map) throws Exception;
	public MemberVO modify(String email) throws Exception;
}
