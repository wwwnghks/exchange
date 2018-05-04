package com.javamuk.product.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Notice;

@Repository
public class NoticeListDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.javamuk.mapper.noticeMapper";

	public List<Notice> listNotice(){

		//return session.selectList(namespace+".listNotice",firstRow);
		return session.selectList(namespace+".listNotice");
	}
}
