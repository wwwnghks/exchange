package com.javamuk.product.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.domain.Notice;
import com.javamuk.domain.Paging;
import com.javamuk.product.service.NoticeListService;

@Controller
public class NoticeListController {

	@Inject
	//private NoticePageService noticePageService;
	
	
	private NoticeListService noticeListService;
	
	@RequestMapping(value = "/notice/noticeList", method = RequestMethod.GET)
	public String noticeList(Paging paging, Model model, @RequestParam(value = "requestPage", defaultValue = "0") int requestPage) {
		
		//Paging page = noticePageService.noticePaging(requestPage);
		List<Notice> noticeList = noticeListService.listNotice();

		//model.addAttribute("noticeList", page);
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeListForm";
	}
}
