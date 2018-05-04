package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.product.persistence.NoticeReadDAO;

@Service
public class NoticeReadService {

	@Inject
	private NoticeReadDAO dao;
	
	public Notice readNotice(Notice notice) {
		Notice notice_result = dao.readNotice(notice);
		return notice_result;
	}
	
	public Notice readNoticeIdx(int not_idx) {
		Notice notice_result = dao.readNoticeIdx(not_idx);
		return notice_result;
	}
}
