package com.javamuk.product.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Notice;
import com.javamuk.domain.QnA;

@Repository
public class NoticeListDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.javamuk.mapper.noticeMapper";

	/*public List<Notice> listNotice(){

		//return session.selectList(namespace+".listNotice",firstRow);
		return session.selectList(namespace+".listNotice");
	}*/
	
	// 07. 게시글 전체 목록
	public List<Notice> listNotice(int start, int end, String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		// LIMIT #{start}, #{end}에 입력될 값을 맵에
		map.put("start", start);
		map.put("end", end);
		return session.selectList(namespace + ".listNotice", map);
	}

	// 07. 게시글 레코드 갯수
	public int countArticle(String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return session.selectOne(namespace + ".countArticle", map);
	}
}
