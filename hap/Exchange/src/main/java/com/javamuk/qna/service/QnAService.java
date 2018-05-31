package com.javamuk.qna.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.javamuk.domain.QnA;
import com.javamuk.qna.dao.QnADAO;

// Service(비지니스로직, DB연동 이외의 작업)

@Service
public class QnAService {
	@Inject
	private QnADAO qnaDao;

	// 01. 게시글쓰기
	public void create(QnA qna) throws Exception {
		qnaDao.create(qna);
	}

	// 02. 게시글 상세보기
	public QnA read(int qa_idx) throws Exception {
		return qnaDao.read(qa_idx);
	}

	// 03. 게시글 수정
	public void update(QnA qna) throws Exception {
		qnaDao.update(qna);
	}

	// 04. 게시글 삭제
	public void delete(int qa_idx) throws Exception {
		qnaDao.delete(qa_idx);
	}

	/*// 05. 게시글 전체 목록
	public List<QnA> listAll() throws Exception {
		return qnaDao.listAll();
	}*/

	// 06. 게시글 조회수 증가
	public void increaseViewcnt(int qa_idx, HttpSession session) throws Exception {
		long update_time = 0;
		// 세션에 저장된 조회시간 검색
		// 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
		if (session.getAttribute("update_time_" + qa_idx) != null) {
			// 세션에서 읽어오기
			update_time = (long) session.getAttribute("update_time_" + qa_idx);
		}
		// 시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		// 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		// 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if (current_time - update_time >  24 * 60 * 60 * 1000) {
			qnaDao.increaseViewcnt(qa_idx);
			// 세션에 시간을 저장 : "update_time_"+qa_idx는 다른변수와 중복되지 않게 명명한 것
			session.setAttribute("update_time_" + qa_idx, current_time);

		}
	}
	
	// 07. 게시글 전체 목록
	public List<QnA> listAll(int start, int end, String searchOption, String keyword) throws Exception {
	    return qnaDao.listAll(start, end, searchOption, keyword);
	}
	
	// 07. 게시글 레코드 갯수 qnaDao.countArticle메서드 
	public int countArticle(String searchOption, String keyword) throws Exception {
	    return qnaDao.countArticle(searchOption, keyword);
	}



	
	
}