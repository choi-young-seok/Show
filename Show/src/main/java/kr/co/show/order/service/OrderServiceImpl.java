package kr.co.show.order.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.group.domain.OrderMenuVO;
import kr.co.show.order.domain.OrderVO;
import kr.co.show.order.persistence.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService {

	@Inject
	OrderDAO dao;
	
	@Override
	public List<OrderVO> menuList(int group_no) throws Exception {
		return dao.menu_list(group_no);
	}

	@Override
	public List<OrderVO> categoryList(int group_no) throws Exception {
		return dao.category_list(group_no);
	}

	@Override
	public OrderVO group_info(int group_no) throws Exception {
		
		return dao.group_info(group_no);
	}

	@Override
	public List<OrderVO> side_list(int menu_no) throws Exception {
		return dao.side_list(menu_no);
	}

	@Override
	public int sidecount(int menu_no) throws Exception {
		return dao.sidecount(menu_no);
	}

	@Override
	public int orderinsert(OrderMenuVO vo) throws Exception {
		return dao.orderinsert(vo);
	}

	@Override
	public int menuinsert(OrderMenuVO vo) throws Exception {
		return dao.menu_insert(vo);
	}

	@Override
	public int sideinsert(OrderMenuVO vo) throws Exception {
		return dao.side_insert(vo);
	}

	@Override
	public List<OrderVO> review(int group_no) throws Exception {
		return dao.review(group_no);
	}

}
