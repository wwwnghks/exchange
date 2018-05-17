package com.javamuk.message.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.message.service.MessageDeleteService;

@Controller
public class MessageDeleteController {

	@Inject
	private MessageDeleteService messageDeleteService;
	
	@RequestMapping("/message/sMessageDelete")
	public String sDeleteForm(@RequestParam(name="msg_idx")int msg_idx) {
		System.out.println(msg_idx);
		messageDeleteService.deleteMessage(msg_idx);
		return "redirect:sMessageList";
	}
	@RequestMapping("/message/gMessageDelete")
	public String gDeleteForm(@RequestParam(name="msg_idx")int msg_idx) {
		System.out.println(msg_idx);
		messageDeleteService.deleteMessage(msg_idx);
		return "redirect:gMessageList";
	}
}
