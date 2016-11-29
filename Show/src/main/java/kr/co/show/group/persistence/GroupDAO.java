package kr.co.show.group.persistence;

import java.util.List;

import kr.co.show.group.domain.GroupVO;

public interface GroupDAO {
	public void insert(GroupVO group) throws Exception;
	public void update(int no) throws Exception;
	public List<GroupVO> listAll(int member_no) throws Exception;
}
