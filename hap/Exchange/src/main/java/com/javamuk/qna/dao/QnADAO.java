package com.javamuk.qna.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.QnA;

@Repository
public class QnADAO {

	@Inject
	private SqlSession session;

	// 01. 게시글 작성
	private static String namespace = "com.javamuk.mapper.QnAMapper";

	public void create(QnA qna) throws Exception {
		session.insert(namespace + ".insert", qna);
	}

	// 02. 게시글 상세보기
	public QnA read(int qa_idx) throws Exception {
		return session.selectOne(namespace + ".view", qa_idx);
	}

	// 03. 게시글 수정
	public void update(QnA qna) throws Exception {
		session.update(namespace + ".updateArticle", qna);
	}

	// 04. 게시글 삭제
	public void delete(int qa_idx) throws Exception {
		session.delete(namespace + ".deleteArticle", qa_idx);
	}

	/*
	 * // 05. 게시글 전체 목록 public List<QnA> listAll() throws Exception { return
	 * session.selectList(namespace + ".listAll"); }
	 */

	// 06. 게시글 조회수 증가
	public void increaseViewcnt(int qa_idx) throws Exception {
		session.update(namespace + ".increaseViewcnt", qa_idx);
	}

	// 07. 게시글 전체 목록
	public List<QnA> listAll(int start, int end, String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		// LIMIT #{start}, #{end}에 입력될 값을 맵에
		map.put("start", start);
		map.put("end", end);
		return session.selectList(namespace + ".listAll", map);
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
