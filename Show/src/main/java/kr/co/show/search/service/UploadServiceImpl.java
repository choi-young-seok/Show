package kr.co.show.search.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.search.persistence.UploadDAO;

@Service
public class UploadServiceImpl implements UploadService{
	
	@Inject
	private UploadDAO dao;
	
	@Override
	public List<String> getAttach(int group_no) throws Exception {
		// TODO Auto-generated method stub
		return dao.getAttach(group_no);
	}

}
