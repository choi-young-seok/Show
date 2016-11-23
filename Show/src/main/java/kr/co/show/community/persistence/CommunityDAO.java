package kr.co.show.community.persistence;

import kr.co.show.domain.CommunityVO;

public interface CommunityDAO {
	public void create(CommunityVO cvo)throws Exception;
}
