package com.javamuk.notice.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.notice.persistence.NoticeDeleteDAO;

@Service
public class NoticeDeleteService {

	@Inject
	private NoticeDeleteDAO dao;
	
	public void deleteNotice(int not_idx) {
		dao.deleteNotice(not_idx);
	}
}
