package kr.co.show.sign;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/sign")
public class JoinController {
		
	@RequestMapping("/up")
	public String view(){
		return "common/join";
	}
	
}