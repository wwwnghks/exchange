package com.javamuk.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javamuk.domain.Member;
import com.javamuk.product.service.MemberReadService;



@Controller
public class MemberReadController {

	@Inject
	private MemberReadService service;
	
	// 회원가입의 id 길이와 존재여부 판단
	@RequestMapping(value = "/member/checkId", method = RequestMethod.GET)
	@ResponseBody
	public String idCheck(@RequestParam("id") String id, Model model) {
		Member ajax_member = new Member();
		ajax_member.setMem_id(id);
		int result = service.id_check(ajax_member);
		if (id.length() < 8) {
			model.addAttribute("result", "length");
			return "{\"result\":\"" + "length\"}";
		} else {
			if (result != 0) {
				model.addAttribute("result", "true");
				return "{\"result\":\"" + "true\"}";
			} else {
				model.addAttribute("result", "false");
				return "{\"result\":\"" + "false\"}";
			}
		}
	}
	
	@RequestMapping(value = "/member/checkNick", method = RequestMethod.GET)
	@ResponseBody
	public String nickCheck(@RequestParam("nick") String nick, Model model) {
		Member ajax_member = new Member();
		ajax_member.setMem_nickname(nick);
		int result = service.nick_check(ajax_member);
		if (nick.length() < 4) {
			model.addAttribute("result", "length");
			return "{\"result\":\"" + "length\"}";
		} else {
			if (result != 0) {
				model.addAttribute("result", "true");
				return "{\"result\":\"" + "true\"}";
			} else {
				model.addAttribute("result", "false");
				return "{\"result\":\"" + "false\"}";
			}
		}
	}
	
	
}