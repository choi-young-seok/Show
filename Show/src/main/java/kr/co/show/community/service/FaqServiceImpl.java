package kr.co.show.community.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.community.domain.FaqVO;
import kr.co.show.community.persistence.FaqDAO;

@Service
public class FaqServiceImpl implements FaqService {

	@Inject
	private FaqDAO dao;
	

	@Override
	public List<FaqVO> list() throws Exception {
		return dao.list();
	}

	

}
