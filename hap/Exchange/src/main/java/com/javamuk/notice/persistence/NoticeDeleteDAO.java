package com.javamuk.notice.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDeleteDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.noticeMapper";
	
	public int deleteNotice(int not_idx) {
		return session.delete(namespace+".deleteNotice",not_idx);
	}
}
