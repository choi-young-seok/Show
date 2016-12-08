package kr.co.show.group.service;

import java.util.List;
import java.util.Map;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuCheckVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.NoVO;
import kr.co.show.group.domain.OrderVO;
import kr.co.show.group.domain.ReviewManageVO;

public interface GroupService {
	public void insert(GroupVO group, int member_no) throws Exception;//insert와 update 트랜잭션
	public List<GroupVO> listAll(int member_no) throws Exception;//내업체 List
	public GroupVO detailView(int group_no) throws Exception;
	public List<MenuManageVO> menuList(int group_no) throws Exception;
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
	//내가 작성한 거 (Fe)
	public List<NoVO> groupName(int member_no) throws Exception;
	public List<OrderVO> orderList(Map map) throws Exception;
	public List<MenuCheckVO> menuCheck(Map map) throws Exception;
}
