package com.javamuk.member.service;

import javax.inject.Inject;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.javamuk.domain.Member;

@Service
public class MemberPasswordNotifier {
	
		@Inject
		private MailSender mailSender;
		
		public void sendMail(Member member) {
			SimpleMailMessage message = new SimpleMailMessage();
			message.setSubject("[임시비밀번호]" + "회원수정에서 수정해주세요.");
			message.setFrom("dkdlxl33@gmail.com");
			message.setText(" 임시비밀번호:" + member.getMem_pwc() + "입니다 마이페이지-내정보수정에서 수정해주세요.");
			message.setTo(member.getMem_email());
			
			mailSender.send(message);
		}
	
}
