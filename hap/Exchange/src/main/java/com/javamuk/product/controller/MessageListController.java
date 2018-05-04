package com.javamuk.product.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Member;
import com.javamuk.domain.Message;
import com.javamuk.product.service.MessageListService;


@Controller
public class MessageListController {

	@Inject
	private MessageListService MessageListService;

	@RequestMapping(value="/message/gMessageList", method=RequestMethod.GET)
	public String gMessageList(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("session_member");
		List<Message> gMessageList = MessageListService.sListMessage(member.getMem_idx());
		model.addAttribute("gMessageList",gMessageList);
		return "message/gMessageListForm";
	}
	
	@RequestMapping(value="/message/sMessageList", method=RequestMethod.GET)
	public String sMessageList(HttpSession session, Model model) {
		Member member = (Member)session.getAttribute("session_member");
		List<Message> sMessageList = MessageListService.gListMessage(member.getMem_idx());
		model.addAttribute("sMessageList",sMessageList);
		return "message/sMessageListForm";
	}
}
