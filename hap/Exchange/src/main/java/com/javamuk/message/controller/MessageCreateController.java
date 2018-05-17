package com.javamuk.message.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.domain.Message;
import com.javamuk.message.service.MessageCreateService;

@Controller
public class MessageCreateController {

	@Inject
	private MessageCreateService messageCreateService;

	@RequestMapping(value = "/message/messageCreate", method = RequestMethod.GET)
	public String createForm(@RequestParam(name = "mem_nickname") String mem_nickname,
			@RequestParam(name = "pro_idx") int pro_idx, Model model) {
		model.addAttribute("mem_nickname", mem_nickname);
		model.addAttribute("pro_idx", pro_idx);
		return "message/messageCreateForm";
	}

	@RequestMapping(value = "/message/messageCreate", method = RequestMethod.POST)
	public String createMessage(Message message) {
		int resultCnt = messageCreateService.createMessage(message);
		System.out.println(resultCnt);
		return "message/messageSending";
	}
}
