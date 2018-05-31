package com.javamuk.qnareply.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.QnA_Reply;

@Repository
public class QnAReplyReadDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.QnAReplyMapper";

	public List<QnA_Reply> qnareplyread(QnA_Reply qnA_Reply) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".qnareplyread", qnA_Reply);
	}
}
