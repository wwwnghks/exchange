package com.javamuk.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Message;
import com.javamuk.product.persistence.MessageReadDAO;

@Service
public class MessageReadService {

	@Inject
	private MessageReadDAO dao;
	
	public Message sReadMessage(Message message) {
		Message message_result = dao.sReadMessage(message);
		return message_result;
	}
	
	public Message gReadMessage(Message message) {
		Message message_result = dao.gReadMessage(message);
		return message_result;
	}
}
