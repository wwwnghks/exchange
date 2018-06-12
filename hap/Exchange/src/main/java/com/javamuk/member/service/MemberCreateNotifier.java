package com.javamuk.member.service;

import javax.inject.Inject;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;

@Service
public class MemberCreateNotifier {
	
	@Inject
	private MailSender mailSender;
	
	public void sendMail(Member member) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setSubject("[회원가입안내] "+ member.getMem_name() + "님 회원가입을 축하합니다.");
		message.setFrom("dkdlxl33@gmail.com");
		message.setText(" 회원가입 성공");
		message.setTo(member.getMem_email());
		
		mailSender.send(message);
	}

}
