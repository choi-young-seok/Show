package kr.co.show.sign.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.sign.domain.MemberVO;
import kr.co.show.sign.service.JoinService;

@RestController
@RequestMapping("/sign")
public class JoinRestController {
	
	@Inject
	private JoinService service;
	
	@RequestMapping("/sign_AX")
	public @ResponseBody String sign_AX(MemberVO vo, boolean allCheck, boolean emailCheck, boolean smsCheck) throws Exception{
		if(emailCheck){
			vo.setMember_emailck("T");
		}
		if(smsCheck)
			vo.setMember_smsck("T");
		if(allCheck)
			vo.setMember_allcheck("T");
		System.out.println(vo.toString());
		service.create(vo);
		return "OK";
	}
	
	@RequestMapping("/modi_AX")
	public String modi_AX(MemberVO vo, String email, String password, String phone) throws Exception{
		MemberVO sample = service.modify(email); //이게 수정 전의 정보
		sample.setMember_pass(password);
		sample.setMember_phone(phone);
		
		service.change(sample);
		service.changePassword(sample);
		
		return "OK";
	}

	@RequestMapping("/login_AX")
	public @ResponseBody String login_AX(String email, String password, HttpSession session) throws Exception{
		System.out.println("로그인 여긴 들어오니?");
		MemberVO vo = service.login(email);
		String position = vo.getMember_position();
		String pass = vo.getMember_pass();
		int id = vo.getMember_no();
		if(password.equals(pass)){
			System.out.println("로그인 성공");
			session.setAttribute("email", email);
			session.setAttribute("id", id);
			session.setAttribute("position", position);
			
		} else{
			System.out.println("로그인 실패");
			return null;
		}
		return "OK";
	}
	@RequestMapping("/leave_AX")
	public @ResponseBody String leave_AX(String member_email) throws Exception{
		System.out.println("탈퇴신청 ajax");
		
		service.delete(member_email);
		
		return "OK";
	}
	
	@RequestMapping("/findId")
	public @ResponseBody String find_AX(String name, String phone) throws Exception{
		System.out.println("이메일 찾기?");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("phone", phone);
		System.out.println(map.get("name"));
		System.out.println(map.get("phone"));
		String email = service.findId(map);
		System.out.println(email);
	
		return email;
	}
	@RequestMapping("/cancel_AX")
	public @ResponseBody String cancel_AX(String member_email, String member_pass) throws Exception{
		System.out.println("탈퇴 취소");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_email", member_email);
		map.put("member_pass", member_pass);
		System.out.println(map.get("name"));
		System.out.println(map.get("phone"));
		int pk = service.cancel(map);
		
		System.out.println(pk);
		
		service.updateCancel(pk);
		
		return "OK";
	}
}
