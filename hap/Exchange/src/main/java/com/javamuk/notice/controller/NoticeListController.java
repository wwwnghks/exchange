package com.javamuk.notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javamuk.domain.Notice;
import com.javamuk.domain.Paging;
import com.javamuk.domain.QnA;
import com.javamuk.notice.service.NoticeListService;

@Controller
public class NoticeListController {

	//@Inject
	//private NoticePageService noticePageService;
	
	@Inject
	private NoticeListService noticeListService;
	
/*	@RequestMapping(value = "/notice/noticeList", method = RequestMethod.GET)
	public String noticeList(Paging paging, Model model, @RequestParam(value = "requestPage", defaultValue = "0") int requestPage) {
		
		//Paging page = noticePageService.noticePaging(requestPage);
		List<Notice> noticeList = noticeListService.listNotice();

		//model.addAttribute("noticeList", page);
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeListForm";
	}*/
	
	@RequestMapping(value = "/notice/noticeList", method = RequestMethod.GET)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView noticeListGet(@RequestParam(defaultValue = "not_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		// 레코드의 갯수 계산
		int count = noticeListService.countArticle(searchOption, keyword);

		// 페이지 나누기 관련 처리
		Paging paging = new Paging(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();

		List<Notice> list = noticeListService.listNotice(start, end, searchOption, keyword) ;

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("paging", paging);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("notice/noticeListForm"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}
	
	@RequestMapping(value = "/notice/noticeList", method = RequestMethod.POST)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView noticeListPost(@RequestParam(defaultValue = "not_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		// 레코드의 갯수 계산
		int count = noticeListService.countArticle(searchOption, keyword);

		// 페이지 나누기 관련 처리
		Paging paging = new Paging(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();

		List<Notice> list = noticeListService.listNotice(start, end, searchOption, keyword) ;

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("paging", paging);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("notice/noticeListForm"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}

}
