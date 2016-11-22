package kr.co.show.group.persistence;

import kr.co.show.group.domain.GroupVO;

public interface GroupDAO {
	public void create(GroupVO group) throws Exception;
}
