package com.javamuk.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javamuk.domain.Notice;
import com.javamuk.product.service.NoticeReadService;

@Controller
public class NoticeReadController {

	@Inject
	private NoticeReadService noticeReadService;
	
	@RequestMapping("/notice/noticeRead")
	public String readForm(Model model,Notice notice) {
		Notice result_notice = noticeReadService.readNotice(notice);
		model.addAttribute("read_notice", result_notice);
		return "notice/noticeReadForm";
	}
}
