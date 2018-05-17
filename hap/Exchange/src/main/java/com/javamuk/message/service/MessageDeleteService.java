package com.javamuk.message.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.message.persistence.MessageDeleteDAO;

@Service
public class MessageDeleteService {

	@Inject
	private MessageDeleteDAO dao;
	
	public void deleteMessage(int msg_idx) {
		dao.deleteMessage(msg_idx);
	}
}
