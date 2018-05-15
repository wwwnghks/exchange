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
	
	/*public List<Notice> listNotice(){
		List<Notice> noticeList = dao.listNotice();
		return noticeList;
	}*/
	
	// 07. 게시글 전체 목록
		public List<Notice> listNotice(int start, int end, String searchOption, String keyword) throws Exception {
		    return dao.listNotice(start, end, searchOption, keyword);
		}
		
		// 07. 게시글 레코드 갯수 qnaDao.countArticle메서드 
		public int countArticle(String searchOption, String keyword) throws Exception {
		    return dao.countArticle(searchOption, keyword);
		}
		
	
}
