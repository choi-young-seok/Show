package kr.co.show.search.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.group.domain.GroupVO;

@Repository
public class MainDAOImpl implements MainDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<GroupVO> mainList() {
		List<GroupVO> mainList = sqlSession.selectList("mainList.mainList", null, new RowBounds(1, 6));
		System.out.println(mainList.toString());
		return mainList;
	}
	
	

}
