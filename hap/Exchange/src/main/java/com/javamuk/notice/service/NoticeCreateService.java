package com.javamuk.notice.service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Notice;
import com.javamuk.notice.persistence.NoticeCreateDAO;

@Service
public class NoticeCreateService {

	@Inject
	private NoticeCreateDAO dao;
	
	public int createNotice(Notice notice) {
		
		int resultCnt=dao.createNotice(notice);
		
		return resultCnt;
				
		 
	}
	
	
}
