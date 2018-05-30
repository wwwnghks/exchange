package com.javamuk.message.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Message;
import com.javamuk.message.service.MessageReadService;

@Controller
public class MessageReadController {

	@Inject
	private MessageReadService messageReadService;
	
	@RequestMapping(value="/message/gMessageRead", method=RequestMethod.GET)
	public String gReadForm(Message message, Model model) {
		Message read_message = messageReadService.gReadMessage(message);
		model.addAttribute("read_message",read_message);
		return "message/gMessageReadForm";
	}
	
	@RequestMapping(value="/message/sMessageRead", method=RequestMethod.GET)
	public String sReadForm(Message message, Model model) {
		Message read_message = messageReadService.sReadMessage(message);
		model.addAttribute("read_message",read_message);
		return "message/sMessageReadForm";
	}
}
