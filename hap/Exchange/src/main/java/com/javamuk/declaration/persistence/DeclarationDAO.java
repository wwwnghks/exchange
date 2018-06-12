package com.javamuk.declaration.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.Declaration;
import com.javamuk.domain.Member;

@Repository
public class DeclarationDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.javamuk.mapper.declaraltionMapper";

	/*
	 * public List<Declaration> DeclarationAll(Manager manager) { return
	 * session.selectList(namespace+".listDeclaration", manager); }
	 */

	/*public List<Declaration> DeclarationAll() {
		return session.selectList(namespace + ".listDeclaration");
	}

	public List<Declaration> MDeclarationAll(Member member) {
		return session.selectList(namespace + ".MlistDeclaration", member);
	}*/
	
	public List<Declaration> DeclarationAll(int start, int end, String searchOption, String keyword) {
	
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end",end);		
		
		return session.selectList(namespace+".listDeclaration",map);
		
	}

	/*public List<Declaration> MDeclarationAll(Member member, int start, int end, String searchOption, String keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", member);
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end",end);		
		
		return session.selectList(namespace + ".MlistDeclaration",map);
	}*/
	
	public List<Declaration> MDeclarationAll( int start, int end, String searchOption, String keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end",end);		
		
		return session.selectList(namespace + ".MlistDeclaration",map);
	}

	public Declaration DeclarationRead(int dec_msg_idx) {
		return session.selectOne(namespace + ".listDeclarationRead",dec_msg_idx);
	}
	
	/*조회수 증가*/
	public void increaseViewCnt(int dec_msg_idx) throws Exception {
		session.update(namespace + ".increaseViewCnt", dec_msg_idx);
	}
	
	public List<Declaration> listAll(int start, int end, String searchOption, String keyword) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end",end);		
		
		return session.selectList(namespace+".listAll",map);
		
	}
	
	/*게시글 레코드 갯수*/
	public int countArticle(String searchOption, String keyword) throws Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption",searchOption);
		map.put("keyword", keyword);
		return session.selectOne(namespace + ".countArticle", map);
	}

}