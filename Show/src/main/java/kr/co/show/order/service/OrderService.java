package kr.co.show.order.service;

import java.util.List;

import kr.co.show.order.domain.OrderVO;

public interface OrderService {

	public List<OrderVO> menuList(int group_no)throws Exception;
	public List<OrderVO> categoryList(int group_no)throws Exception;
	public OrderVO group_info(int group_no)throws Exception;
	public List<OrderVO> side_list(int menu_no)throws Exception;
	public int sidecount(int menu_no)throws Exception;
}
