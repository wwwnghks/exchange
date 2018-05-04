package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Notice;

@Repository
public class NoticeCreateDAO {

	@Inject
	private SqlSession session;
		
	private static String namespace = "com.javamuk.mapper.noticeMapper";
	
	public int createNotice(Notice notice) {
		return session.insert(namespace+".createNotice",notice);
	}
		
}
