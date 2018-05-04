package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Message;

@Repository
public class MessageCreateDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.messageMapper";
	
	public int createMessage(Message message) {
		return session.insert(namespace+".createMessage",message);
	}
}
