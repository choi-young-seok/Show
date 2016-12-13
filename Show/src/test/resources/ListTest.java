import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.show.search.domain.SearchDTO;
import kr.co.show.search.persistence.MainDAO;
import kr.co.show.search.persistence.SearchDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ListTest {
	
	@Inject
	private MainDAO dao;
	@Inject
	private SearchDAO sdao;
	
	//@Test
	public void listTest(){
		System.out.println(dao.mainList());
	}
	
	@Test
	public void searchList(){
		SearchDTO searchDTO = new SearchDTO();
		searchDTO.setSearchKeyword("길동커피");
		sdao.searchList(searchDTO);
	}
	
	//@Test
	public void searchDetialList(){
		SearchDTO searchDTO = new SearchDTO();
		searchDTO.setSearchKeyword("스타벅스1");
		searchDTO.setSearchKind("커피숍");
		sdao.searchDetailList(searchDTO);
	}
}
