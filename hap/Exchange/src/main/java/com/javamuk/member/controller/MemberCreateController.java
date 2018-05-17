package com.javamuk.member.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.javamuk.domain.Member;
import com.javamuk.member.service.MemberCreateService;

@Controller
public class MemberCreateController {
	

	@Inject
	private MemberCreateService service;
	
	@RequestMapping(value="/",method=RequestMethod.POST)
	public String create(Member member,HttpServletRequest request) throws IllegalStateException, IOException {
		service.createMember(member, request);	
		return "home";
	}
}