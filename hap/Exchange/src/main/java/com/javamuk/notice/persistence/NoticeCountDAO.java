package com.javamuk.notice.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Notice;

@Repository
public class NoticeCountDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.javamuk.mapper.noticeMapper";
	
	public int noticeCount() {
		return session.selectOne(namespace+".countNotice");
	}
	
}