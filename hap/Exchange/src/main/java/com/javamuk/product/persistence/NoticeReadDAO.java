package com.javamuk.product.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Notice;

@Repository
public class NoticeReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.noticeMapper";
	
	public Notice readNotice(Notice notice) {
		return session.selectOne(namespace+".readNotice",notice);
	}
	

	public Notice readNoticeIdx(int not_idx) {
		return session.selectOne(namespace+".readNotice",not_idx);
	}
}
