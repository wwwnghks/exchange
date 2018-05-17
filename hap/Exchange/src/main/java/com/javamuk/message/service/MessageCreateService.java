package com.javamuk.message.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Message;
import com.javamuk.message.persistence.MessageCreateDAO;

@Service
public class MessageCreateService {

	@Inject
	private MessageCreateDAO dao;
	
	public int createMessage(Message message) {
		int resultCnt = dao.createMessage(message);
		return resultCnt;
	}
}
