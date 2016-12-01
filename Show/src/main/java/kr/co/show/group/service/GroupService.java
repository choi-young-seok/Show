package kr.co.show.group.service;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.ReviewManageVO;

public interface GroupService {
	public void insert(GroupVO group, int member_no) throws Exception;//insert와 update 트랜잭션
	public List<GroupVO> listAll(int member_no) throws Exception;//내업체 List
	public GroupVO detailView(int group_no) throws Exception;
	public List<MenuManageVO> menuList(int group_no) throws Exception;
	public List<ReviewManageVO> reviewList(int group_no) throws Exception;
	public void menuDelete(int menu_no) throws Exception;
	public void menuAdd(MenuManageVO menu) throws Exception;
}
