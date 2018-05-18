package com.javamuk.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.member.service.MemberLoginService;

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
	

	@RequestMapping(value = "/navercreate", method = RequestMethod.GET)
	@ResponseBody
	public void createnaverMember(Member naverMember, HttpSession session) {
		Member result_member = service.loginMember(naverMember);
		if (result_member == null) {
			service.createNaverMember(naverMember);
			Member naver_member = service.loginMember(naverMember);
			session.setAttribute("session_member", naver_member);
		}else {
			session.setAttribute("session_member", result_member);
		}
	}
	
	@RequestMapping(value = "/member/cacaocreate", method = RequestMethod.GET)
	@ResponseBody
	public void cacaocreateMember(Member cacaoMember, HttpSession session) {
		Member result_member = service.loginMember(cacaoMember);
		if (result_member == null) {
			service.createCacaoMember(cacaoMember);
			Member cacao_member = service.loginMember(cacaoMember);
			session.setAttribute("session_member", cacao_member);
		}else {
			session.setAttribute("session_member", result_member);
		}
	}
	

	@RequestMapping(value = "/member/loginMember", method = RequestMethod.POST)
	public String loginMemeberPost(Member login_member, HttpSession session) {

		Member result_member = service.loginMember(login_member);

		Manager manager = new Manager();
		manager.setMan_id(login_member.getMem_id());
		manager.setMan_pw(login_member.getMem_pw());
		Manager result_manager = service.loginManager(manager);

		if (result_member != null) {
			session.setAttribute("session_member", result_member);
			return "redirect:../";
		} else if (result_manager != null) {
			session.setAttribute("session_manager", result_manager);
			return "redirect:../";
		} else {
			return "member/loginFail";
		}
	}

}