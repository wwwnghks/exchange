package com.javamuk.declaration.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javamuk.domain.Declaration;
import com.javamuk.domain.Manager;
import com.javamuk.domain.Member;
import com.javamuk.declaration.persistence.DeclarationDAO;

@Service
public class DeclarationService {

	@Inject
	private DeclarationDAO dao;

	public List<Declaration> DeclarationAll(int start, int end, String searchOption, String keyword) {
		return dao.DeclarationAll(start, end, searchOption, keyword);
	}

	/*public List<Declaration> MDeclarationAll(Member member, int start, int end, String searchOption, String keyword) {
		return dao.MDeclarationAll(member, start, end, searchOption, keyword);

	}*/
	
	public List<Declaration> MDeclarationAll( int start, int end, String searchOption, String keyword) {
		return dao.MDeclarationAll( start, end, searchOption, keyword);

	}

	public Declaration DeclarationRead(int dec_msg_idx) throws Exception {
		return dao.DeclarationRead(dec_msg_idx);
	}

	public void increaseViewCnt(int dec_msg_idx, HttpSession session) throws Exception {

		long update_time = 0;
		// 세션에 저장된 조회시간 검색
		// 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
		if (session.getAttribute("update_time_" + dec_msg_idx) != null) {
			// 세션에서 읽어오기
			update_time = (long) session.getAttribute("update_time_" + dec_msg_idx);
		}
		// 시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		// 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		// 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if (current_time - update_time > 5 * 1000) {
			dao.increaseViewCnt(dec_msg_idx);
			/* DeclarationDAO.increaseViewCnt(dec_msg_idx); */
			// 세션에 시간을 저장 : "update_time_"+qa_idx는 다른변수와 중복되지 않게 명명한 것
			session.setAttribute("update_time_" + dec_msg_idx, current_time);

		}

	}

	public int countArticle(String searchOption, String keyword) throws Exception {
		return dao.countArticle(searchOption, keyword);
	}
	

	/*
	 * public List<Declaration> listAll(int start, int end, String searchOption,
	 * String keyword) throws Exception{ return dao.listAll(start, end,
	 * searchOption, keyword); }
	 */

	/*
	 * public List<Declaration> DeclarationAll(Manager manager) { return
	 * dao.DeclarationAll(manager); }
	 */

	/*
	 * public List<Declaration> DeclarationAll() { return dao.DeclarationAll(); }
	 * 
	 * public List<Declaration> MDeclarationAll(Member member) { return
	 * dao.MDeclarationAll(member); }
	 */

}