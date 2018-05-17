package com.javamuk.message.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Message;
import com.javamuk.message.persistence.MessageListDao;

@Service
public class MessageListService {

	@Inject
	private MessageListDao dao;

	/*
	 * public List<Message> sListMessage(int idx){ List<Message> messageList =
	 * dao.sListMessage(idx); return messageList; }
	 * 
	 * public List<Message> gListMessage(int idx){ List<Message> messageList =
	 * dao.gListMessage(idx); return messageList; }
	 */

	// 07. 게시글 전체 목록
	/*
	 * public List<Message> sListMessage(int idx,int start, int end, String
	 * searchOption, String keyword) throws Exception { return dao.sListMessage(idx,
	 * start, end, searchOption, keyword); }
	 */

	/*
	 * // 07. 게시글 전체 목록 public List<Message> gListMessage(int idx,int start, int
	 * end, String searchOption, String keyword) throws Exception { return
	 * dao.gListMessage(idx, start, end, searchOption, keyword); }
	 */

	// 07. 게시글 전체 목록
	public List<Message> sListMessage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.sListMessage(map);
	}

	// 07. 게시글 전체 목록
	public List<Message> gListMessage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.gListMessage(map);
	}

	// 07. 게시글 레코드 갯수 qnaDao.countArticle메서드
	public int sCountArticle(int idx) {
		return dao.sCountArticle(idx);
	}

	// 07. 게시글 레코드 갯수 qnaDao.countArticle메서드
	public int gCountArticle(int idx) {
		return dao.gCountArticle(idx);
	}

}
