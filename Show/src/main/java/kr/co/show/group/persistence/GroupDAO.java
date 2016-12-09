package kr.co.show.group.persistence;

import java.util.List;
import java.util.Map;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuCheckVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.MenuVO;
import kr.co.show.group.domain.NoVO;
import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.group.domain.ReviewManageVO;

public interface GroupDAO {
	public void insert(GroupVO group) throws Exception;
	public void update(int member_no) throws Exception;
	public List<GroupVO> listAll(int member_no) throws Exception;
	public GroupVO detailView(int group_no) throws Exception;
	public List<MenuManageVO> menuList(int group_no);
	public List<ReviewManageVO> reviewList(int group_no) throws Exception;
	public void menuDelete(int menu_no) throws Exception;
	public void menuAdd(MenuManageVO menu) throws Exception;
	public MenuManageVO menuUpdateGet(int menu_no) throws Exception;
	public boolean menuUpdatePost(MenuManageVO menu) throws Exception;
	public boolean enterpriseRemoveApplication(int group_no) throws Exception;
	public boolean sideAdd(MenuManageVO menu) throws Exception;
	public List<MenuManageVO> sideList(int menu_no) throws Exception;
	public MenuManageVO sideUpdateGet(MenuManageVO menu) throws Exception;
	public boolean sideUpdatePost(MenuManageVO menu) throws Exception;
	public int sideDelete(MenuManageVO menu) throws Exception;
	public int reviewDelete(int review_no) throws Exception;
	public List<GroupVO> stats_selectName(int member_no) throws Exception;
	public List<OrderMenuVO> stats_daySell(OrderMenuVO order) throws Exception;
	public List<OrderMenuVO> stats_dayMenuSell(OrderMenuVO order) throws Exception;
	public List<OrderMenuVO> stats_monthSell(OrderMenuVO order) throws Exception;
	public List<OrderMenuVO> stats_monthMenuSell(OrderMenuVO order) throws Exception;
	//내가 작성한 거 (Fe)
	public List<NoVO> groupName(int member_no) throws Exception;
	public List<OrderMenuVO> orderList(Map map) throws Exception;
	public List<MenuVO> recentMenu() throws Exception;
	public List<MenuCheckVO> menuCheck(Map map) throws Exception;
	public void checkUpdate(Map map) throws Exception;
}
