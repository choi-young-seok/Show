package kr.co.show.search.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UploadDAOImpl implements UploadDAO{

	@Inject
	private SqlSession sqlSession;

	@Override
	public void addAttach(String group_files) throws Exception {
		sqlSession.insert("board.addAttach", group_files);
	}

	@Override
	public List<String> getAttach(Integer group_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("board.getAttach", group_no);
	}
}
