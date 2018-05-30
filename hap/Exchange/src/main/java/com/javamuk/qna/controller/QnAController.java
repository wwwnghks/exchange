package com.javamuk.qna.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javamuk.domain.QnA;
import com.javamuk.qna.service.QnAPager;
import com.javamuk.qna.service.QnAService;

// Q&A 목록, 글쓰기, 상세보기(조회수 증가처리), 수정, 삭제 처리

@Controller // 현재 클래스를 컨트롤러 빈(bean)으로 등록
@RequestMapping("/qna")
public class QnAController {

	// 의존관계 주입 => BoardServiceImpl 생성
	// IoC 의존관계 역전
	@Inject
	QnAService qnaService;

	/*
	 * // 01. 게시글 목록
	 * 
	 * @RequestMapping("/list") public ModelAndView list() throws Exception {
	 * List<QnA> list = qnaService.listAll(); // ModelAndView - 모델과 뷰 ModelAndView
	 * mav = new ModelAndView(); mav.setViewName("qna/list"); // 뷰를 list.jsp로 설정
	 * mav.addObject("list", list); // 데이터를 저장 return mav; // list.jsp로 List가 전달된다.
	 * }
	 */

	// 02_01. 게시글 작성화면
	// @RequestMapping("board/write.do")
	// value="", method="전송방식"
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() throws Exception {

		return "qna/write"; // write.jsp로 이동
	}

	// 02_02. 게시글 작성처리
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute QnA qna) throws Exception {
		System.out.println(qna);
		qnaService.create(qna);

		return "redirect:list";
	}

	// 03. 게시글 상세내용 조회, 게시글 조회수 증가 처리
	// @RequestParam : get/post방식으로 전달된 변수 1개
	// HttpSession 세션객체
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam int qa_idx, HttpSession session) throws Exception {
		// 조회수 증가 처리
		qnaService.increaseViewcnt(qa_idx, session);
		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		// 뷰의 이름
		mav.setViewName("qna/view");
		// 뷰에 전달할 데이터
		mav.addObject("qna", qnaService.read(qa_idx));
		return mav;
	}

	// 04_01. 게시글 수정화면
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView updateForm(@RequestParam int qa_idx, HttpSession session) throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("qna/update");
		mav.addObject("qna", qnaService.read(qa_idx));

		return mav;
	}

	// 04_02. 게시글 수정처리
	// 폼에서 입력한 내용들은 @ModelAttribute QnA qna로 전달됨
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute QnA qna) throws Exception {
		qnaService.update(qna);
		return "redirect:list";
	}

	// 05. 게시글 삭제
	@RequestMapping("/delete")
	public String delete(@RequestParam int qa_idx) throws Exception {
		qnaService.delete(qa_idx);
		return "redirect:list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView list(@RequestParam(defaultValue = "qa_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {

		// 레코드의 갯수 계산
		int count = qnaService.countArticle(searchOption, keyword);

		// 페이지 나누기 관련 처리
		QnAPager qnaPager = new QnAPager(count, curPage);
		int start = qnaPager.getPageBegin();
		int end = qnaPager.getPageEnd();

		List<QnA> list = qnaService.listAll(start, end, searchOption, keyword);

		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("qnaPager", qnaPager);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("qna/list"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}

	// 06. 페이징 처리
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	// @RequestParam(defaultValue="") ==> 기본값 할당 : 현재페이지를 1로 초기화
	public ModelAndView listPost(@RequestParam(defaultValue = "qa_title") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "1") int curPage)
			throws Exception {
		System.out.println(keyword);
		System.out.println(searchOption);
		// 레코드의 갯수 계산
		int count = qnaService.countArticle(searchOption, keyword);

		// 페이지 나누기 관련 처리
		QnAPager qnaPager = new QnAPager(count, curPage);
		int start = qnaPager.getPageBegin();
		int end = qnaPager.getPageEnd(); //한페이지에 띄어주는 개수
		System.out.println(curPage);
		
		
		List<QnA> list = qnaService.listAll(start, end, searchOption, keyword);
		System.out.println(start);
		System.out.println(end);
		System.out.println(list);
		
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("qnaPager", qnaPager);


		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("qna/list"); // 뷰를 list.jsp로 설정

		return mav; // list.jsp로 List가 전달된다.
	}
}