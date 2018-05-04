package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.product.persistence.NoticeUpdateDAO;

@Service
public class NoticeUpadateService {

	@Inject
	private NoticeUpdateDAO dao;
	
	public void updateNotice(Notice notice) {
		dao.updateNotice(notice);
	}
}
