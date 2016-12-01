package kr.co.show.group.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.ReviewManageVO;

@Repository
public class GroupDAOImpl implements GroupDAO{

	@Inject
	private SqlSession sqlSession;

	@Override
	public void insert(GroupVO group) throws Exception {
		sqlSession.insert("group.insert", group);
		
	}

	@Override
	public void update(int member_no) throws Exception {
		sqlSession.update("group.update", member_no);
	}

	@Override
	public List<GroupVO> listAll(int member_no) throws Exception {
		return sqlSession.selectList("group.listAll", member_no);
	}

	@Override
	public GroupVO detailView(int group_no) throws Exception {
		return sqlSession.selectOne("group.detailView", group_no);
	}

	@Override
	public List<MenuManageVO> menuList(int group_no) {
		return sqlSession.selectList("group.menuList", group_no);
	}

	@Override
	public List<ReviewManageVO> reviewList(int group_no) {
		return sqlSession.selectList("group.reviewList", group_no);
	}

	@Override
	public void menuDelete(int menu_no) throws Exception {
		sqlSession.delete("group.menuDelete", menu_no);
	}

	@Override
	public void menuAdd(MenuManageVO menu) throws Exception {
		sqlSession.insert("group.menuAdd", menu);
	}

	@Override
	public MenuManageVO menuUpdateGet(int menu_no) throws Exception {
		return sqlSession.selectOne("group.menuUpdateGet", menu_no);
	}

}
