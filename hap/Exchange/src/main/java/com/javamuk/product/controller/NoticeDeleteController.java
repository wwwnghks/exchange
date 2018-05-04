package com.javamuk.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.product.service.NoticeDeleteService;

@Controller
public class NoticeDeleteController {

	@Inject
	private NoticeDeleteService noticeDeleteService;
	
	@RequestMapping("/notice/noticeDelete")
	public String deleteForm(@RequestParam(name="not_idx") int not_idx) {
		noticeDeleteService.deleteNotice(not_idx);
		return "redirect:noticeList";
	}
	
}
