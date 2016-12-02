package kr.co.show.sign.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.show.sign.service.JoinService;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Inject
	private JoinService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception { //Ż���û�� ������ ���̵�� �α������� �� �ɷ��ִ� �޼ҵ�
		String email = request.getParameter("email");
		
		String draw = service.drawConfirm(email);
		
		if(draw.equals("T")){
			System.out.println("���� �ȵ�");
			
			return false;
		}
		
		return true;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}
}
