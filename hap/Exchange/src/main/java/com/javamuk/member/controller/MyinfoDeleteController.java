package com.javamuk.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.member.service.MyinfoDeleteService;

@Controller
public class MyinfoDeleteController {
	
	@Inject
	private MyinfoDeleteService delservice;
	
	@RequestMapping(value = "/member/myDelete", method = RequestMethod.GET)
	public String myinfoDelete(Model model, HttpSession session){
	
		Member member= (Member)session.getAttribute("session_member");
		System.out.println(member);
		model.addAttribute(member);
		
		return "member/myinfoDelete";
	}
	
	@RequestMapping(value = "/member/myDelete", method = RequestMethod.POST)
	public String delete(Model model, HttpSession session) {
		
		Member member = (Member)session.getAttribute("session_member");
		
		int resultCnt = delservice.deleteMember(member);
		
		String msg = "회원탈퇴 완료";
		if (resultCnt == 0)
			msg = "회원탈퇴 실패";
		
		model.addAttribute("msg", msg);
		
		return "member/myinfoUpdateOk";
	}
	
	

}
