package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Notice;

@Repository
public class NoticeUpdateDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.noticeMapper";
	
	public int updateNotice(Notice notice) {
		return session.update(namespace+".updateNotice",notice);
	}
	
}
