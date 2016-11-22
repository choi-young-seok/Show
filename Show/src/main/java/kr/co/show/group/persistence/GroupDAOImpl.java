package kr.co.show.group.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.group.domain.GroupVO;

@Repository
public class GroupDAOImpl implements GroupDAO{

	@Inject
	private SqlSession session;
	
	@Override
	public void create(GroupVO group) throws Exception {
		session.insert("group.insert", group);
	}

}
