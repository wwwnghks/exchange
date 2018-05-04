package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.product.persistence.NoticeListDAO;

@Service
public class NoticeListService {

	@Inject
	private NoticeListDAO dao;
	
	public List<Notice> listNotice(){
		List<Notice> noticeList = dao.listNotice();
		return noticeList;
	}
	
}
