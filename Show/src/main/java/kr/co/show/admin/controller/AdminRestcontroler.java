package kr.co.show.admin.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.admin.service.AdminService;
import kr.co.show.group.domain.GroupVO;

@RestController
public class AdminRestcontroler {
	@Inject
	private AdminService service;

	@RequestMapping("/admin_group_update")
	public ResponseEntity<String> update(@RequestBody GroupVO vo) throws Exception {

		ResponseEntity<String> entity;
		try {
			service.update(vo);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);// 200�ڵ�
		} catch (Exception e) {
			e.printStackTrace();
			// �Է½� �����߻�
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);// 400�ڵ�
		}

		return entity;
	}
}
