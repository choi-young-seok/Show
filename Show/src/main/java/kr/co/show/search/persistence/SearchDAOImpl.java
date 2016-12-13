package kr.co.show.search.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.domain.SearchDTO;

@Repository
public class SearchDAOImpl implements SearchDAO {

	@Inject
	private SqlSession sqlsession;
	
	@Override
	public List<GroupVO> searchList(SearchDTO searchDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("search.searchList",searchDTO );
	}

	@Override
	public List<GroupVO> searchDetailList(SearchDTO searchDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("search.searchDetailList",searchDTO);
	}

}
