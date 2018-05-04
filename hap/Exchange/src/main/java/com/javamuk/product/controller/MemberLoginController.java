package com.javamuk.product.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.product.service.MemberLoginService;

@Controller
public class MemberLoginController {
	
	@Inject
	private MemberLoginService service;
	

	@RequestMapping(value = "/member/loginMember", method = RequestMethod.GET)
	public String loginMemeberGet() {
		return "member/loginMember";
	}
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "member/logout";
	}
	
	@RequestMapping(value = "/member/loginMember", method = RequestMethod.POST)
	public String loginMemeberPost(Member login_member,HttpSession session) {
		
		Member result_member = service.loginMember(login_member);
		
		Manager manager = new Manager();
		manager.setMan_id(login_member.getMem_id());
		manager.setMan_pw(login_member.getMem_pw());
		Manager result_manager = service.loginManager(manager);
		
		if(result_member!=null) {
			session.setAttribute("session_member", result_member);
			return "redirect:../";
		}else if(result_manager!=null) {
			session.setAttribute("session_manager", result_manager);
			return "redirect:../";
		}
		else {
			return "member/loginFail";
		}
	}

}