package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDeleteDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.messageMapper";
	
	public int deleteMessage(int msg_idx) {
		return session.delete(namespace+".deleteMessage",msg_idx);
	}
}
