package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Message;

@Repository
public class MessageReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.messageMapper";
	
	public Message sReadMessage(Message message) {
		return session.selectOne(namespace+".sReadMessage",message);
	}
	public Message gReadMessage(Message message) {
		return session.selectOne(namespace+".gReadMessage",message);
	}
}
