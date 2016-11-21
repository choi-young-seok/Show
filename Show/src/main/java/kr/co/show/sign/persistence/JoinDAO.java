package kr.co.show.sign.persistence;

import kr.co.show.sign.domain.MemberVO;

public interface JoinDAO {
	public void create(MemberVO vo) throws Exception;
	public String login(String email) throws Exception;
}
