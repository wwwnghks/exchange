package com.javamuk.member.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Member;
import com.javamuk.member.service.MemberCreateService;
import com.javamuk.sha256.SHA_256;

@Controller
public class MemberCreateController {
	

	@Inject
	private MemberCreateService service;
	
	@SuppressWarnings("static-access")
	@RequestMapping(value="/",method=RequestMethod.POST)
	public String create(Member member,HttpServletRequest request) throws IllegalStateException, IOException {
		SHA_256 secret = new SHA_256();
		member.setMem_pw(secret.encrypt(member.getMem_pw()));
		service.createMember(member, request);	
		return "home";
	}
	
	
	
}