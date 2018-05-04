package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.product.persistence.NoticeDeleteDAO;

@Service
public class NoticeDeleteService {

	@Inject
	private NoticeDeleteDAO dao;
	
	public void deleteNotice(int not_idx) {
		dao.deleteNotice(not_idx);
	}
}
