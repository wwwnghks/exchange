package com.javamuk.product.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.product.persistence.NoticeReadDAO;

@Service
public class NoticeReadService {

	@Inject
	private NoticeReadDAO dao;
	
/*	public Notice readNotice(Notice notice) {
		Notice notice_result = dao.readNotice(notice);
		return notice_result;
	}*/
	
	public Notice readNotice(int not_idx) {
		Notice notice_result = dao.readNotice(not_idx);
		return notice_result;
	}
	
	public void increaseViewcnt(int not_idx, HttpSession session) throws Exception {
		long update_time = 0;
		// 세션에 저장된 조회시간 검색
		// 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
		if (session.getAttribute("update_time2_" + not_idx) != null) {
			// 세션에서 읽어오기
			update_time = (long) session.getAttribute("update_time2_" + not_idx);
		}
		// 시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		// 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		// 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if (current_time - update_time > 24 * 60 * 60 * 1000) {
			dao.increaseViewcnt(not_idx);
			// 세션에 시간을 저장 : "update_time_"+qa_idx는 다른변수와 중복되지 않게 명명한 것
			session.setAttribute("update_time2_" + not_idx, current_time);

		}
	}
}
