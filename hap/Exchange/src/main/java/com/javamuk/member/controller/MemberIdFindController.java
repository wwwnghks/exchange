package com.javamuk.member.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.member.service.MemberIdFindService;

@Controller
public class MemberIdFindController {
	
	@Inject
	private MemberIdFindService service;
	
	@RequestMapping(value = "/member/memberIdFind",method = RequestMethod.GET)
	public String idFindGet() {
		return "member/memberIdFind";
	}
	
	@RequestMapping(value = "/member/memberIdFind",method = RequestMethod.POST)
	public String idFindPost(Member member, Model model){
		 
		Member members = service.memberIdFind(member);
		
		String msg = "아이디찾기 실패";
		
		if (members == null) {
			model.addAttribute("msg",msg);
			return "member/findFail";
		}
		
		 model.addAttribute("members",members);
		return "member/memberIdFindOk";
	}

}
