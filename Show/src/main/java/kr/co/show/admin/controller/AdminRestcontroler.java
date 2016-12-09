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
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);// 200코드
		} catch (Exception e) {
			e.printStackTrace();
			// 입력시 에러발생
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);// 400코드
		}

		return entity;
	}
	
	@RequestMapping("/selectC")
	public List<GroupVO> selectC(String group_category,Model model) throws Exception{
		System.out.println("dd"+group_category);
		List<GroupVO> selectC = service.selectC(group_category);
		System.out.println(selectC.size());
		model.addAttribute("selectC",selectC);
		return selectC;
	}
	@RequestMapping("/chList")
	public List<GroupVO> chList(String group_ch,Model model) throws Exception{
		System.out.println("dd"+group_ch);
		List<GroupVO> chList = service.chList(group_ch);
		System.out.println(chList.size());
		model.addAttribute("chList",chList);
		return chList;
	}
	@RequestMapping("/nchList")
	public List<GroupVO> nchList(String group_ch,Model model) throws Exception{
		System.out.println("dd"+group_ch);
		List<GroupVO> nchList = service.nchList(group_ch);
		System.out.println(nchList.size());
		model.addAttribute("nchList",nchList);
		return nchList;
	}
	@RequestMapping("/dchList")
	public List<GroupVO> dchList(String group_delete_ch,Model model) throws Exception{
		System.out.println("dd"+group_delete_ch);
		List<GroupVO> dchList = service.dchList(group_delete_ch);
		System.out.println(dchList.size());
		model.addAttribute("dchList",dchList);
		return dchList;
	}
	@RequestMapping("/searchList")
	public List<GroupVO> searchList(String group_name,Model model) throws Exception{
		List<GroupVO> searchList = service.searchList(group_name);
		model.addAttribute("searchList",searchList);
		return searchList;
	}
}
