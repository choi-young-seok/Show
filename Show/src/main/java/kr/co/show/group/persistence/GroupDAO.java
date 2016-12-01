package kr.co.show.group.persistence;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
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
}
