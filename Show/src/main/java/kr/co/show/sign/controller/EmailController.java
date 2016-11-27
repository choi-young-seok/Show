package kr.co.show.sign.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.show.sign.domain.Email;
import kr.co.show.sign.email.EmailSender;

@RestController
@RequestMapping("/email")
public class EmailController {
	@Autowired
	private EmailSender emailSender;

	@RequestMapping("/send") 
	public String sendEmailAction(String reciver) throws Exception {

		Email email = new Email();
		
		String subject = "onShow 인증번호";
		String content = "45678";

		email.setReciver(reciver);
		email.setSubject(subject);
		email.setContent(content);
		System.out.println(reciver);
		emailSender.SendEmail(email);
		System.out.println("완료");

		return "OK";
	}
}