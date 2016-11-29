package kr.co.show.group.service;

import java.util.List;

import kr.co.show.group.domain.GroupVO;

public interface GroupService {
	public void insert(GroupVO group, int no) throws Exception;
	public List<GroupVO> listAll(int no) throws Exception;
}
