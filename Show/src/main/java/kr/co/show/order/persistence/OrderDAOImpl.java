package kr.co.show.order.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.show.order.domain.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<OrderVO> menu_list(int group_no) throws Exception {

		return sqlSession.selectList("order.menu_list", group_no);
	}

	@Override
	public List<OrderVO> category_list(int group_no) throws Exception {
		
		return sqlSession.selectList("order.category_list", group_no);
	}

	@Override
	public OrderVO group_info(int group_no) throws Exception {
		return sqlSession.selectOne("order.group_info",group_no);
	}

	@Override
	public List<OrderVO> side_list(int menu_no) throws Exception {
		return sqlSession.selectList("order.sidemenu",menu_no);
	}

	@Override
	public int sidecount(int menu_no) throws Exception {
		return sqlSession.selectOne("order.sidecount",menu_no);
	}

}
