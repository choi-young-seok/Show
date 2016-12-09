package kr.co.show.group.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.group.domain.MenuCheckVO;
import kr.co.show.group.domain.MenuManageVO;
import kr.co.show.group.domain.NoVO;
import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.group.domain.ReviewManageVO;
import kr.co.show.group.persistence.GroupDAO;
import kr.co.show.search.persistence.UploadDAO;

@Service
public class GroupServiceImpl implements GroupService{
	
	@Inject
	private GroupDAO dao;
	@Inject
	private UploadDAO upDao;
	
	@Transactional
	@Override
	public void insert(GroupVO group, int member_no) throws Exception {
		dao.insert(group);
		String[] files = group.getGroup_files();
		if(files == null){
			return;
		}
		for(String fileName : files){
			upDao.addAttach(fileName);
		}
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

	@Override
	public List<MenuManageVO> sideList(int menu_no) throws Exception {
		return dao.sideList(menu_no);
	}

	@Override
	public MenuManageVO sideUpdateGet(MenuManageVO menu) throws Exception {
		return dao.sideUpdateGet(menu);
	}

	@Override
	public boolean sideUpdatePost(MenuManageVO menu) throws Exception {
		boolean ch = dao.sideUpdatePost(menu);
		return ch;
	}

	@Override
	public int sideDelete(MenuManageVO menu) throws Exception {
		int sideDelete = dao.sideDelete(menu);
		return sideDelete;
	}

	@Override
	public int reviewDelete(int review_no) throws Exception {
		int reviewDelete = dao.reviewDelete(review_no);
		return reviewDelete;
	}
	
	@Override
	public List<GroupVO> stats_selectName(int member_no) throws Exception {
		return dao.stats_selectName(member_no);
	}
	
	@Override
	public List<OrderMenuVO> stats_daySell(OrderMenuVO order) throws Exception {
		return dao.stats_daySell(order);
	}
	
	@Override
	public List<OrderMenuVO> stats_dayMenuSell(OrderMenuVO order) throws Exception {
		return dao.stats_dayMenuSell(order);
	}
	
	@Override
	public List<OrderMenuVO> stats_monthSell(OrderMenuVO order) throws Exception {
		return dao.stats_monthSell(order);
	}
	
	@Override
	public List<OrderMenuVO> stats_monthMenuSell(OrderMenuVO order) throws Exception {
		return dao.stats_monthMenuSell(order);
	}

	@Override
	public List<NoVO> groupName(int member_no) throws Exception {
		return dao.groupName(member_no);
	}

	@Override
	public List<OrderMenuVO> orderList(Map map) throws Exception {
		return dao.orderList(map);
	}

	@Override
	public List<MenuCheckVO> menuCheck(Map map) throws Exception {
		return dao.menuCheck(map);
	}
	
	@Override
	public void checkUpdate(Map map) throws Exception {
		dao.checkUpdate(map);
	}
}