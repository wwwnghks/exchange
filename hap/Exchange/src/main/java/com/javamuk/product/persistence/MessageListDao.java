package com.javamuk.product.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Message;

@Repository
public class MessageListDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.messageMapper";
	
	public List<Message> sListMessage(int idx){
		return session.selectList(namespace+".sListMessage",idx);
	}
	
	public List<Message> gListMessage(int idx){
		return session.selectList(namespace+".gListMessage",idx);
	}
}
