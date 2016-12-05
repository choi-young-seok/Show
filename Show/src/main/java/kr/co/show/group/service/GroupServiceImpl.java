package kr.co.show.group.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.ReviewManageVO;
import kr.co.show.group.persistence.GroupDAO;

@Service
public class GroupServiceImpl implements GroupService{
	
	@Inject
	private GroupDAO dao;

	@Transactional
	@Override
	public void insert(GroupVO group, int member_no) throws Exception {
		dao.insert(group);
		dao.update(member_no);
	}

	@Override
	public List<GroupVO> listAll(int member_no) throws Exception {
		return dao.listAll(member_no);
	}

	@Override
	public GroupVO detailView(int group_no) throws Exception {
		return dao.detailView(group_no);
	}

	@Override
	public List<MenuManageVO> menuList(int group_no) throws Exception{
		return dao.menuList(group_no);
	}

	@Override
	public List<ReviewManageVO> reviewList(int group_no) throws Exception{
		return dao.reviewList(group_no);
	}

	@Override
	public void menuDelete(int menu_no) throws Exception {
		dao.menuDelete(menu_no);
	}

	@Override
	public void menuAdd(MenuManageVO menu) throws Exception {
		dao.menuAdd(menu);
	}

	@Override
	public MenuManageVO menuUpdateGet(int menu_no) throws Exception {
		return dao.menuUpdateGet(menu_no);
	}

	@Override
	public boolean menuUpdatePost(MenuManageVO menu) throws Exception {
		boolean ch = dao.menuUpdatePost(menu);
		return ch;
	}

	@Override
	public boolean enterpriseRemoveApplication(int group_no) throws Exception {
		boolean ch = dao.enterpriseRemoveApplication(group_no);
		return ch;
	}

	@Override
	public boolean sideAdd(MenuManageVO menu) throws Exception {
		boolean ch = dao.sideAdd(menu);
		return ch;
	}
}
