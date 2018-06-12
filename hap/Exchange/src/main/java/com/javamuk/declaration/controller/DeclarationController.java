package com.javamuk.declaration.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javamuk.domain.Declaration;
import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.declaration.service.DeclarationService;
import com.javamuk.qna.service.QnAPager;


@Controller
public class DeclarationController {

	@Inject
	private DeclarationService declarationService;

/*	@RequestMapping(value = "/declaration/declaration", method = RequestMethod.GET)
	public String declaration(HttpSession session, Model model) {
		// Manager manager = (Manager) session.getAttribute("session_manager");
		Member member = (Member) session.getAttribute("session_member");
		List<Declaration> dec = declarationService.DeclarationAll();
		List<Declaration> Mdec = declarationService.MDeclarationAll(member);

		model.addAttribute("Mdec", Mdec);
		model.addAttribute("dec", dec);

		return "declaration/declaration";

	}*/
	
	@RequestMapping(value= "/declaration/declaration", method = RequestMethod.GET)
	public ModelAndView declaration1(@RequestParam(defaultValue = "dec_msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage,
			HttpSession session, Model model) throws Exception {
		
		/*Member member = (Member) session.getAttribute("session_member");
		System.out.println(member);*/				
		int count = declarationService.countArticle(searchOption, keyword);
		
		QnAPager qnaPager = new QnAPager(count, curPage);
		
		int start = qnaPager.getPageBegin();
		int end = qnaPager.getPageEnd();
		
		List<Declaration> dec = declarationService.DeclarationAll(start, end, searchOption, keyword);
		// List<Declaration> Mdec = declarationService.MDeclarationAll(start, end, searchOption, keyword);
		System.out.println(dec);
		// System.out.println(Mdec);		
		//List<Declaration> list = declarationService.listAll(start, end, searchOption, keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("declaration/declaration");
		// 일단 쓰고 안되면 배기
		map.put("dec", dec);
		// map.put("Mdec", Mdec);
		
		//map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("qnaPager", qnaPager);
		mav.addObject("map",map);
		mav.setViewName("declaration/declaration");
	
		return mav;
	}
	
	/*@RequestMapping(value= "/declaration/Memberdeclaration", method = RequestMethod.POST)
	public ModelAndView declaration2(@RequestParam(defaultValue = "dec_msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage,
			HttpSession session, Model model) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		Member member = (Member) session.getAttribute("session_member");
		
		int count = declarationService.countArticle(searchOption, keyword);
		QnAPager qnaPager = new QnAPager(count, curPage);
		
		int start = qnaPager.getPageBegin();
		int end = qnaPager.getPageEnd();

		
		List<Declaration> dec = declarationService.DeclarationAll(start, end, searchOption, keyword);
		List<Declaration> Mdec = declarationService.MDeclarationAll( start, end, searchOption, keyword);
		
		System.out.println(dec);
		System.out.println(Mdec);
		
		//List<Declaration> list = declarationService.listAll(start, end, searchOption, keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		mav.setViewName("declaration/declaration");
		// 일단 쓰고 안되면 배기
		map.put("dec", dec);
		map.put("Mdec", Mdec);
		
		//map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("qnaPager", qnaPager);
		
		mav.addObject("map",map);
		mav.setViewName("declaration/declaration");
	
		return mav;
	}*/

/*	@RequestMapping(value = "/declaration/declaration", method = RequestMethod.POST)
	public ModelAndView list(@RequestParam(defaultValue = "dec_msg_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {
		
		int count = declarationService.countArticle(searchOption, keyword);
		
		QnAPager qnaPager = new QnAPager(count, curPage);
		int start = qnaPager.getPageBegin();
		int end = qnaPager.getPageEnd();
		
		List<Declaration> list = declarationService.listAll(start, end, searchOption, keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("qnaPager", qnaPager);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map",map);
		mav.setViewName("declaration/declaration");
	
		
		return mav;

	}*/

	@RequestMapping(value = "/declaration/declarationRead", method = RequestMethod.GET)
	public ModelAndView declarationReadList(@RequestParam("dec_msg_idx") int dec_msg_idx, HttpSession session) throws Exception {

		declarationService.increaseViewCnt(dec_msg_idx, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("declaration/declarationRead");		
		mav.addObject("dec_list", declarationService.DeclarationRead(dec_msg_idx));

		return mav;
	}
	
	/*
	 * Declaration dec_Declaration = new Declaration();
	 * dec_Declaration.setDec_msg_idx(dec_msg_idx);
	 * System.out.println(dec_Declaration);
	 * 
	 * List<Declaration> dec_list =
	 * declarationService.DeclarationRead(dec_Declaration);
	 * System.out.println(dec_list); System.out.println(dec_msg_idx);
	 * model.addAttribute("dec_list",dec_list);
	 * model.addAttribute("dec_msg_idx",dec_msg_idx);
	 */
	

	/*
	 * @RequestMapping(value = "/message/gMessageList", method = RequestMethod.GET)
	 * public String gMessageList(HttpSession session, Model model) { Member member
	 * = (Member) session.getAttribute("session_member"); List<Message> gMessageList
	 * = MessageListService.sListMessage(member.getMem_idx());
	 * model.addAttribute("gMessageList", gMessageList); return
	 * "message/gMessageListForm"; }
	 * 
	 * @RequestMapping(value = "/message/sMessageList", method = RequestMethod.GET)
	 * public String sMessageList(HttpSession session, Model model) { Member member
	 * = (Member) session.getAttribute("session_member"); List<Message> sMessageList
	 * = MessageListService.gListMessage(member.getMem_idx());
	 * model.addAttribute("sMessageList", sMessageList); return
	 * "message/sMessageListForm"; }
	 */

}