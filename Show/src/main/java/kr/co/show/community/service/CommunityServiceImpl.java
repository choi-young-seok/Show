package kr.co.show.community.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.show.community.persistence.CommunityDAO;
import kr.co.show.domain.CommunityVO;
@Service("CommunityService")
public class CommunityServiceImpl implements CommunityService {
	@Inject
	private CommunityDAO dao;

	@Override
	public void create(CommunityVO cvo) throws Exception {
		dao.create(cvo);
		
	}

}
