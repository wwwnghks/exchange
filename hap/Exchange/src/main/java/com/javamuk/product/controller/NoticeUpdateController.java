package com.javamuk.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javamuk.domain.Notice;
import com.javamuk.product.service.NoticeReadService;
import com.javamuk.product.service.NoticeUpadateService;

@Controller
public class NoticeUpdateController {
	
	@Inject
	private NoticeReadService noticeReadService;

	@Inject
	private NoticeUpadateService noticeUpadateService;
	
	@RequestMapping(value="/notice/noticeUpdate", method=RequestMethod.GET)
	public String updateForm(@RequestParam(name="not_idx") int not_idx, Model model) {
		Notice result_notice = noticeReadService.readNoticeIdx(not_idx);
		model.addAttribute("update_notice",result_notice);
		return "notice/noticeUpdateForm";
	}
	
	@RequestMapping(value="/notice/noticeUpdate", method=RequestMethod.POST)
	public String update(Notice notice, Model model) {
		System.out.println(notice);
		noticeUpadateService.updateNotice(notice);
		model.addAttribute("update_notice",notice);
		//return "redirect:noticeList";
		return "redirect:noticeRead?not_idx="+notice.getNot_idx();
	}
}
