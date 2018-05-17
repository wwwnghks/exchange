package com.javamuk.message.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.domain.Message;
import com.javamuk.domain.Paging;
import com.javamuk.message.service.MessageListService;

@Controller
public class MessageListController {

	@Inject
	private MessageListService messageListService;

	/*
	 * @RequestMapping(value="/message/gMessageList", method=RequestMethod.GET)
	 * public String gMessageList(HttpSession session, Model model) { Member member
	 * = (Member)session.getAttribute("session_member"); List<Message> gMessageList
	 * = MessageListService.sListMessage(member.getMem_idx());
	 * model.addAttribute("gMessageList",gMessageList); return
	 * "message/gMessageListForm"; }
	 * 
	 * @RequestMapping(value="/message/sMessageList", method=RequestMethod.GET)
	 * public String sMessageList(HttpSession session, Model model) { Member member
	 * = (Member)session.getAttribute("session_member"); List<Message> sMessageList
	 * = MessageListService.gListMessage(member.getMem_idx());
	 * model.addAttribute("sMessageList",sMessageList); return
	 * "message/sMessageListForm"; }
	 */

	@RequestMapping(value = "/message/gMessageList", method = RequestMethod.GET)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView gMessageListGet(HttpSession session,
			/*@RequestParam(defaultValue = "msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword,*/ @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		Member g_member = (Member) session.getAttribute("session_member");
		// 레코드의 갯수 계산
		int count = messageListService.gCountArticle(g_member.getMem_idx());
		// 페이지 나누기 관련 처리
		Paging paging = new Paging(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_idx", g_member.getMem_idx());
		map.put("start", start);
		map.put("end", end);
		/*map.put("searchOption", searchOption);// 검색옵션
		map.put("keyword", keyword);//검색키워드
*/
		List<Message> list = messageListService.gListMessage(map);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("list", list);
		// 레코드의 갯수
		map1.put("count", count);
		map1.put("paging", paging);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map1); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("message/gMessageListForm"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
		
	}

	@RequestMapping(value = "/message/gMessageList", method = RequestMethod.POST)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView gMessageListPost(HttpSession session,
			/*@RequestParam(defaultValue = "msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword,*/ @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		Member g_member = (Member) session.getAttribute("session_member");
		// 레코드의 갯수 계산
		int count = messageListService.gCountArticle(g_member.getMem_idx());
		// 페이지 나누기 관련 처리
		Paging paging = new Paging(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_idx", g_member.getMem_idx());
		map.put("start", start);
		map.put("end", end);
		/*map.put("searchOption", searchOption);// 검색옵션
		map.put("keyword", keyword);//검색키워드
*/
		List<Message> list = messageListService.gListMessage(map);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("list", list);
		// 레코드의 갯수
		map1.put("count", count);
		map1.put("paging", paging);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map1); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("message/gMessageListForm"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}

	@RequestMapping(value = "/message/sMessageList", method = RequestMethod.GET)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView sMessageListGet(HttpSession session,
			/*@RequestParam(defaultValue = "msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword,*/ @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		Member s_member = (Member) session.getAttribute("session_member");
		// 레코드의 갯수 계산
		int count = messageListService.sCountArticle(s_member.getMem_idx());
		// 페이지 나누기 관련 처리
		Paging paging = new Paging(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_idx", s_member.getMem_idx());
		map.put("start", start);
		map.put("end", end);
		/*map.put("searchOption", searchOption);// 검색옵션
		map.put("keyword", keyword);//검색키워드
*/
		List<Message> list = messageListService.sListMessage(map);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("list", list);
		// 레코드의 갯수
		map1.put("count", count);
		map1.put("paging", paging);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map1); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("message/sMessageListForm"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}

	@RequestMapping(value = "/message/sMessageList", method = RequestMethod.POST)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView sMessageListPost(HttpSession session,
			/*@RequestParam(defaultValue = "msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword,*/ @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		Member s_member = (Member) session.getAttribute("session_member");
		// 레코드의 갯수 계산
		int count = messageListService.sCountArticle(s_member.getMem_idx());
		// 페이지 나누기 관련 처리
		Paging paging = new Paging(count, curPage);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_idx", s_member.getMem_idx());
		map.put("start", start);
		map.put("end", end);
		/*map.put("searchOption", searchOption);// 검색옵션
		map.put("keyword", keyword);//검색키워드
*/
		List<Message> list = messageListService.sListMessage(map);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("list", list);
		// 레코드의 갯수
		map1.put("count", count);
		map1.put("paging", paging);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map1); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("message/sMessageListForm"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}

}
