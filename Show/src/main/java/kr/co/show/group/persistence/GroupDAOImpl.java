package kr.co.show.group.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.group.domain.GroupVO;

@Repository
public class GroupDAOImpl implements GroupDAO{

	@Inject
	private SqlSession sqlSession;
	
	/*@Override
	public void create(GroupVO group) throws Exception {
		session.insert("group.insert", group);
	}*/

	@Override
	public void insert(GroupVO group) throws Exception {
		sqlSession.insert("group.insert", group);
		
	}

	@Override
	public void update(int no) throws Exception {
		sqlSession.update("group.update", no);
	}

	@Override
	public List<GroupVO> listAll(int no) throws Exception {
		return sqlSession.selectList("group.listAll", no);
	}

}
