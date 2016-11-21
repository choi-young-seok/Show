package kr.co.show.sign;

import javax.inject.Inject;

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
			vo.setEmailCheck("T");
		}
		if(smsCheck)
			vo.setSmsCheck("T");
		if(allCheck)
			vo.setAllCheck("T");
		
		
		service.create(vo);
		
		return "OK";
	}
}
