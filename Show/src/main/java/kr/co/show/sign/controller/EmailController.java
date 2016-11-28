package kr.co.show.sign.controller;

import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.sign.domain.Email;
import kr.co.show.sign.domain.MemberVO;
import kr.co.show.sign.email.EmailSender;
import kr.co.show.sign.service.JoinService;

@RestController
@RequestMapping("/email")
public class EmailController {
	@Autowired
	private EmailSender emailSender;
	
	@Inject
	JoinService service;

	private Random random;
	private String content1;
	private String reciver1;

	@RequestMapping("/send")
	public String sendEmailAction(String reciver, HttpSession session) throws Exception {

		Email email = new Email();

		String subject = "onShow 인증번호";
		content1 = random_number();
		String content2 = "인증번호는 " + content1 + " 입니다.";
		reciver1 = reciver;

		session.setAttribute("number", content1);
		session.setAttribute("reciver", reciver);
		email.setReciver(reciver);
		email.setSubject(subject);
		email.setContent(content2);
		System.out.println(reciver);
		emailSender.SendEmail(email);
		System.out.println("완료");

		return "OK";
	}

	@RequestMapping("/success")
	public String sendPasswordAction(String number) throws Exception {
		System.out.println(content1);
		System.out.println(reciver1);
		MemberVO vo = new MemberVO();
		if (content1.equals(number)) {
			Email email = new Email();

			String subject = "onShow 임시";
			String password = "onshow" + random_number();
			String content2 = "임시 비밀번호는  " + password + " 입니다.";

			email.setReciver(reciver1);
			email.setSubject(subject);
			email.setContent(content2);
			
			vo.setMember_email(reciver1);
			vo.setMember_pass(password);
			service.changePassword(vo);

			emailSender.SendEmail(email);

			return "OK";
		} else{
			return "FAIL";
		}
	}

	public @ResponseBody String random_number() {
		random = new Random();
		String number = "";

		for (int i = 0; i < 6; i++) {
			int num = random.nextInt(10);

			String one = Integer.toString(num);

			number = number + one;
		}
		return number;
	}
}