package kr.co.show.search.persistence;

import java.util.List;

import kr.co.show.group.domain.GroupVO;
import kr.co.show.search.domain.SearchDTO;

public interface SearchDAO {

	public List<GroupVO> searchList(SearchDTO searchDTO);
	public List<GroupVO> searchDetailList(SearchDTO searchDTO);
}
