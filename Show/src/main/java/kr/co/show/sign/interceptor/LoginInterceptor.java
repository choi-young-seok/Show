package kr.co.show.sign.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.show.sign.domain.MemberVO;
import kr.co.show.sign.service.JoinService;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Inject
	private JoinService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception { //Ż���û�� ������ ���̵�� �α������� �� �ɷ��ִ� �޼ҵ�
		String email = request.getParameter("email");
		
		MemberVO vo = service.login(email);
		if(vo == null){
			return false;
		}
		else{
			return true;
		}
		
		
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}
}
