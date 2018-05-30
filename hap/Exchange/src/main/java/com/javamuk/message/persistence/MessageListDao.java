package com.javamuk.message.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Message;

@Repository
public class MessageListDao {

	@Inject
	private SqlSession session;

	private static String namespace = "com.javamuk.mapper.messageMapper";

	/*
	 * public List<Message> sListMessage(int idx){ return
	 * session.selectList(namespace+".sListMessage",idx); }
	 * 
	 * public List<Message> gListMessage(int idx){ return
	 * session.selectList(namespace+".gListMessage",idx); }
	 */

	// 07. 게시글 전체 목록
	/*
	 * public List<Message> sListMessage(int idx, int start, int end, String
	 * searchOption, String keyword) throws Exception { // 검색옵션, 키워드 맵에 저장
	 * Map<String, Object> map = new HashMap<String, Object>(); map.put("idx", idx);
	 * map.put("searchOption", searchOption); map.put("keyword", keyword); // LIMIT
	 * #{start}, #{end}에 입력될 값을 맵에 map.put("start", start); map.put("end", end);
	 * return session.selectList(namespace + ".sListMessage", map); }
	 */

	/*
	 * public List<Message> gListMessage(int idx, int start, int end, String
	 * searchOption, String keyword) throws Exception { // 검색옵션, 키워드 맵에 저장
	 * Map<String, Object> map = new HashMap<String, Object>(); map.put("idx", idx);
	 * map.put("searchOption", searchOption); map.put("keyword", keyword); // LIMIT
	 * #{start}, #{end}에 입력될 값을 맵에 map.put("start", start); map.put("end", end);
	 * return session.selectList(namespace + ".gListMessage", map); }
	 */

	/*
	 * // 07. 게시글 레코드 갯수 public int sCountArticle(int idx,String searchOption,
	 * String keyword) throws Exception { // 검색옵션, 키워드 맵에 저장 Map<String, Object> map
	 * = new HashMap<String, Object>(); map.put("idx", idx); map.put("searchOption",
	 * searchOption); map.put("keyword", keyword); return
	 * session.selectOne(namespace + ".sCountArticle", map); }
	 * 
	 * // 07. 게시글 레코드 갯수 public int gCountArticle(int idx,String searchOption,
	 * String keyword) throws Exception { // 검색옵션, 키워드 맵에 저장 Map<String, Object> map
	 * = new HashMap<String, Object>(); map.put("idx", idx); map.put("searchOption",
	 * searchOption); map.put("keyword", keyword); return
	 * session.selectOne(namespace + ".gCountArticle", map); }
	 */

	public int sCountArticle(int idx) {
		return session.selectOne(namespace + ".sCountArticle", idx);
	}

	public int gCountArticle(int idx) {
		return session.selectOne(namespace + ".gCountArticle", idx);
	}

	public List<Message> sListMessage(Map<String, Object> map) {
		return session.selectList(namespace + ".sListMessage", map);
	}

	public List<Message> gListMessage(Map<String, Object> map) {
		return session.selectList(namespace + ".gListMessage", map);
	}
}
