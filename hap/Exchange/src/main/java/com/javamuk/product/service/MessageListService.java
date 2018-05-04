package com.javamuk.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javamuk.domain.Message;
import com.javamuk.product.persistence.MessageListDao;

@Service
public class MessageListService {
	
	@Inject
	private MessageListDao dao;
	
	public List<Message> sListMessage(int idx){
		List<Message> messageList = dao.sListMessage(idx);
		return messageList;
	}
	
	public List<Message> gListMessage(int idx){
		List<Message> messageList = dao.gListMessage(idx);
		return messageList;
	}

}
