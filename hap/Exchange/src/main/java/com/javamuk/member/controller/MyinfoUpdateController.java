package com.javamuk.member.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.member.service.MemberLoginService;
import com.javamuk.member.service.MyinfoUpdateService;
import com.javamuk.sha256.SHA_256;

@Controller
public class MyinfoUpdateController {
	
	
/*@Inject
private MemberLoginService service;*/

@Inject
private MyinfoUpdateService upservice;
	
@RequestMapping(value = "/member/myinfo", method = RequestMethod.GET)
public String myinfoUpdateGET(Model model, HttpSession session) {
	SHA_256 secret = new SHA_256();
	
	Member member = (Member)session.getAttribute("session_member");
	member.setMem_pw(secret.encrypt(member.getMem_pw()));
	
	model.addAttribute(member);
	
	return "member/myinfoUpdate";
}

@RequestMapping(value = "/member/myinfo", method = RequestMethod.POST)
public String myinfoUpdatePOST(Member member, Model model, HttpServletRequest request ,HttpSession session) 
		throws IllegalStateException, IOException {
		
		
		System.out.println(member);
	
	SHA_256 secret = new SHA_256();
	member.setMem_pwc(secret.encrypt(member.getMem_pwc()));
	member.setMem_pw(secret.encrypt(member.getMem_pw()));
	
	int resultPwcCnt = upservice.pwc_check(member);

	int resultPwCnt =0; 

			if (member.getMem_pw()== null) {

		resultPwCnt =0;

	}else {

		resultPwCnt =1;                  /*upservice.pw_check(member);*/

	}

	

	int resultCnt = 0;

	int resultTwo = 0;

	

	 if (resultPwcCnt == 0) {

		

		return "member/PwFail";

	}

	

	 if (resultPwCnt == 0) {

		  resultTwo = upservice.updateMemberTwo(member, request);

	 }else {

		 resultCnt = upservice.updateMember(member,request);

	 }

	

	

	 String msg = "정보수정 완료";

 

	if ((resultCnt == 0) && (resultTwo== 0))

		msg = "정보수정 실패";

 

	model.addAttribute("msg", msg);

	

	return "member/myinfoUpdateOk";

}

}
