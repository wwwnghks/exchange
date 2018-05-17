package com.javamuk.notice.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javamuk.domain.Manager;
import com.javamuk.domain.Notice;
import com.javamuk.notice.service.NoticeCreateService;

@Controller
public class NoticeCreateController {

	@Inject
	private NoticeCreateService noticeCreateService;
	
	@RequestMapping(value="/notice/noticeCreate", method=RequestMethod.GET)
	public String createform() {
		return "notice/noticeCreateForm";
	}
	
	@RequestMapping(value="/notice/noticeCreate", method=RequestMethod.POST)
	public String create(Notice notice) {
		int resultCnt = noticeCreateService.createNotice(notice);
		System.out.println(resultCnt);
		
		return "redirect:noticeList";
	}
}
