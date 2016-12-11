package kr.co.show.sign.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public @ResponseBody String sign_AX(@RequestBody MemberVO vo, boolean allCheck, boolean emailCheck, boolean smsCheck) throws Exception{
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
		MemberVO vo = service.login(email);
		String position = vo.getMember_position();
		String pass = vo.getMember_pass();
		int id = vo.getMember_no();
		String name = vo.getMember_name();
		
		if(password.equals(pass)){
			
			String draw = service.drawConfirm(email);
			
			if(draw != null){
				if(draw.equals("T")){
					System.out.println("실행 안됨");
					
					return "NO";
				} else if(draw.equals("F")){
					System.out.println("로그인 성공");
					session.setAttribute("name", name);
					session.setAttribute("email", email);
					session.setAttribute("id", id);
					session.setAttribute("position", position);
					
					return "OK";
				}
			}			
		} else{
			System.out.println("로그인 실패");
			return null;
		}
		return null;
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
	@RequestMapping(value="/cancel_AX", method=RequestMethod.PUT)
	public @ResponseBody String cancel_AX(@RequestBody String member_email, String member_pass, HttpSession session) throws Exception{
		System.out.println("탈퇴 취소");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_email", member_email);
		map.put("member_pass", member_pass);
		System.out.println(map.get("name"));
		System.out.println(map.get("phone"));
		int pk = service.cancel(map);
		
		System.out.println(pk);
		
		service.updateCancel(pk);
		
		session.invalidate();
		
		return "OK";
	}
	
	@RequestMapping(value="/admin_login", method=RequestMethod.POST)
	public @ResponseBody String admin_login(String email, String password, HttpSession session) throws Exception{
		MemberVO vo = service.login(email);
		String position = vo.getMember_position();
		String pass = vo.getMember_pass();
		int id = vo.getMember_no();
		String name = vo.getMember_name();
		
		if(password.equals(pass)){
			
			String draw = service.drawConfirm(email);
			
			if(draw != null){
				if(draw.equals("T") || position.equals("10") || position.equals("20")){
					System.out.println("실행 안됨");
					
					return "NO";
				} else if(draw.equals("F") && position.equals("30")){
					System.out.println("로그인 성공 :"+position);
					session.setAttribute("admin_name", name);
					session.setAttribute("admin_email", email);
					session.setAttribute("admin_id", id);
					session.setAttribute("admin_position", position);
					
					return "OK";
				}
			}			
		} else{
			System.out.println("로그인 실패");
			return null;
		}
		return null;
	}
	
	@RequestMapping(value="/confirm_AX", method=RequestMethod.POST)
	public boolean confirm_AX(String email) throws Exception{
		MemberVO vo = service.login(email);
		
		if(vo == null)
			return true;
		
		return false;
	}
	
}
