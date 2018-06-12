package com.javamuk.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.member.service.MemberPasswordNotifier;
import com.javamuk.member.service.MemberPwFindService;
import com.javamuk.sha256.SHA_256;

@Controller
public class MemberPwFindController {
	
	@Inject
	private MemberPwFindService service;
	
	@Inject
	MemberPasswordNotifier notifier;
	
	@RequestMapping(value = "/member/memberPwFind", method = RequestMethod.GET)
	public String pwFindGet() {
		return "member/memberPwFind";
	}
	
	@RequestMapping(value = "/member/memberPwFind",method = RequestMethod.POST)
	public String pwFindPost(Member member, Model model) {
		
		String cpw =service.getRamdomPassword(8);
		System.out.println(cpw);
		SHA_256 secret = new SHA_256();
		member.setMem_pwc(cpw);
		member.setMem_pw(cpw);
		
		member.setMem_pw(secret.encrypt(member.getMem_pw()));
		int members = service.memberPwFind(member);
		
		String msg = "다시 시도해 주세요";
		
		if (members == 0) {
			model.addAttribute("msg", msg);
			return "member/findFail";
		}
		
		notifier.sendMail(member);
		return "member/memberPwFindOk";
	}
	

}
