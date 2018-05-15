package com.javamuk.product.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javamuk.domain.Notice;
import com.javamuk.product.service.NoticeReadService;

@Controller
public class NoticeReadController {

	@Inject
	private NoticeReadService noticeReadService;
	
	/*@RequestMapping("/notice/noticeRead")
	public String readForm(Model model,@RequestParam(name="not_idx") int not_idx) {
		Notice result_notice = noticeReadService.readNotice(not_idx);
		model.addAttribute("read_notice", result_notice);
		return "notice/noticeReadForm";
	}*/
	
	@RequestMapping(value = "/notice/noticeRead", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam int not_idx, HttpSession session) throws Exception {
		// 조회수 증가 처리
		noticeReadService.increaseViewcnt(not_idx, session);
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("notice/noticeReadForm");
		// 뷰에 전달할 데이터
		mav.addObject("read_notice", noticeReadService.readNotice(not_idx));
		return mav;
	}
}
