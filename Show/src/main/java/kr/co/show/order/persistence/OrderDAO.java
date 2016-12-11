package kr.co.show.order.persistence;

import java.util.List;

import kr.co.show.order.domain.OrderVO;

public interface OrderDAO {
	
	public List<OrderVO> menu_list(int group_no)throws Exception;
	public List<OrderVO> category_list(int group_no)throws Exception;
	public OrderVO group_info(int group_no)throws Exception;
	public List<OrderVO> side_list(int menu_no)throws Exception;
	public int sidecount(int menu_no)throws Exception;
}
