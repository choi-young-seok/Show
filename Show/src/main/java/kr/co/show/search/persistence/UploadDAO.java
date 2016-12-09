package kr.co.show.search.persistence;

import java.util.List;

public interface UploadDAO {
	// 파일 DB등록
	public void addAttach(String fullName) throws Exception;
	
	public List<String> getAttach(Integer group_no) throws Exception;
}
