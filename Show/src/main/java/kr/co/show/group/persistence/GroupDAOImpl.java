package kr.co.show.group.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuCheckVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.MenuVO;
import kr.co.show.group.domain.NoVO;
import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.group.domain.ReviewManageVO;

@Repository
public class GroupDAOImpl implements GroupDAO{

	@Inject
	private SqlSession sqlSession;

	@Override
	public void insert(GroupVO group) throws Exception {
		System.out.println("GroupDAOImpl insert() : " +group.toString());
		sqlSession.insert("group.enterpriseInsert", group);
		
	}

	@Override
	public void update(int member_no) throws Exception {
		sqlSession.update("group.presidentUpdate", member_no);
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

	@Override
	public boolean menuUpdatePost(MenuManageVO menu) throws Exception {
		int menuUpdate = sqlSession.update("group.menuUpdatePost", menu);
		boolean ch;
			if(menuUpdate==1) ch=true;
			else ch=false;
		return ch;
	}

	@Override
	public boolean enterpriseRemoveApplication(int group_no) throws Exception {
		int enterpriseUpdate = sqlSession.update("group.enterpriseRemoveApplication", group_no);
		boolean ch;
			if(enterpriseUpdate==1) ch=true;
			else ch=false;
		return ch;
	}

	@Override
	public boolean sideAdd(MenuManageVO menu) throws Exception {
		int sideAdd = sqlSession.insert("group.sideAdd", menu);
		boolean ch;
			if(sideAdd==1) ch=true;
			else ch=false;
		return ch;
	}

	@Override
	public List<MenuManageVO> sideList(int menu_no) throws Exception {
		return sqlSession.selectList("group.sideList", menu_no);
	}

	@Override
	public MenuManageVO sideUpdateGet(MenuManageVO menu) throws Exception {
		return sqlSession.selectOne("group.sideUpdateGet", menu);
	}

	@Override
	public boolean sideUpdatePost(MenuManageVO menu) throws Exception {
		int sideUpdate = sqlSession.update("group.sideUpdatePost", menu);
		boolean ch;
			if(sideUpdate==1) ch=true;
			else ch=false;
		return ch;
	}

	@Override
	public int sideDelete(MenuManageVO menu) throws Exception {
		int sideDelete = sqlSession.delete("group.sideDelete", menu);
		return sideDelete;
	}

	@Override
	public int reviewDelete(int review_no) throws Exception {
		int reviewDelete = sqlSession.delete("group.reviewDelete", review_no);
		return reviewDelete;
	}
	
	@Override
	public List<GroupVO> stats_selectName(int member_no) throws Exception {
		return sqlSession.selectList("group.stats_selectName", member_no);
	}
	
	@Override
	public List<OrderMenuVO> stats_daySell(OrderMenuVO order) throws Exception {
		return sqlSession.selectList("group.stats_daySell", order);
	}
	
	@Override
	public List<OrderMenuVO> stats_dayMenuSell(OrderMenuVO order) throws Exception {
		return sqlSession.selectList("group.stats_dayMenuSell", order);
	}
	
	@Override
	public List<OrderMenuVO> stats_monthSell(OrderMenuVO order) throws Exception {
		return sqlSession.selectList("group.stats_monthSell", order);
	}
	
	@Override
	public List<OrderMenuVO> stats_monthMenuSell(OrderMenuVO order) throws Exception {
		return sqlSession.selectList("group.stats_monthMenuSell", order);
	}
	
	//====================���� �ۼ��� �� (Fe)======================
	@Override
	public List<NoVO> groupName(int member_no) throws Exception {
		return sqlSession.selectList("group.group_name", member_no);
	}

	@Override
	public List<OrderMenuVO> orderList(Map map) throws Exception {
		return sqlSession.selectList("group.order_list", map);
	}

	@Override
	public List<MenuVO> recentMenu() throws Exception {
		return null;
	}

	@Override
	public List<MenuCheckVO> menuCheck(Map map) throws Exception {
		return sqlSession.selectList("group.menu_check", map);
	}

	@Override
	public void checkUpdate(Map map) throws Exception {
		sqlSession.update("group.checkUpdate", map);
	}
}
