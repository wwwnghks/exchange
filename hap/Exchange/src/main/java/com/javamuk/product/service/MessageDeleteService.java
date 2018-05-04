package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.product.persistence.MessageDeleteDAO;

@Service
public class MessageDeleteService {

	@Inject
	private MessageDeleteDAO dao;
	
	public void deleteMessage(int msg_idx) {
		dao.deleteMessage(msg_idx);
	}
}
