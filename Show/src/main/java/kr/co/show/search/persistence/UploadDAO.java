package kr.co.show.search.persistence;

import java.util.List;

public interface UploadDAO {
	// ���� DB���
	//public void addAttach(String group_files) throws Exception;
	
	public List<String> getAttach(Integer group_no) throws Exception;
}
